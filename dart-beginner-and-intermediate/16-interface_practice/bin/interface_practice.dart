import 'package:interface_practice/bedbreakfast.dart';

void main(List<String> arguments) {
  var someBedBreakfast = BedBreakfast(3);
  someBedBreakfast.roomAmount = 2;

  print('Guest amount: ${someBedBreakfast.guestAmount}');
  print('Room amount: ${someBedBreakfast.roomAmount}');
  someBedBreakfast.ringDoorbell();
}
