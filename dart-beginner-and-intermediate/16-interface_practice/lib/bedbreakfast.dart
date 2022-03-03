import 'package:interface_practice/hotel.dart';
import 'package:interface_practice/house.dart';

class BedBreakfast extends House implements Hotel {
  @override
  int guestAmount;

  BedBreakfast(this.guestAmount);

  @override
  void ringDoorbell() {
    print('Door bell is ringing...');
  }
}
