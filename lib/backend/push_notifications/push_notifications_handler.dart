import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: SpinKitSquareCircle(
              color: FlutterFlowTheme.of(context).primary,
              size: 50.0,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'viewBookingDetails': (data) async => ParameterData(
        allParams: {
          'flightBookingID': getParameter<String>(data, 'flightBookingID'),
          'flightBookingDoc': await getDocumentParameter<FlightBookingRecord>(
              data, 'flightBookingDoc', FlightBookingRecord.fromSnapshot),
          'flightDetails': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'flightDetails', AirlinesDatasetRecord.fromSnapshot),
          'airplane': await getDocumentParameter<AirplainsDatasetRecord>(
              data, 'airplane', AirplainsDatasetRecord.fromSnapshot),
        },
      ),
  'resultsRoundtrip1': (data) async => ParameterData(
        allParams: {
          'origin': getParameter<String>(data, 'origin'),
          'destination': getParameter<String>(data, 'destination'),
          'departureDate': getParameter<DateTime>(data, 'departureDate'),
          'arriavalDate': getParameter<DateTime>(data, 'arriavalDate'),
          'passengers': getParameter<int>(data, 'passengers'),
          'cabinclasstype': getParameter<String>(data, 'cabinclasstype'),
          'airlineType': getParameter<String>(data, 'airlineType'),
        },
      ),
  'privactPolicy': ParameterData.none(),
  'setting': ParameterData.none(),
  'trackluggageTimeline': (data) async => ParameterData(
        allParams: {
          'bookRef': await getDocumentParameter<FlightBookingRecord>(
              data, 'bookRef', FlightBookingRecord.fromSnapshot),
          'bookRefrence': getParameter<String>(data, 'bookRefrence'),
        },
      ),
  'startPage': ParameterData.none(),
  'ContactUs': ParameterData.none(),
  'helpSupport': ParameterData.none(),
  'aboutUs': ParameterData.none(),
  'addExtraLuggage': (data) async => ParameterData(
        allParams: {
          'flightBookingDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'flightBookingDoc', AirlinesDatasetRecord.fromSnapshot),
          'userDoc': await getDocumentParameter<FlightBookingRecord>(
              data, 'userDoc', FlightBookingRecord.fromSnapshot),
        },
      ),
  'searchFlight': (data) async => ParameterData(
        allParams: {
          'totalPassengers': getParameter<int>(data, 'totalPassengers'),
          'cabinClass': getParameter<String>(data, 'cabinClass'),
          'tabIndexRef': getParameter<int>(data, 'tabIndexRef'),
        },
      ),
  'termCondition': ParameterData.none(),
  'addPassengers': (data) async => ParameterData(
        allParams: {
          'flightID': getParameter<String>(data, 'flightID'),
          'departureDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'departureDoc', AirlinesDatasetRecord.fromSnapshot),
          'arrivalDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'arrivalDoc', AirlinesDatasetRecord.fromSnapshot),
          'totalPassengers': getParameter<int>(data, 'totalPassengers'),
        },
      ),
  'viewBooking': ParameterData.none(),
  'cancellationPolicy': ParameterData.none(),
  'payment': (data) async => ParameterData(
        allParams: {
          'flightID': getParameter<String>(data, 'flightID'),
          'depatureDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'depatureDoc', AirlinesDatasetRecord.fromSnapshot),
          'arrivalDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'arrivalDoc', AirlinesDatasetRecord.fromSnapshot),
        },
      ),
  'OneWayFlightSummary': (data) async => ParameterData(
        allParams: {
          'flightID': getParameter<String>(data, 'flightID'),
          'airlineDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'airlineDoc', AirlinesDatasetRecord.fromSnapshot),
          'flightDetails': await getDocumentParameter<FlightBookingRecord>(
              data, 'flightDetails', FlightBookingRecord.fromSnapshot),
        },
      ),
  'successBooking': (data) async => ParameterData(
        allParams: {
          'flightDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'flightDoc', AirlinesDatasetRecord.fromSnapshot),
          'flightBooking': await getDocumentParameter<FlightBookingRecord>(
              data, 'flightBooking', FlightBookingRecord.fromSnapshot),
        },
      ),
  'resultsRoundtrip2': (data) async => ParameterData(
        allParams: {
          'passengers': getParameter<int>(data, 'passengers'),
          'cabinClassType': getParameter<String>(data, 'cabinClassType'),
          'daparturFlight': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'daparturFlight', AirlinesDatasetRecord.fromSnapshot),
        },
      ),
  'Alfursan': ParameterData.none(),
  'Alfursan1': ParameterData.none(),
  'ChangePassword': ParameterData.none(),
  'CreateAccount': ParameterData.none(),
  'EditAccount': ParameterData.none(),
  'ForgotPassword': ParameterData.none(),
  'login': ParameterData.none(),
  'nasmiles01': ParameterData.none(),
  'Loyalityprogram': ParameterData.none(),
  'nasmiles': ParameterData.none(),
  'NewPassword': ParameterData.none(),
  'Success': ParameterData.none(),
  'Travelers': ParameterData.none(),
  'addTraveler': ParameterData.none(),
  'Success01': ParameterData.none(),
  'OTPcode': (data) async => ParameterData(
        allParams: {
          'phoneNumber': getParameter<String>(data, 'phoneNumber'),
        },
      ),
  'Notification': ParameterData.none(),
  'AirportServices': ParameterData.none(),
  'Airlines': ParameterData.none(),
  'Bank': ParameterData.none(),
  'Rentals': ParameterData.none(),
  'Lounges': ParameterData.none(),
  'Restaurants': ParameterData.none(),
  'BaggageServices': ParameterData.none(),
  'Shops': ParameterData.none(),
  'SelfService': ParameterData.none(),
  'TelecomServices': ParameterData.none(),
  'LostNFound': ParameterData.none(),
  'BaggageReclaim': ParameterData.none(),
  'BaggageRegulation': ParameterData.none(),
  'BaggageServicesInfo': ParameterData.none(),
  'TravelRequirements': (data) async => ParameterData(
        allParams: {
          'origin': getParameter<String>(data, 'origin'),
          'destination': getParameter<String>(data, 'destination'),
        },
      ),
  'TravelRequirementsResult': (data) async => ParameterData(
        allParams: {
          'origin': getParameter<String>(data, 'origin'),
          'destination': getParameter<String>(data, 'destination'),
          'natinality': getParameter<String>(data, 'natinality'),
          'purpose': getParameter<String>(data, 'purpose'),
        },
      ),
  'ExtraLuggageDetails': (data) async => ParameterData(
        allParams: {
          'totalExtraLuggage': getParameter<int>(data, 'totalExtraLuggage'),
          'priceLuggage': getParameter<int>(data, 'priceLuggage'),
          'flightBookingDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'flightBookingDoc', AirlinesDatasetRecord.fromSnapshot),
          'userDoc': await getDocumentParameter<FlightBookingRecord>(
              data, 'userDoc', FlightBookingRecord.fromSnapshot),
        },
      ),
  'SuccessLuggage': ParameterData.none(),
  'Profile': ParameterData.none(),
  'Navigation': (data) async => ParameterData(
        allParams: {
          'navdoc': await getDocumentParameter<ServicesDatasetRecord>(
              data, 'navdoc', ServicesDatasetRecord.fromSnapshot),
          'latlng': getParameter<LatLng>(data, 'latlng'),
          'url': getParameter<String>(data, 'url'),
        },
      ),
  'Parking': ParameterData.none(),
  'Boarding': (data) async => ParameterData(
        allParams: {
          'flightBookRef': await getDocumentParameter<FlightBookingRecord>(
              data, 'flightBookRef', FlightBookingRecord.fromSnapshot),
          'airline': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'airline', AirlinesDatasetRecord.fromSnapshot),
          'airport': await getDocumentParameter<AirportDatasetRecord>(
              data, 'airport', AirportDatasetRecord.fromSnapshot),
        },
      ),
  'Check-in': (data) async => ParameterData(
        allParams: {
          'bookingRef': await getDocumentParameter<FlightBookingRecord>(
              data, 'bookingRef', FlightBookingRecord.fromSnapshot),
          'airline': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'airline', AirlinesDatasetRecord.fromSnapshot),
          'airport': await getDocumentParameter<AirportDatasetRecord>(
              data, 'airport', AirportDatasetRecord.fromSnapshot),
        },
      ),
  'Taxi': ParameterData.none(),
  'TravelAgencies': ParameterData.none(),
  'filter1': ParameterData.none(),
  'BookingManagement': ParameterData.none(),
  'resultOneway': (data) async => ParameterData(
        allParams: {
          'origin': getParameter<String>(data, 'origin'),
          'destination': getParameter<String>(data, 'destination'),
          'depDate': getParameter<DateTime>(data, 'depDate'),
          'totalPassenger': getParameter<int>(data, 'totalPassenger'),
          'cabinclass': getParameter<String>(data, 'cabinclass'),
          'airlinetype': getParameter<String>(data, 'airlinetype'),
          'flightBooking': await getDocumentParameter<FlightBookingRecord>(
              data, 'flightBooking', FlightBookingRecord.fromSnapshot),
        },
      ),
  'rescheduledreslt': (data) async => ParameterData(
        allParams: {
          'origin': getParameter<String>(data, 'origin'),
          'destination': getParameter<String>(data, 'destination'),
          'depDate': getParameter<DateTime>(data, 'depDate'),
          'totalPassenger': getParameter<int>(data, 'totalPassenger'),
          'cabinclass': getParameter<String>(data, 'cabinclass'),
          'flightDetails': await getDocumentParameter<FlightBookingRecord>(
              data, 'flightDetails', FlightBookingRecord.fromSnapshot),
          'airlinedoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'airlinedoc', AirlinesDatasetRecord.fromSnapshot),
          'airlineType': getParameter<String>(data, 'airlineType'),
        },
      ),
  'testRoundTripResult1': (data) async => ParameterData(
        allParams: {
          'origin': getParameter<String>(data, 'origin'),
          'destination': getParameter<String>(data, 'destination'),
          'departureDate': getParameter<DateTime>(data, 'departureDate'),
          'totalPassenger': getParameter<int>(data, 'totalPassenger'),
          'cabinclass': getParameter<String>(data, 'cabinclass'),
          'arrivalDate': getParameter<DateTime>(data, 'arrivalDate'),
        },
      ),
  'testRoundTripResult2': (data) async => ParameterData(
        allParams: {
          'origin': getParameter<String>(data, 'origin'),
          'destination': getParameter<String>(data, 'destination'),
          'departureDate': getParameter<DateTime>(data, 'departureDate'),
          'totalPassenger': getParameter<int>(data, 'totalPassenger'),
          'cabinclass': getParameter<String>(data, 'cabinclass'),
          'departureDco': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'departureDco', AirlinesDatasetRecord.fromSnapshot),
        },
      ),
  'RoundTripFlightSummary': (data) async => ParameterData(
        allParams: {
          'flightID': getParameter<String>(data, 'flightID'),
          'departueDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'departueDoc', AirlinesDatasetRecord.fromSnapshot),
          'arrivalDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'arrivalDoc', AirlinesDatasetRecord.fromSnapshot),
        },
      ),
  'newReschedeFlight': (data) async => ParameterData(
        allParams: {
          'origin': getParameter<String>(data, 'origin'),
          'destination': getParameter<String>(data, 'destination'),
          'departureDate': getParameter<DateTime>(data, 'departureDate'),
          'cabinClass': getParameter<String>(data, 'cabinClass'),
          'totalPassengers': getParameter<int>(data, 'totalPassengers'),
          'flightBooking': await getDocumentParameter<FlightBookingRecord>(
              data, 'flightBooking', FlightBookingRecord.fromSnapshot),
          'airlineDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'airlineDoc', AirlinesDatasetRecord.fromSnapshot),
          'airlineType': getParameter<String>(data, 'airlineType'),
        },
      ),
  'trackLuggage': ParameterData.none(),
  'rescheduledpay': (data) async => ParameterData(
        allParams: {
          'flightID': getParameter<String>(data, 'flightID'),
          'departureDoc': await getDocumentParameter<AirlinesDatasetRecord>(
              data, 'departureDoc', AirlinesDatasetRecord.fromSnapshot),
          'userDoc': await getDocumentParameter<FlightBookingRecord>(
              data, 'userDoc', FlightBookingRecord.fromSnapshot),
          'totalPassenger': getParameter<int>(data, 'totalPassenger'),
        },
      ),
  'loyaltyFursan': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
