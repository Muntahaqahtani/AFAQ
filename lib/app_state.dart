import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _selectedOrigin = '';
  String get selectedOrigin => _selectedOrigin;
  set selectedOrigin(String value) {
    _selectedOrigin = value;
  }

  String _selectedDestination = '';
  String get selectedDestination => _selectedDestination;
  set selectedDestination(String value) {
    _selectedDestination = value;
  }

  DateTime? _selectedDepartureDate =
      DateTime.fromMillisecondsSinceEpoch(1733041920000);
  DateTime? get selectedDepartureDate => _selectedDepartureDate;
  set selectedDepartureDate(DateTime? value) {
    _selectedDepartureDate = value;
  }

  int _totalSelectedPassengers = 1;
  int get totalSelectedPassengers => _totalSelectedPassengers;
  set totalSelectedPassengers(int value) {
    _totalSelectedPassengers = value;
  }

  String _selectedCabinClass = 'Economy';
  String get selectedCabinClass => _selectedCabinClass;
  set selectedCabinClass(String value) {
    _selectedCabinClass = value;
  }

  int _selectedAdultCount = 0;
  int get selectedAdultCount => _selectedAdultCount;
  set selectedAdultCount(int value) {
    _selectedAdultCount = value;
  }

  int _selectedChildCount = 0;
  int get selectedChildCount => _selectedChildCount;
  set selectedChildCount(int value) {
    _selectedChildCount = value;
  }

  int _selectedInfantCount = 0;
  int get selectedInfantCount => _selectedInfantCount;
  set selectedInfantCount(int value) {
    _selectedInfantCount = value;
  }

  DateTime? _selectedReturnDate =
      DateTime.fromMillisecondsSinceEpoch(1733041920000);
  DateTime? get selectedReturnDate => _selectedReturnDate;
  set selectedReturnDate(DateTime? value) {
    _selectedReturnDate = value;
  }

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;
  set totalPrice(double value) {
    _totalPrice = value;
  }

  double _cabinBuggage = 0.0;
  double get cabinBuggage => _cabinBuggage;
  set cabinBuggage(double value) {
    _cabinBuggage = value;
  }

  double _checkedBuggage = 0.0;
  double get checkedBuggage => _checkedBuggage;
  set checkedBuggage(double value) {
    _checkedBuggage = value;
  }

  List<String> _airlineFilter = [];
  List<String> get airlineFilter => _airlineFilter;
  set airlineFilter(List<String> value) {
    _airlineFilter = value;
  }

  void addToAirlineFilter(String value) {
    airlineFilter.add(value);
  }

  void removeFromAirlineFilter(String value) {
    airlineFilter.remove(value);
  }

  void removeAtIndexFromAirlineFilter(int index) {
    airlineFilter.removeAt(index);
  }

  void updateAirlineFilterAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    airlineFilter[index] = updateFn(_airlineFilter[index]);
  }

  void insertAtIndexInAirlineFilter(int index, String value) {
    airlineFilter.insert(index, value);
  }

  int _totalExtraLuggage = 0;
  int get totalExtraLuggage => _totalExtraLuggage;
  set totalExtraLuggage(int value) {
    _totalExtraLuggage = value;
  }

  int _priceLuggage = 0;
  int get priceLuggage => _priceLuggage;
  set priceLuggage(int value) {
    _priceLuggage = value;
  }

  int _countController15 = 0;
  int get countController15 => _countController15;
  set countController15(int value) {
    _countController15 = value;
  }

  int _countController20 = 0;
  int get countController20 => _countController20;
  set countController20(int value) {
    _countController20 = value;
  }

  int _countController25 = 0;
  int get countController25 => _countController25;
  set countController25(int value) {
    _countController25 = value;
  }

  double _flightchange = 0.0;
  double get flightchange => _flightchange;
  set flightchange(double value) {
    _flightchange = value;
  }

  int _tabIndex = 0;
  int get tabIndex => _tabIndex;
  set tabIndex(int value) {
    _tabIndex = value;
  }

  double _earns = 0.0;
  double get earns => _earns;
  set earns(double value) {
    _earns = value;
  }

  int _flightCnacelPrice = 0;
  int get flightCnacelPrice => _flightCnacelPrice;
  set flightCnacelPrice(int value) {
    _flightCnacelPrice = value;
  }

  int _numOfCheckedBaggage = 0;
  int get numOfCheckedBaggage => _numOfCheckedBaggage;
  set numOfCheckedBaggage(int value) {
    _numOfCheckedBaggage = value;
  }

  double _roundTrip1Price = 0.0;
  double get roundTrip1Price => _roundTrip1Price;
  set roundTrip1Price(double value) {
    _roundTrip1Price = value;
  }

  double _roundTrip2Price = 0.0;
  double get roundTrip2Price => _roundTrip2Price;
  set roundTrip2Price(double value) {
    _roundTrip2Price = value;
  }

  double _selectedMileBalance = 0.0;
  double get selectedMileBalance => _selectedMileBalance;
  set selectedMileBalance(double value) {
    _selectedMileBalance = value;
  }

  String _priceFilter = '';
  String get priceFilter => _priceFilter;
  set priceFilter(String value) {
    _priceFilter = value;
  }

  DateTime? _time1Filter = DateTime.fromMillisecondsSinceEpoch(1733041980000);
  DateTime? get time1Filter => _time1Filter;
  set time1Filter(DateTime? value) {
    _time1Filter = value;
  }

  DateTime? _time2Filter = DateTime.fromMillisecondsSinceEpoch(1733041980000);
  DateTime? get time2Filter => _time2Filter;
  set time2Filter(DateTime? value) {
    _time2Filter = value;
  }

  bool _isRescheduled = false;
  bool get isRescheduled => _isRescheduled;
  set isRescheduled(bool value) {
    _isRescheduled = value;
  }

  bool _isPrevious = false;
  bool get isPrevious => _isPrevious;
  set isPrevious(bool value) {
    _isPrevious = value;
  }

  DateTime? _newdSelectedDepartureDate =
      DateTime.fromMillisecondsSinceEpoch(1733042040000);
  DateTime? get newdSelectedDepartureDate => _newdSelectedDepartureDate;
  set newdSelectedDepartureDate(DateTime? value) {
    _newdSelectedDepartureDate = value;
  }

  String _selectedOption = '';
  String get selectedOption => _selectedOption;
  set selectedOption(String value) {
    _selectedOption = value;
  }

  double _reschedulefFee = 0.0;
  double get reschedulefFee => _reschedulefFee;
  set reschedulefFee(double value) {
    _reschedulefFee = value;
  }

  String _seatID = '';
  String get seatID => _seatID;
  set seatID(String value) {
    _seatID = value;
  }

  List<String> _airlinesFilter = [];
  List<String> get airlinesFilter => _airlinesFilter;
  set airlinesFilter(List<String> value) {
    _airlinesFilter = value;
  }

  void addToAirlinesFilter(String value) {
    airlinesFilter.add(value);
  }

  void removeFromAirlinesFilter(String value) {
    airlinesFilter.remove(value);
  }

  void removeAtIndexFromAirlinesFilter(int index) {
    airlinesFilter.removeAt(index);
  }

  void updateAirlinesFilterAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    airlinesFilter[index] = updateFn(_airlinesFilter[index]);
  }

  void insertAtIndexInAirlinesFilter(int index, String value) {
    airlinesFilter.insert(index, value);
  }

  DateTime? _editedDOB = DateTime.fromMillisecondsSinceEpoch(1733042040000);
  DateTime? get editedDOB => _editedDOB;
  set editedDOB(DateTime? value) {
    _editedDOB = value;
  }

  int _totalPassengers = 0;
  int get totalPassengers => _totalPassengers;
  set totalPassengers(int value) {
    _totalPassengers = value;
  }

  double _resFlightPrice = 0.0;
  double get resFlightPrice => _resFlightPrice;
  set resFlightPrice(double value) {
    _resFlightPrice = value;
  }
}
