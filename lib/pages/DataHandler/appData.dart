import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_app/models/addresse.dart';

class AppData extends ChangeNotifier
{
  Address pickUpLocation;
  Address dropOffLocation;
   void updatePickupLocationAddress(Address pickAddress){
     pickUpLocation=pickAddress;
     notifyListeners();
   }
}