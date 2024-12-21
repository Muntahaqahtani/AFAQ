import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomePageWidget() : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const HomePageWidget() : const LoginWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'viewBookingDetails',
          path: '/viewBookingDetails',
          asyncParams: {
            'flightBookingDoc':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
            'flightDetails': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'airplane': getDoc(
                ['Airplains_Dataset'], AirplainsDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => ViewBookingDetailsWidget(
            flightBookingID: params.getParam(
              'flightBookingID',
              ParamType.String,
            ),
            flightBookingDoc: params.getParam(
              'flightBookingDoc',
              ParamType.Document,
            ),
            flightDetails: params.getParam(
              'flightDetails',
              ParamType.Document,
            ),
            airplane: params.getParam(
              'airplane',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'resultsRoundtrip1',
          path: '/resultsRoundtrip1',
          builder: (context, params) => ResultsRoundtrip1Widget(
            origin: params.getParam(
              'origin',
              ParamType.String,
            ),
            destination: params.getParam(
              'destination',
              ParamType.String,
            ),
            departureDate: params.getParam(
              'departureDate',
              ParamType.DateTime,
            ),
            arriavalDate: params.getParam(
              'arriavalDate',
              ParamType.DateTime,
            ),
            passengers: params.getParam(
              'passengers',
              ParamType.int,
            ),
            cabinclasstype: params.getParam(
              'cabinclasstype',
              ParamType.String,
            ),
            airlineType: params.getParam(
              'airlineType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'privactPolicy',
          path: '/privactPolicy',
          builder: (context, params) => const PrivactPolicyWidget(),
        ),
        FFRoute(
          name: 'setting',
          path: '/setting',
          builder: (context, params) => const SettingWidget(),
        ),
        FFRoute(
          name: 'trackluggageTimeline',
          path: '/trackluggageTimeline',
          asyncParams: {
            'bookRef':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
          },
          builder: (context, params) => TrackluggageTimelineWidget(
            bookRef: params.getParam(
              'bookRef',
              ParamType.Document,
            ),
            bookRefrence: params.getParam(
              'bookRefrence',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'startPage',
          path: '/startPage',
          builder: (context, params) => const StartPageWidget(),
        ),
        FFRoute(
          name: 'ContactUs',
          path: '/contactUs',
          builder: (context, params) => const ContactUsWidget(),
        ),
        FFRoute(
          name: 'helpSupport',
          path: '/helpSupport',
          builder: (context, params) => const HelpSupportWidget(),
        ),
        FFRoute(
          name: 'aboutUs',
          path: '/aboutUs',
          builder: (context, params) => const AboutUsWidget(),
        ),
        FFRoute(
          name: 'addExtraLuggage',
          path: '/addExtraLuggage',
          asyncParams: {
            'flightBookingDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'userDoc':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
          },
          builder: (context, params) => AddExtraLuggageWidget(
            flightBookingDoc: params.getParam(
              'flightBookingDoc',
              ParamType.Document,
            ),
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'searchFlight',
          path: '/searchFlight',
          builder: (context, params) => SearchFlightWidget(
            totalPassengers: params.getParam(
              'totalPassengers',
              ParamType.int,
            ),
            cabinClass: params.getParam(
              'cabinClass',
              ParamType.String,
            ),
            tabIndexRef: params.getParam(
              'tabIndexRef',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'termCondition',
          path: '/termCondition',
          builder: (context, params) => const TermConditionWidget(),
        ),
        FFRoute(
          name: 'addPassengers',
          path: '/addPassengers',
          asyncParams: {
            'departureDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'arrivalDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => AddPassengersWidget(
            flightID: params.getParam(
              'flightID',
              ParamType.String,
            ),
            departureDoc: params.getParam(
              'departureDoc',
              ParamType.Document,
            ),
            arrivalDoc: params.getParam(
              'arrivalDoc',
              ParamType.Document,
            ),
            totalPassengers: params.getParam(
              'totalPassengers',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'viewBooking',
          path: '/viewBooking',
          builder: (context, params) => const ViewBookingWidget(),
        ),
        FFRoute(
          name: 'cancellationPolicy',
          path: '/cancellationPolicy',
          builder: (context, params) => const CancellationPolicyWidget(),
        ),
        FFRoute(
          name: 'payment',
          path: '/payment',
          asyncParams: {
            'depatureDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'arrivalDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => PaymentWidget(
            flightID: params.getParam(
              'flightID',
              ParamType.String,
            ),
            depatureDoc: params.getParam(
              'depatureDoc',
              ParamType.Document,
            ),
            arrivalDoc: params.getParam(
              'arrivalDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'OneWayFlightSummary',
          path: '/oneWayFlightSummary',
          asyncParams: {
            'airlineDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'flightDetails':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
          },
          builder: (context, params) => OneWayFlightSummaryWidget(
            flightID: params.getParam(
              'flightID',
              ParamType.String,
            ),
            airlineDoc: params.getParam(
              'airlineDoc',
              ParamType.Document,
            ),
            flightDetails: params.getParam(
              'flightDetails',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'successBooking',
          path: '/successBooking',
          asyncParams: {
            'flightDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'flightBooking':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
          },
          builder: (context, params) => SuccessBookingWidget(
            flightDoc: params.getParam(
              'flightDoc',
              ParamType.Document,
            ),
            flightBooking: params.getParam(
              'flightBooking',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'resultsRoundtrip2',
          path: '/resultsRoundtrip2',
          asyncParams: {
            'daparturFlight': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => ResultsRoundtrip2Widget(
            passengers: params.getParam(
              'passengers',
              ParamType.int,
            ),
            cabinClassType: params.getParam(
              'cabinClassType',
              ParamType.String,
            ),
            daparturFlight: params.getParam(
              'daparturFlight',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Alfursan',
          path: '/alfursan',
          builder: (context, params) => const AlfursanWidget(),
        ),
        FFRoute(
          name: 'Alfursan1',
          path: '/alfursan1',
          builder: (context, params) => const Alfursan1Widget(),
        ),
        FFRoute(
          name: 'ChangePassword',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => const CreateAccountWidget(),
        ),
        FFRoute(
          name: 'EditAccount',
          path: '/editAccount',
          builder: (context, params) => const EditAccountWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'nasmiles01',
          path: '/nasmiles01',
          builder: (context, params) => const Nasmiles01Widget(),
        ),
        FFRoute(
          name: 'Loyalityprogram',
          path: '/loyalityprogram',
          builder: (context, params) => const LoyalityprogramWidget(),
        ),
        FFRoute(
          name: 'nasmiles',
          path: '/nasmiles',
          builder: (context, params) => const NasmilesWidget(),
        ),
        FFRoute(
          name: 'NewPassword',
          path: '/newPassword',
          builder: (context, params) => const NewPasswordWidget(),
        ),
        FFRoute(
          name: 'Success',
          path: '/success',
          builder: (context, params) => const SuccessWidget(),
        ),
        FFRoute(
          name: 'Travelers',
          path: '/travelers',
          builder: (context, params) => const TravelersWidget(),
        ),
        FFRoute(
          name: 'addTraveler',
          path: '/addTravelers',
          builder: (context, params) => const AddTravelerWidget(),
        ),
        FFRoute(
          name: 'Success01',
          path: '/success01',
          builder: (context, params) => const Success01Widget(),
        ),
        FFRoute(
          name: 'OTPcode',
          path: '/oTPcode',
          builder: (context, params) => OTPcodeWidget(
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Notification',
          path: '/notification',
          builder: (context, params) => const NotificationWidget(),
        ),
        FFRoute(
          name: 'AirportServices',
          path: '/airportServices',
          builder: (context, params) => const AirportServicesWidget(),
        ),
        FFRoute(
          name: 'Airlines',
          path: '/airlines',
          builder: (context, params) => const AirlinesWidget(),
        ),
        FFRoute(
          name: 'Bank',
          path: '/bank',
          builder: (context, params) => const BankWidget(),
        ),
        FFRoute(
          name: 'Rentals',
          path: '/rentals',
          builder: (context, params) => const RentalsWidget(),
        ),
        FFRoute(
          name: 'Lounges',
          path: '/lounges',
          builder: (context, params) => const LoungesWidget(),
        ),
        FFRoute(
          name: 'Restaurants',
          path: '/restaurants',
          builder: (context, params) => const RestaurantsWidget(),
        ),
        FFRoute(
          name: 'BaggageServices',
          path: '/baggageServices',
          builder: (context, params) => const BaggageServicesWidget(),
        ),
        FFRoute(
          name: 'Shops',
          path: '/shops',
          builder: (context, params) => const ShopsWidget(),
        ),
        FFRoute(
          name: 'SelfService',
          path: '/selfService',
          builder: (context, params) => const SelfServiceWidget(),
        ),
        FFRoute(
          name: 'TelecomServices',
          path: '/telecomServices',
          builder: (context, params) => const TelecomServicesWidget(),
        ),
        FFRoute(
          name: 'LostNFound',
          path: '/lostNFound',
          builder: (context, params) => const LostNFoundWidget(),
        ),
        FFRoute(
          name: 'BaggageReclaim',
          path: '/baggageReclaim',
          builder: (context, params) => const BaggageReclaimWidget(),
        ),
        FFRoute(
          name: 'BaggageRegulation',
          path: '/baggageRegulation',
          builder: (context, params) => const BaggageRegulationWidget(),
        ),
        FFRoute(
          name: 'BaggageServicesInfo',
          path: '/baggageServicesInfo',
          builder: (context, params) => const BaggageServicesInfoWidget(),
        ),
        FFRoute(
          name: 'TravelRequirements',
          path: '/travelRequirements',
          builder: (context, params) => TravelRequirementsWidget(
            origin: params.getParam(
              'origin',
              ParamType.String,
            ),
            destination: params.getParam(
              'destination',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'TravelRequirementsResult',
          path: '/travelRequirementsResult',
          builder: (context, params) => TravelRequirementsResultWidget(
            origin: params.getParam(
              'origin',
              ParamType.String,
            ),
            destination: params.getParam(
              'destination',
              ParamType.String,
            ),
            natinality: params.getParam(
              'natinality',
              ParamType.String,
            ),
            purpose: params.getParam(
              'purpose',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ExtraLuggageDetails',
          path: '/extraLuggageDetails',
          asyncParams: {
            'flightBookingDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'userDoc':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
          },
          builder: (context, params) => ExtraLuggageDetailsWidget(
            totalExtraLuggage: params.getParam(
              'totalExtraLuggage',
              ParamType.int,
            ),
            priceLuggage: params.getParam(
              'priceLuggage',
              ParamType.int,
            ),
            flightBookingDoc: params.getParam(
              'flightBookingDoc',
              ParamType.Document,
            ),
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'SuccessLuggage',
          path: '/successLuggage',
          builder: (context, params) => const SuccessLuggageWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'Navigation',
          path: '/navigation',
          asyncParams: {
            'navdoc': getDoc(
                ['Services_Dataset'], ServicesDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => NavigationWidget(
            navdoc: params.getParam(
              'navdoc',
              ParamType.Document,
            ),
            latlng: params.getParam(
              'latlng',
              ParamType.LatLng,
            ),
            url: params.getParam(
              'url',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Parking',
          path: '/parking',
          builder: (context, params) => const ParkingWidget(),
        ),
        FFRoute(
          name: 'Boarding',
          path: '/boarding',
          asyncParams: {
            'flightBookRef':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
            'airline': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'airport':
                getDoc(['Airport_Dataset'], AirportDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => BoardingWidget(
            flightBookRef: params.getParam(
              'flightBookRef',
              ParamType.Document,
            ),
            airline: params.getParam(
              'airline',
              ParamType.Document,
            ),
            airport: params.getParam(
              'airport',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Check-in',
          path: '/checkIn',
          asyncParams: {
            'bookingRef':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
            'airline': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'airport':
                getDoc(['Airport_Dataset'], AirportDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => CheckInWidget(
            bookingRef: params.getParam(
              'bookingRef',
              ParamType.Document,
            ),
            airline: params.getParam(
              'airline',
              ParamType.Document,
            ),
            airport: params.getParam(
              'airport',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Taxi',
          path: '/taxi',
          builder: (context, params) => const TaxiWidget(),
        ),
        FFRoute(
          name: 'TravelAgencies',
          path: '/travelAgencies',
          builder: (context, params) => const TravelAgenciesWidget(),
        ),
        FFRoute(
          name: 'filter1',
          path: '/filter1',
          builder: (context, params) => const Filter1Widget(),
        ),
        FFRoute(
          name: 'BookingManagement',
          path: '/FlightReschedual',
          builder: (context, params) => const BookingManagementWidget(),
        ),
        FFRoute(
          name: 'resultOneway',
          path: '/resultOneway',
          asyncParams: {
            'flightBooking':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
          },
          builder: (context, params) => ResultOnewayWidget(
            origin: params.getParam(
              'origin',
              ParamType.String,
            ),
            destination: params.getParam(
              'destination',
              ParamType.String,
            ),
            depDate: params.getParam(
              'depDate',
              ParamType.DateTime,
            ),
            totalPassenger: params.getParam(
              'totalPassenger',
              ParamType.int,
            ),
            cabinclass: params.getParam(
              'cabinclass',
              ParamType.String,
            ),
            airlinetype: params.getParam(
              'airlinetype',
              ParamType.String,
            ),
            flightBooking: params.getParam(
              'flightBooking',
              ParamType.Document,
            ),
            airlineFilter: params.getParam<String>(
              'airlineFilter',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: 'rescheduledreslt',
          path: '/rescheduledreslt',
          asyncParams: {
            'flightDetails':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
            'airlinedoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => RescheduledresltWidget(
            origin: params.getParam(
              'origin',
              ParamType.String,
            ),
            destination: params.getParam(
              'destination',
              ParamType.String,
            ),
            depDate: params.getParam(
              'depDate',
              ParamType.DateTime,
            ),
            totalPassenger: params.getParam(
              'totalPassenger',
              ParamType.int,
            ),
            cabinclass: params.getParam(
              'cabinclass',
              ParamType.String,
            ),
            flightDetails: params.getParam(
              'flightDetails',
              ParamType.Document,
            ),
            airlinedoc: params.getParam(
              'airlinedoc',
              ParamType.Document,
            ),
            airlineType: params.getParam(
              'airlineType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'testRoundTripResult1',
          path: '/testRoundTripResult1',
          builder: (context, params) => TestRoundTripResult1Widget(
            origin: params.getParam(
              'origin',
              ParamType.String,
            ),
            destination: params.getParam(
              'destination',
              ParamType.String,
            ),
            departureDate: params.getParam(
              'departureDate',
              ParamType.DateTime,
            ),
            totalPassenger: params.getParam(
              'totalPassenger',
              ParamType.int,
            ),
            cabinclass: params.getParam(
              'cabinclass',
              ParamType.String,
            ),
            arrivalDate: params.getParam(
              'arrivalDate',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'testRoundTripResult2',
          path: '/testRoundTripResult2',
          asyncParams: {
            'departureDco': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => TestRoundTripResult2Widget(
            origin: params.getParam(
              'origin',
              ParamType.String,
            ),
            destination: params.getParam(
              'destination',
              ParamType.String,
            ),
            departureDate: params.getParam(
              'departureDate',
              ParamType.DateTime,
            ),
            totalPassenger: params.getParam(
              'totalPassenger',
              ParamType.int,
            ),
            cabinclass: params.getParam(
              'cabinclass',
              ParamType.String,
            ),
            departureDco: params.getParam(
              'departureDco',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'RoundTripFlightSummary',
          path: '/roundTripFlightSummary',
          asyncParams: {
            'departueDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'arrivalDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => RoundTripFlightSummaryWidget(
            flightID: params.getParam(
              'flightID',
              ParamType.String,
            ),
            departueDoc: params.getParam(
              'departueDoc',
              ParamType.Document,
            ),
            arrivalDoc: params.getParam(
              'arrivalDoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'newReschedeFlight',
          path: '/newReschedeFlight',
          asyncParams: {
            'flightBooking':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
            'airlineDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
          },
          builder: (context, params) => NewReschedeFlightWidget(
            origin: params.getParam(
              'origin',
              ParamType.String,
            ),
            destination: params.getParam(
              'destination',
              ParamType.String,
            ),
            departureDate: params.getParam(
              'departureDate',
              ParamType.DateTime,
            ),
            cabinClass: params.getParam(
              'cabinClass',
              ParamType.String,
            ),
            totalPassengers: params.getParam(
              'totalPassengers',
              ParamType.int,
            ),
            flightBooking: params.getParam(
              'flightBooking',
              ParamType.Document,
            ),
            airlineDoc: params.getParam(
              'airlineDoc',
              ParamType.Document,
            ),
            airlineType: params.getParam(
              'airlineType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'trackLuggage',
          path: '/trackLuggage',
          builder: (context, params) => const TrackLuggageWidget(),
        ),
        FFRoute(
          name: 'rescheduledpay',
          path: '/rescheduledpay',
          asyncParams: {
            'departureDoc': getDoc(
                ['Airlines_Dataset'], AirlinesDatasetRecord.fromSnapshot),
            'userDoc':
                getDoc(['FlightBooking'], FlightBookingRecord.fromSnapshot),
          },
          builder: (context, params) => RescheduledpayWidget(
            flightID: params.getParam(
              'flightID',
              ParamType.String,
            ),
            departureDoc: params.getParam(
              'departureDoc',
              ParamType.Document,
            ),
            userDoc: params.getParam(
              'userDoc',
              ParamType.Document,
            ),
            totalPassenger: params.getParam(
              'totalPassenger',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'loyaltyFursan',
          path: '/loyaltyFursan',
          builder: (context, params) => const LoyaltyFursanWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
