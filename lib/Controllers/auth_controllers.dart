// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:scanapp/untils/export_file.dart';
// import 'package:intl/intl.dart';

// import 'dart:convert';
// import 'dart:io';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';

// class AuthController extends GetxController {
//   final apiService = Get.put(ApiService());
//   GoogleController serviceController = Get.put(GoogleController());
//   //ProfileController userprofilecontroller = Get.put(ProfileController());
//   Rx<File?> binaryImageFile = Rx<File?>(null);
//   ////////////////////////////////////////////////
//   var counter = 0.obs;
//   var isLoading = "none";
//   ////////////////////////////////////////////////////////////
//   Future<void> getCurrentLocation() async {
//     checkinLoading(true);

//     Position position = await _determinePosition();
//     serviceController.position = position;
//     serviceController.latittude = serviceController.position!.latitude;
//     serviceController.longitude = serviceController.position!.longitude;

//     var payload = {
//       "employee_id": scannedData["employee_id"],
//       "employee_name": scannedData["employee_name"],
//       "employee_designation": scannedData["employee_designation"],
//       "profilepic": "base64 ${base64ImageValue.value}",
//       "lat": serviceController.latittude.toString(),
//       "log": serviceController.longitude.toString()
//     };

//     try {
//       //
//       var response = await apiService.postAuthRequest(payload: payload);

//       String data = response;
//       print(data);

//       if (data == "Accepted") {
//         checkinData.value = data;

//         Fluttertoast.showToast(
//           msg: data,
//         );
//         Get.back();
//         Get.back();
//         debugPrint("object");
//       } else {
//         Fluttertoast.showToast(
//           msg: data,
//         );
//       }
//     } catch (e) {
//       Fluttertoast.showToast(
//         msg: "Something went wrong",
//       );
//     } finally {
//       checkinLoading(false);
//     }
//   }

