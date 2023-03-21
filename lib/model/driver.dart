import 'package:firebase_database/firebase_database.dart';

class Driver {
  String? fullName;
  String? email;
  String? phone;
  String? id;
  String? carModel;
  String? carColor;
  String? vehicleNumber;
  Driver({
    this.fullName,
    this.email,
    this.phone,
    this.id,
    this.carModel,
    this.carColor,
    this.vehicleNumber,
  });

  Driver.fromSnapshot(DataSnapshot snapshot) {
    id = snapshot.key;
    phone = snapshot.value['phone'];
    email = snapshot.value['email'];
    carColor = snapshot.value["vehicle_details"]['car_color'];
    carModel = snapshot.value["vehicle_details"]['car_model'];
    fullName = snapshot.value['fullname'];
    vehicleNumber = snapshot.value["vehicle_details"]['vehicle_number'];
  }
}
