import 'package:collection/collection.dart';

enum VisaType {
  Business,
  Toursim,
}

enum AccountStatus {
  active,
  deleted,
}

enum ModeOfPayment {
  completed,
  incomplete,
}

enum PaymentType {
  ApplePay,
  creditOrDebitCard,
}

enum Country {
  Riyadh,
  Jeddah,
  Istanbul,
  Geneva,
  London,
}

enum SeatClass {
  economy,
  business,
  first,
}

enum ServiceCategory {
  Airlines,
  Shops,
  Telecom,
  CarRental,
  Taxi,
  SelfServiceMachines,
  BankAndCurrencyExchange,
  Restaurants,
  Lounges,
}

enum CabinClass {
  Economy,
  Business,
  First,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (VisaType):
      return VisaType.values.deserialize(value) as T?;
    case (AccountStatus):
      return AccountStatus.values.deserialize(value) as T?;
    case (ModeOfPayment):
      return ModeOfPayment.values.deserialize(value) as T?;
    case (PaymentType):
      return PaymentType.values.deserialize(value) as T?;
    case (Country):
      return Country.values.deserialize(value) as T?;
    case (SeatClass):
      return SeatClass.values.deserialize(value) as T?;
    case (ServiceCategory):
      return ServiceCategory.values.deserialize(value) as T?;
    case (CabinClass):
      return CabinClass.values.deserialize(value) as T?;
    default:
      return null;
  }
}
