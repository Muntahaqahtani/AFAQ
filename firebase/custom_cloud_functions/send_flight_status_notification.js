const functions = require("firebase-functions");
const admin = require("firebase-admin");
//admin.initializeApp();

exports.sendFlightStatusNotification = functions.firestore
  .document("Airlines_Dataset/{flightId}")
  .onUpdate(async (change, context) => {
    const newValue = change.after.data(); // The updated document data
    const flightStatus = newValue.flightStatus; // The updated flight status
    const flightID = newValue.FlightID; // The FlightID from the document

    // Exit if flightStatus is not updated
    if (!flightStatus) {
      console.log("No flightStatus provided in the update");
      return null;
    }

    // Query FlightBooking collection for matching FlightIDNumber
    const flightBookingSnapshot = await admin
      .firestore()
      .collection("FlightBooking")
      .where("flightIDNumber", "==", flightID)
      .get();

    if (flightBookingSnapshot.empty) {
      console.log("No bookings found for FlightID:", flightID);
      return null;
    }

    // Process each matching booking
    for (const bookingDoc of flightBookingSnapshot.docs) {
      const bookingData = bookingDoc.data();
      const accountID = bookingData.accountID;

      // Check if accountID starts with '/Account/'
      if (accountID && accountID.startsWith("/Account/")) {
        const uid = accountID.replace("/Account/", ""); // Extract UID

        // Query the Account collection for this UID
        const accountSnapshot = await admin
          .firestore()
          .collection("Account")
          .doc(uid)
          .get();

        if (accountSnapshot.exists) {
          const title = "Flight Status Update";
          const body = `The status of your flight (ID: ${flightID}) has changed to: ${flightStatus}`;

          // Create notification payload
          const payload = {
            notification: {
              title: title,
              body: body,
            },
          };

          try {
            // Save title and body into 'test' collection
            await admin.firestore().collection("test").add({
              uid: uid,
              title: title,
              body: body,
              timestamp: admin.firestore.FieldValue.serverTimestamp(),
            });

            // Send notification to the user's FCM topic
            const topic = `user_${uid}`;
            await admin.messaging().sendToTopic(topic, payload);

            console.log(
              `Notification sent to topic ${topic} and logged in 'test' collection.`,
            );
          } catch (error) {
            console.error(
              "Error sending notification or writing to Firestore:",
              error,
            );
          }
        } else {
          console.log(`No account found for UID: ${uid}`);
        }
      } else {
        console.log(`Invalid accountID format: ${accountID}`);
      }
    }

    return null;
  });
