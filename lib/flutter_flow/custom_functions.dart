import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int priceLuggage(
  int count15,
  int count20,
  int count25,
) {
  int price = 0;

  if (count15 == 1) {
    price += 70;
  }
  if (count20 == 1) {
    price += 115;
  }
  if (count25 == 1) {
    price += 160;
  }
  return price;
}

DateTime newCustomFunction(DateTime arrivalTime) {
  DateTime newTime = arrivalTime.add(Duration(minutes: 20));
  return newTime;
  //if (true) {
  // return newTime; // returns a valid DateTime
  //}

  //throw new Exception("Unable to determine the date.");
}

bool? newCustomFunction2(String phoneNumber) {
  // Function named  PhoneNumberPrefix checks if the given  phone number starts with +966 and return true or false based on that
  if (phoneNumber.length == 13) {
    //phoneNumber.startsWith('+966'))
    return true;
  } else {
    return false;
  }
}

bool newCustomFunction3(String password) {
  // checks if the password is at least 8 characters long.
  if (password.length < 8) {
    return true;
  } else {
    return false;
  }
}

String? generateBookingID() {
  // generate random ID that has 7 digits
  var rng = math.Random();
  var id = rng.nextInt(9000000) + 1000000;
  return id.toString();
}

bool? nationalIDValidation(String id) {
  if (id.length == 10) {
    return true;
  } else {
    return false;
  }
}

bool? emailFormat(String email) {
  String emailRegex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  RegExp regExp = RegExp(emailRegex);
  return regExp.hasMatch(email);
}

bool newCustomFunction4(DateTime depTime) {
  bool isTime = false;
  DateTime now = DateTime.now();

  Duration difference = depTime.difference(now);

  if (difference.inHours <= 48 && difference.isNegative == false)
    isTime == true;

  return isTime;
}
