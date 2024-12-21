const admin = require("firebase-admin/app");
admin.initializeApp();

const sendFlightStatusNotification = require("./send_flight_status_notification.js");
exports.sendFlightStatusNotification =
  sendFlightStatusNotification.sendFlightStatusNotification;
const sendGateStatusNotification = require("./send_gate_status_notification.js");
exports.sendGateStatusNotification =
  sendGateStatusNotification.sendGateStatusNotification;