//   ///////////////////////////////////////////////////////
//   Future<Position> _determinePosition() async {
//     LocationPermission permission;
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       if (permission == LocationPermission.deniedForever) {
//         return Future.error(
//             'Location permissions are permanently denied, we cannot request permissions.');
//       } else {
//         if (isPermissionGiven != true) {
//           permission = await Geolocator.requestPermission();
//           if (permission == LocationPermission.denied) {
//             return Future.error('Location permissions are denied');
//           }
//         } else {
//           Fluttertoast.showToast(
//             msg: "Denined Location Will Failed To Upload Attendance",
//           );
//         }
//       }
//     } else {
//       isPermissionGiven = true;
//     }
//     isLoading = "ended";

//     return await Geolocator.getCurrentPosition();
//   }

//   bool isPermissionGiven = false;

//   //////
//   // Scanapp controllers
//   var scannedData = {}.obs;
//   var base64ImageValue = "".obs; // Observed JSON object

//   // void updateScannedData(String? data) {
//   //   if (data != null) {
//   //     try {
//   //       scannedData.value = {'code': data};
//   //     } catch (e) {
//   //       scannedData.value = {'error': 'Invalid QR code'};
//   //     }
//   //   }
//   // }

//   ////////Coupons Api
//   var checkinLoading = false.obs;
//   var isCouponApplied = false.obs;
//   var checkinData = "".obs;
//   Future<void> employeesCheckIn() async {
//     checkinLoading(true);
//     var payload = {
//       "employee_id": scannedData["employee_id"],
//       "employee_name": scannedData["employee_name"],
//       "employee_designation": scannedData["employee_designation"],
//       "profilepic": "base64 ${base64ImageValue.value}",
//       "lat": "",
//       "log": ""
//     };
//     try {
//       //
//       var response = await apiService.postAuthRequest(payload: payload);

//       String data = jsonDecode(response);
//       print(data);

//       if (data == "Accepted") {
//         checkinData.value = data;

//         Fluttertoast.showToast(
//           msg: data,
//         );

//         debugPrint("object");
//       } else {
//         Fluttertoast.showToast(
//           msg: data,
//         );
//       }
//     } catch (e) {
//       Fluttertoast.showToast(
//         msg: "Something went wrong",
//       );
//     } finally {
//       checkinLoading(false);
//     }
//   }
// }

////////Form dta
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:uthistaapp/untils/export_file.dart';
import 'package:intl/intl.dart';

import 'dart:convert';
import 'dart:io';

class AuthController extends GetxController {
  final apiService = Get.put(ApiService());

  GoogleController serviceController = Get.put(GoogleController());
  //ProfileController userprofilecontroller = Get.put(ProfileController());

  TextEditingController UserEmailSignInController = TextEditingController();
  TextEditingController UserEmailPasswordController = TextEditingController();
  ////////////////////////////////////////////////
  var selectedPublishedorScheduled = "Expenses".obs;
  var counter = 0.obs;
  var isLoading = "none";
  var today = ''.obs;
  var userEmail = ''.obs;
  var choosenFromCategory = ''.obs;
  //nursey dropdown
  var choosenfixedSalaryAmount = 'cash'.obs;
  TextEditingController fixedSalaryAmountIDController = TextEditingController();

  var choosenwagesSalaryAmount = 'cash'.obs;
  TextEditingController wagesSalaryAmountIDController = TextEditingController();

  var choosenSalaryAdvanceAmount = 'cash'.obs;
  TextEditingController choosenSalaryAdvanceAmountIDController =
      TextEditingController();

  var choosenLoanAmount = 'cash'.obs;
  TextEditingController choosenLoanAmountIDController = TextEditingController();

  var choosenStafftrainingAmount = 'cash'.obs;
  TextEditingController choosenstafftrainingAmountIDController =
      TextEditingController();

  var choosenUtilitiesAmount = 'cash'.obs;
  TextEditingController choosenUtilitiesAmountIDController =
      TextEditingController();

  var choosenStationaryAmount = 'cash'.obs;
  TextEditingController choosenStationaryAmountIDController =
      TextEditingController();

  var choosenfoodbeveragesAmount = 'cash'.obs;
  TextEditingController choosenFoodbeveragesAmountIDController =
      TextEditingController();

  var choosenGroceriesAmount = 'cash'.obs;
  TextEditingController choosenGroceriesAmountIDController =
      TextEditingController();

  var choosenWtersupplyAmount = 'cash'.obs;
  TextEditingController choosenwaterSupplyAmountIDController =
      TextEditingController();

  var choosenMaintenanceAndrepairsAmount = 'cash'.obs;
  TextEditingController choosenMaintenanceAndrepairsAmountIDController =
      TextEditingController();

  var choosenVehicleMaintenanceAmount = 'cash'.obs;
  TextEditingController choosenVehicleMaintennceAmountIDController =
      TextEditingController();

  var choosenMiscellineousAmount = 'cash'.obs;
  TextEditingController choosenMiscellineousAmountIDController =
      TextEditingController();

  var choosenOtherexpensesAmount = 'cash'.obs;
  TextEditingController choosenOtherExpensesAmountIDController =
      TextEditingController();

  var choosenFuelcostAmount = 'cash'.obs;
  TextEditingController choosenOtherFuelAmountIDController =
      TextEditingController();
  // Tailoring drop down
  // 5. Raw material
  //         a. Amount*
  var choosenRawmaterialAmount = 'cash'.obs;
  TextEditingController choosenRawmaterialIDController =
      TextEditingController();
  //         b. Remarks
  // 6.⁠ ⁠Sewing Machines
  //         a. Amount*
  var choosensewingMachinesAmount = 'cash'.obs;
  TextEditingController choosensewingMachinesIDController =
      TextEditingController();
  //         b. Remarks
  // 7.⁠ ⁠Tools
  //         a. Amount*
  var choosensetoolsAmount = 'cash'.obs;
  TextEditingController choosensewingtoolsIDController =
      TextEditingController();
  //         b. Remarks
  // 8.⁠ ⁠Machine Maintenance and Repairs
  //         a. Amount*
  var choosensemachineMaintenanceandRepairsAmount = 'cash'.obs;
  TextEditingController choosensemachineMaintenanceandRepairsIDController =
      TextEditingController();
  //         b. Remarks
  // 9.⁠ ⁠Rent and Utilities
  //         a. Amount*
  var choosenserentandUtilitiesAmount = 'cash'.obs;
  TextEditingController choosenserentAndutilitiesIDController =
      TextEditingController();
  //         b. Remarks
  // 10.⁠ ⁠Skills Training Cost
  //         a. Amount*
  var choosenseskillsTrainingCostAmount = 'cash'.obs;
  TextEditingController choosenseskillsTrainingIDController =
      TextEditingController();
  //         b. Remarks
  // 11.⁠ ⁠Transportation
  //         a. Amount*
  var choosensetransportationCostAmount = 'cash'.obs;
  TextEditingController choosensetransportationIDController =
      TextEditingController();
  //         b. Remarks
  // 12.⁠ ⁠Packaging
  //         a. Amount
  var choosensepackgingAmount = 'cash'.obs;
  TextEditingController choosensepackgingIDController = TextEditingController();
  //         b. Remarks
  ///
  ////
  Rx<File?> selectedImage = Rx<File?>(null);

  // Method to update the selected image
  void updateSelectedImage(File? image) {
    // ramqquk
    selectedImage.value = image;
  }

/////////////////////////Ulpoad APi
  var addFormLoading = false.obs;

  Future<void> addForm(Map payload) async {
    addFormLoading(true);

    try {
      //

      // sapFacebookPostImg: selectedImage.value,

      var response = await apiService.postRequestSignInFormData(
          payload: payload,
          endpoint: "https://api.smartaihr.com/api/users/save");

      Map data = jsonDecode(response);
      print(data);

      if (data["message"] == "Data saved successfully") {
        Fluttertoast.showToast(
          msg: data["message"],
        );

        // uploadImage();
        //here
      } else {
        Fluttertoast.showToast(
          msg: data["message"],
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Something went wrong",
      );
    } finally {
      addFormLoading(false);
    }
  }

  // v2
  Future<void> addFormExp(Map payload) async {
    addFormLoading(true);

    try {
      //

      // sapFacebookPostImg: selectedImage.value,

      var response = await apiService.postRequestSignInFormDataExp(
          payload: payload,
          endpoint: "https://api.smartaihr.com/api/users/save");

      Map data = jsonDecode(response);
      print(data);

      if (data["message"] == "Data saved successfully") {
        Fluttertoast.showToast(
          msg: data["message"],
        );

        // uploadImage();
        //here
      } else {
        Fluttertoast.showToast(
          msg: data["message"],
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Something went wrong",
      );
    } finally {
      addFormLoading(false);
    }
  }

  // add comment and image
  Future<void> addFormCommment(Map payload) async {
    addFormLoading(true);

    //   "employee_id": scannedData["employee_id"],
    //   "employee_name": scannedData["employee_name"],
    //   "employee_designation": scannedData["employee_designation"],
    //   "profilepic": "base64 ${base64ImageValue.value}",
    //   "lat": "",
    //   "log": ""
    // };
    try {
      //
      var response = await apiService.postlikeRequest(payload: payload);

      String data = response;
      print(data);

      if (data == "Accepted") {
        // Fluttertoast.showToast(
        //   msg: data,
        // );

        // uploadImage();
        //here
      } else {
        Fluttertoast.showToast(
          msg: data,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Something went wrong",
      );
    } finally {
      addFormLoading(false);
    }
  }

  /////////////////////image upload
  Future<void> uploadImage(Map payload) async {
    addFormLoading(true);

    try {
      var response = await apiService.postRequestDonorSignupFormDatabloodBank(
          payload: payload, image: selectedImage.value!);

      Map data = jsonDecode(response);
      print(data);

      if (data["message"] == "Data saved successfully") {
        Fluttertoast.showToast(
          msg: data["message"],
        );

        // uploadImage();
        //here
      } else {
        Fluttertoast.showToast(
          msg: data["message"],
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Something went wrong",
      );
    } finally {
      addFormLoading(false);
    }
  }

///////////////////////////////////////////////////////
// Nursery :
//     1.Fixed Salaries
//             a. Emp. ID*
  TextEditingController FixedSalariesEmpidController = TextEditingController();
//             b. Emp. Name*
  TextEditingController FixedSalariesEmpnameController =
      TextEditingController();
//             c. Salary Amount*
  TextEditingController FixedSalariesSalaryAmountController =
      TextEditingController();
//             d. Remarks
  TextEditingController FixedSalariesRemarksController =
      TextEditingController();
//     2.Wages Salaries
//             a. Emp. ID*
  TextEditingController WagesSalariesEmpidController = TextEditingController();
//             b. Emp. Name*
  TextEditingController WagesSalariesEmpnameController =
      TextEditingController();
//             c. Salary Amount*
  TextEditingController WagesSalariesSalaryAmountController =
      TextEditingController();
//             d. Remarks
  TextEditingController WagesSalariesRemarksController =
      TextEditingController();
//     3. Salary Advance
//             a. Emp. ID*
  TextEditingController SalaryAdvanceEmpIDController = TextEditingController();
//             b. Emp. Name*
  TextEditingController SalaryAdvanceEmpNameController =
      TextEditingController();
//             c. Amount*
  TextEditingController SalaryAdvanceAmountController = TextEditingController();
//             d. Remarks
  TextEditingController SalaryAdvanceRemarksController =
      TextEditingController();
//     4.⁠ ⁠Loans
//             a. Emp. ID*
  TextEditingController loansEmpidController = TextEditingController();
//             b. Emp. Name*
  TextEditingController loansEmpnameController = TextEditingController();
//             c. Amount*
  TextEditingController loansAmountController = TextEditingController();
//             d. Remarks
  TextEditingController loansRemarksController = TextEditingController();
//     5.⁠ ⁠Staff Training Expenses
//             a. Amount*
  TextEditingController staffTrainingAmountController = TextEditingController();
//             b. Remarks
  TextEditingController staffTrainingRemarksController =
      TextEditingController();
//     6.⁠ ⁠Utilities
//             a. Amount*
// ignore: non_constant_identifier_names
  TextEditingController utiliteisAmountController = TextEditingController();
//             b. Remarks
  TextEditingController utiliteisRemarksController = TextEditingController();
//     7.⁠ ⁠Stationery
//             a. Amount*
  TextEditingController stationaneryAmountController = TextEditingController();
//             b. Remarks
  TextEditingController stationaneryremarksController = TextEditingController();
//     8.⁠ ⁠Food and Beverages
//             a. Amount*
  TextEditingController foodBeveragesAmountController = TextEditingController();
//             b. Remarks
  TextEditingController foodBeveragesremarksController =
      TextEditingController();
//     9.⁠ ⁠Groceries
//             a. Amount*
  TextEditingController groceriesBeveragesAmountController =
      TextEditingController();
//             b. Remarks
  TextEditingController groceriesremarksController = TextEditingController();
//     10.⁠ ⁠Water Supplie
//             a. Amount*
  TextEditingController watersuppliAmountController = TextEditingController();
//             b. Remarks
  TextEditingController watersuppliremarksController = TextEditingController();
//     11.⁠ ⁠Maintenance and Repairs
//             a. Amount*
  TextEditingController maintanaceRepairsAmountController =
      TextEditingController();
//             b. Remarks
  TextEditingController maintanaceRepairsRemarksController =
      TextEditingController();
//     12.⁠ ⁠Vehicle Maintenance
//             a. Amount*
  TextEditingController vehicleMaintenanceAmountController =
      TextEditingController();
//             b. Remarks
  TextEditingController vehicleMaintenanceRemarksController =
      TextEditingController();
//     13.⁠ ⁠Fuel Costs
//             a. Amount*
  TextEditingController fuelCostsAmountController = TextEditingController();
//             b. Remarks
  TextEditingController fuelCostsRemarksController = TextEditingController();
//     14.⁠ ⁠Miscellaneous
//             a. Amount*
  TextEditingController miscellaneousAmounrController = TextEditingController();
//             b. Remarks
  TextEditingController miscellaneousRemarksController =
      TextEditingController();
//     15.⁠ ⁠Other Expenses
//             a. Amount*
  TextEditingController otherExpensesAmountController = TextEditingController();
//             b. Remarks
  TextEditingController otherExpensesRemarksController =
      TextEditingController();

  TextEditingController otherCommentsController = TextEditingController();
///////////////////////////////////////////////////////////////////////////////
  // 5. Raw material
  TextEditingController rawmaterialAmountController = TextEditingController();
  //               a. Amount*
  TextEditingController rawmaterialRemarksController = TextEditingController();
  //               b. Remarks
  //       6.⁠ ⁠Sewing Machines
  TextEditingController sewingMachinesamountController =
      TextEditingController();
  //               a. Amount*
  TextEditingController sewingMachineRemarksController =
      TextEditingController();
  //               b. Remarks
  //       7.⁠ ⁠Tools
  TextEditingController toolsAmountController = TextEditingController();
  //               a. Amount*
  TextEditingController toolsRemarksController = TextEditingController();
  //               b. Remarks
  //       8.⁠ ⁠Machine Maintenance and Repairs
  TextEditingController machineMaintenanceandRepairsAmountController =
      TextEditingController();
  //               a. Amount*
  TextEditingController machineMaintenanceandRepairsRemarksController =
      TextEditingController();
  //               b. Remarks
  //       9.⁠ ⁠Rent and Utilities
  TextEditingController rentandUtilitiesAmountController =
      TextEditingController();
  //               a. Amount*
  TextEditingController rentandUtilitiesRemarksController =
      TextEditingController();
  //               b. Remarks
  //       10.⁠ ⁠Skills Training Cost
  TextEditingController skillsTrainingCostAmountController =
      TextEditingController();
  //               a. Amount*
  TextEditingController skillsTrainingCostRemarksController =
      TextEditingController();
  //               b. Remarks
  //       11.⁠ ⁠Transportation
  TextEditingController transportationAmountController =
      TextEditingController();
  //               a. Amount*
  TextEditingController transportationRemarksController =
      TextEditingController();
  //               b. Remarks
  //       12.⁠ ⁠Packaging
  TextEditingController packgingAmountController = TextEditingController();
  //               a. Amount
  TextEditingController packgingRemarksController = TextEditingController();
  //               b. Remarks
//////
  /////
  List employeesList = [
    {"email": "nursery@utthishtha.com", "password": "Utthishtha@123"},
    {"email": "soapsart@utthishtha.com", "password": "Utthishtha@123"},
    {"email": "ram123", "password": "ram123"},
    {"email": "skillart@utthishtha.com", "password": "Utthishtha@123"},
    {"email": "s@gmail.com", "password": "s123"},
  ];

  var userSignInLoading = false.obs;
  var isValidCredential = false.obs;
  void checkEmployee(Map credintials) {
    userSignInLoading(true);
    isValidCredential(false);
    for (int i = 0; i < employeesList.length; i++) {
      if (employeesList[i]["email"] == credintials["email"] &&
          employeesList[i]["password"] == credintials["password"]) {
        isValidCredential(true);
      }
    }

    if (isValidCredential == true) {
      Fluttertoast.showToast(
        msg: "Login Succesfully",
      );
      Get.toNamed(kHome);
    } else {
      Fluttertoast.showToast(
        msg: "Invalid Credentials",
      );
    }

    userSignInLoading(false);
  }

  ////////////////////////////////////////////////////////////

  ///////////////////////////////////////////////////////

  bool isPermissionGiven = false;

  //////
  // Scanapp controllers
  var scannedData = {}.obs;
  var base64ImageValue = "".obs; // Observed JSON object

  // void updateScannedData(String? data) {
  //   if (data != null) {
  //     try {
  //       scannedData.value = {'code': data};
  //     } catch (e) {
  //       scannedData.value = {'error': 'Invalid QR code'};
  //     }
  //   }
  // }

  ////////Coupons Api
  var checkinLoading = false.obs;
  var isCouponApplied = false.obs;
  var checkinData = "".obs;
  Future<void> employeesCheckIn() async {
    checkinLoading(true);
    var payload = {
      "employee_id": scannedData["employee_id"],
      "employee_name": scannedData["employee_name"],
      "employee_designation": scannedData["employee_designation"],
      "profilepic": "base64 ${base64ImageValue.value}",
      "lat": "",
      "log": ""
    };
    try {
      //
      var response = await apiService.postAuthRequest(payload: payload);

      String data = jsonDecode(response);
      print(data);

      if (data == "Accepted") {
        checkinData.value = data;

        Fluttertoast.showToast(
          msg: data,
        );

        debugPrint("object");
      } else {
        Fluttertoast.showToast(
          msg: data,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Something went wrong",
      );
    } finally {
      checkinLoading(false);
    }
  }
}
