const functions = require("firebase-functions");
const admin = require("firebase-admin");
//admin.initializeApp();

exports.sendGateStatusNotification = functions.firestore
  .document("Airport_Dataset/{documentId}")
  .onUpdate(async (change, context) => {
    const newValue = change.after.data(); // Updated document data
    const previousValue = change.before.data(); // Previous document data

    const flightID = newValue.FlightID; // Get FlightID from the updated document
    const gateOpen = newValue.GateOpen ? newValue.GateOpen.toDate() : null;
    const gateClose = newValue.GateClose ? newValue.GateClose.toDate() : null;

    const previousGateOpen = previousValue.GateOpen
      ? previousValue.GateOpen.toDate()
      : null;
    const previousGateClose = previousValue.GateClose
      ? previousValue.GateClose.toDate()
      : null;

    let statusChange = null;
    let notificationMessage = null;

    // Check if GateOpen or GateClose has changed
    if (
      gateOpen &&
      (!previousGateOpen || gateOpen.getTime() !== previousGateOpen.getTime())
    ) {
      statusChange = "Gate Opened";
      notificationMessage = `Gate for flight ${flightID} is now OPEN. Please proceed.`;
    } else if (
      gateClose &&
      (!previousGateClose ||
        gateClose.getTime() !== previousGateClose.getTime())
    ) {
      statusChange = "Gate Closed";
      notificationMessage = `Gate for flight ${flightID} is now CLOSED. Please contact support.`;
    }

    // If no relevant status change, exit the function
    if (!statusChange) {
      console.log("No gate status change detected.");
      return null;
    }

    // Query the FlightBooking collection to find bookings for the FlightID
    const flightBookingSnapshot = await admin
      .firestore()
      .collection("FlightBooking")
      .where("flightIDNumber", "==", flightID)
      .get();

    if (flightBookingSnapshot.empty) {
      console.log("No bookings found for FlightID:", flightID);
      return null;
    }

    // Iterate over each booking
    for (const bookingDoc of flightBookingSnapshot.docs) {
      const bookingData = bookingDoc.data();
      const accountID = bookingData.accountID;

      // Check if accountID starts with '/Account/' and extract the UID
      if (accountID && accountID.startsWith("/Account/")) {
        const uid = accountID.replace("/Account/", ""); // Remove '/Account/' prefix to get the UID

        // Query the Account collection to get the user's data
        const accountSnapshot = await admin
          .firestore()
          .collection("Account")
          .doc(uid)
          .get();

        if (accountSnapshot.exists) {
          const title = `Flight ${flightID} - ${statusChange}`;
          const body = notificationMessage;

          // Prepare the notification payload
          const payload = {
            notification: {
              title: title,
              body: body,
            },
          };

          try {
            // Log the title and body in the 'test' collection
            await admin.firestore().collection("test").add({
              uid: uid,
              title: title,
              body: body,
              timestamp: admin.firestore.FieldValue.serverTimestamp(),
            });

            // Send the notification to the user's topic
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
