import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:uthistaapp/untils/export_file.dart';
import 'dart:convert';
import 'dart:io';

class Embroiding extends StatefulWidget {
  const Embroiding({super.key});

  @override
  State<Embroiding> createState() => _EmbroidingState();
}

class _EmbroidingState extends State<Embroiding> {
  AuthController dashboardcontroller = Get.put(AuthController());

  final _formKey = GlobalKey<FormState>();
  final _formKeyNurseryFixed = GlobalKey<FormState>();
  bool _isNurseryFixedExpandCard = false;
  bool isNurseFixedSalary = false;
  //
  void togglefbSwitch(bool value) async {
    if (isNurseFixedSalary == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseFixedSalary = true;
        _isNurseryFixedExpandCard = true;
      });
    } else {
      setState(() {
        isNurseFixedSalary = false;
        _isNurseryFixedExpandCard = false;
      });
    }
  }

  // wages salaries
  bool _isNurseryWagesExpandCard = false;
  bool isNurseWagesSalary = false;
  final _formKeyNurseWagesSalary = GlobalKey<FormState>();
  void toggleWagesSwitch(bool value) async {
    if (isNurseWagesSalary == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseWagesSalary = true;
        _isNurseryWagesExpandCard = true;
      });
    } else {
      setState(() {
        isNurseWagesSalary = false;
        _isNurseryWagesExpandCard = false;
      });
    }
  }

  /// Salary advance
  bool _isNurserySalaryAdvanceExpandCard = false;
  bool isNurseSalaryAdvance = false;
  final _formKeyNurseSalaryAdvance = GlobalKey<FormState>();

  void toggleSalaryAdvanceSwitch(bool value) async {
    if (isNurseSalaryAdvance == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseSalaryAdvance = true;
        _isNurserySalaryAdvanceExpandCard = true;
      });
    } else {
      setState(() {
        isNurseSalaryAdvance = false;
        _isNurserySalaryAdvanceExpandCard = false;
      });
    }
  }

  // Loans
  bool _isNurseryLoansExpandCard = false;
  bool isNurseLoans = false;
  final _formKeyNurseLoans = GlobalKey<FormState>();
  void toggleLoansSwitch(bool value) async {
    if (isNurseLoans == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseLoans = true;
        _isNurseryLoansExpandCard = true;
      });
    } else {
      setState(() {
        isNurseLoans = false;
        _isNurseryLoansExpandCard = false;
      });
    }
  }

  // Staff training expenses
// s⁠taffTrainingExpenses
  bool _isNurserystafftrainingExpandCard = false;
  bool isNursestafftraining = false;
  final _formKeyStafftraining = GlobalKey<FormState>();
  //
  void togglestafftrainingSwitch(bool value) async {
    if (isNursestafftraining == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNursestafftraining = true;
        _isNurserystafftrainingExpandCard = true;
      });
    } else {
      setState(() {
        isNursestafftraining = false;
        _isNurserystafftrainingExpandCard = false;
      });
    }
  }

  // utilities
  bool _isNurseryUtilitiesExpandCard = false;
  bool isNurseUtilities = false;
  final _formKeyNurseryUtilities = GlobalKey<FormState>();
  void toggleUtilitiesSwitch(bool value) async {
    if (isNurseUtilities == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseUtilities = true;
        _isNurseryUtilitiesExpandCard = true;
      });
    } else {
      setState(() {
        isNurseUtilities = false;
        _isNurseryUtilitiesExpandCard = false;
      });
    }
  }

  // Stationary
  bool _isNurserystationaryExpandCard = false;
  bool isNurserystationary = false;
  final _formKeyNurseryStationary = GlobalKey<FormState>();
  void togglestationarySwitch(bool value) async {
    if (isNurserystationary == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurserystationary = true;
        _isNurserystationaryExpandCard = true;
      });
    } else {
      setState(() {
        isNurserystationary = false;
        _isNurserystationaryExpandCard = false;
      });
    }
  }

  // foodBeverages
  bool _isNurseryfoodBeveragesExpandCard = false;
  bool isNurseryfoodBeverages = false;
  final _formKeyFoodBeverages = GlobalKey<FormState>();
  void togglefoodBeveragesSwitch(bool value) async {
    if (isNurseryfoodBeverages == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryfoodBeverages = true;
        _isNurseryfoodBeveragesExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryfoodBeverages = false;
        _isNurseryfoodBeveragesExpandCard = false;
      });
    }
  }

  // foodBeverages
  bool _isNurseryGroceriesExpandCard = false;
  bool isNurseryGroceries = false;
  final _formKeyGroceries = GlobalKey<FormState>();
  //
  void toggleGroceriesSwitch(bool value) async {
    if (isNurseryGroceries == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryGroceries = true;
        _isNurseryGroceriesExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryGroceries = false;
        _isNurseryGroceriesExpandCard = false;
      });
    }
  }

  //  Watersuppli
  bool _isNurseryWaterSupplyExpandCard = false;
  bool isNurseryWaterSupply = false;
  final _formKeyWaterSuppli = GlobalKey<FormState>();
  //
  void toggleWatersupplySwitch(bool value) async {
    if (isNurseryWaterSupply == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryWaterSupply = true;
        _isNurseryWaterSupplyExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryWaterSupply = false;
        _isNurseryWaterSupplyExpandCard = false;
      });
    }
  }

  // maintenance an drepairs
  bool _isNurseryMaintenenceAndrepairsExpandCard = false;
  bool isNurseryMaintenenceAndrepairsSupply = false;
  final _formKeyMaintenenceAndrepairs = GlobalKey<FormState>();
  //
  void toggleMaintenenceAndrepairsSwitch(bool value) async {
    if (isNurseryMaintenenceAndrepairsSupply == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryMaintenenceAndrepairsSupply = true;
        _isNurseryMaintenenceAndrepairsExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryMaintenenceAndrepairsSupply = false;
        _isNurseryMaintenenceAndrepairsExpandCard = false;
      });
    }
  }

  // vehicle maintence
  bool _isNurseryVehiclemaintenceExpandCard = false;
  bool isNurseryVehicleMaintenanceSupply = false;
  final _formKeyNurseryVehicleMaintenance = GlobalKey<FormState>();
  //
  void toggleVehicleMaintenanceSwitch(bool value) async {
    if (isNurseryVehicleMaintenanceSupply == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryVehicleMaintenanceSupply = true;
        _isNurseryVehiclemaintenceExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryVehicleMaintenanceSupply = false;
        _isNurseryVehiclemaintenceExpandCard = false;
      });
    }
  }

  // Miscellaneous
  bool _isNurseryMiscellaneousExpandCard = false;
  bool isNurseryMiscellaneousSupply = false;
  final _formKeyNurseryMiscellaneous = GlobalKey<FormState>();
  //
  void toggleMiscellaneousSwitch(bool value) async {
    if (isNurseryMiscellaneousSupply == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryMiscellaneousSupply = true;
        _isNurseryMiscellaneousExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryMiscellaneousSupply = false;
        _isNurseryMiscellaneousExpandCard = false;
      });
    }
  }

  // Miscellaneous
  bool _isNurseryfuelCostsExpandCard = false;
  bool isNurseryfuelCosts = false;
  final _formKeyNurseryfuelCosts = GlobalKey<FormState>();
  //
  void togglefuelCostsSwitch(bool value) async {
    if (isNurseryfuelCosts == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryfuelCosts = true;
        _isNurseryfuelCostsExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryfuelCosts = false;
        _isNurseryfuelCostsExpandCard = false;
      });
    }
  }

  // othersexpenses

  bool _isNurseryothersexpensesExpandCard = false;
  bool isNurseryothersexpenses = false;
  final _formKeyNurseryOtherExpenses = GlobalKey<FormState>();
  //
  void toggleothersexpensesSwitch(bool value) async {
    if (isNurseryothersexpenses == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryothersexpenses = true;
        _isNurseryothersexpensesExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryothersexpenses = false;
        _isNurseryothersexpensesExpandCard = false;
      });
    }
  }
//
  //  5. Raw material
  //               a. Amount*
  //               b. Remarks
  //

  bool _isNurseryrawmaterialsExpandCard = false;
  bool isNurseryrawmaterialsexpenses = false;
  final _formKeyNurseryrawmaterialsExpenses = GlobalKey<FormState>();
  //
  void togglerawmaterialsSwitch(bool value) async {
    if (isNurseryrawmaterialsexpenses == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryrawmaterialsexpenses = true;
        _isNurseryrawmaterialsExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryrawmaterialsexpenses = false;
        _isNurseryrawmaterialsExpandCard = false;
      });
    }
  }

  //       6.⁠  sewingmachine
  //               a. Amount*
  //               b. Remarks
  bool _isNurserysewingmachineExpandCard = false;
  bool isNurserysewingmachineexpenses = false;
  final _formKeyNurserysewingmachineExpenses = GlobalKey<FormState>();
  //
  void togglesewingmachineSwitch(bool value) async {
    if (isNurserysewingmachineexpenses == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurserysewingmachineexpenses = true;
        _isNurserysewingmachineExpandCard = true;
      });
    } else {
      setState(() {
        isNurserysewingmachineexpenses = false;
        _isNurserysewingmachineExpandCard = false;
      });
    }
  }

  //       7.⁠ ⁠Tools
  //               a. Amount*
  //               b. Remarks
  bool _isNurserytoolsExpandCard = false;
  bool isNurserytools = false;
  final _formKeyNurserytoolsExpenses = GlobalKey<FormState>();
  //
  void toggletoolsSwitch(bool value) async {
    if (isNurserytools == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurserytools = true;
        _isNurserytoolsExpandCard = true;
      });
    } else {
      setState(() {
        isNurserytools = false;
        _isNurserytoolsExpandCard = false;
      });
    }
  }

  //       8.⁠ ⁠Machine Maintenance and Repairs machinemaintenncerepiars
  //               a. Amount*
  //               b. Remarks
  bool _isNurserymachinemaintenncerepiarsExpandCard = false;
  bool isNurserymachinemaintenncerepiars = false;
  final _formKeyNurserymachinemaintenncerepiarsExpenses =
      GlobalKey<FormState>();
  //
  void togglemachinemaintenncerepiarsSwitch(bool value) async {
    if (isNurserymachinemaintenncerepiars == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurserymachinemaintenncerepiars = true;
        _isNurserymachinemaintenncerepiarsExpandCard = true;
      });
    } else {
      setState(() {
        isNurserymachinemaintenncerepiars = false;
        _isNurserymachinemaintenncerepiarsExpandCard = false;
      });
    }
  }

  //       9.⁠ ⁠Rent and Utilities rentandutilities
  //               a. Amount*
  //               b. Remarks
  bool _isrentandutilitiesExpandCard = false;
  bool isNurseryrentandutilities = false;
  final _formKeyNurseryrentandutilitiesExpenses = GlobalKey<FormState>();
  //
  void togglerentandutilitiesSwitch(bool value) async {
    if (isNurseryrentandutilities == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryrentandutilities = true;
        _isrentandutilitiesExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryrentandutilities = false;
        _isrentandutilitiesExpandCard = false;
      });
    }
  }

  //       10.⁠ ⁠Skills Training Cost skillstrainingcost
  //               a. Amount*
  //               b. Remarks
  bool _isskillstrainingcostExpandCard = false;
  bool isNurseryskillstrainingcost = false;
  final _formKeyskillstrainingcostExpenses = GlobalKey<FormState>();
  //
  void toggleskillstrainingcostSwitch(bool value) async {
    if (isNurseryskillstrainingcost == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurseryskillstrainingcost = true;
        _isskillstrainingcostExpandCard = true;
      });
    } else {
      setState(() {
        isNurseryskillstrainingcost = false;
        _isskillstrainingcostExpandCard = false;
      });
    }
  }

  //       11.⁠ ⁠transportation
  //               a. Amount*
  //               b. Remarks
  bool _istrnasExpandCard = false;
  bool isNurserytranscost = false;
  final _formKeytranExpenses = GlobalKey<FormState>();
  //
  void togglestransportSwitch(bool value) async {
    if (isNurserytranscost == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        isNurserytranscost = true;
        _istrnasExpandCard = true;
      });
    } else {
      setState(() {
        isNurserytranscost = false;
        _istrnasExpandCard = false;
      });
    }
  }

  //       12.⁠ ⁠Packaging
  //               a. Amount*
  //               b. Remarks
  bool _ispackgingCard = false;
  bool ispackgingtranscost = false;
  final _formKeypackgingExpenses = GlobalKey<FormState>();
  //
  void togglepackgingSwitch(bool value) async {
    if (ispackgingtranscost == false) {
      // setState(() {
      //   _isNurseryFixedExpandCard = !_isNurseryFixedExpandCard;
      // });
      setState(() {
        ispackgingtranscost = true;
        _ispackgingCard = true;
      });
    } else {
      setState(() {
        ispackgingtranscost = false;
        _ispackgingCard = false;
      });
    }
  }

  //image
  var selectDate = "Select Date".obs;
  List social = ["Facebook", "Twitter", "LinkedIn", "Instagram"];
  String base64Image = "";
  String? selectedOption;
  bool showimagenullMessage = false;
  File? selectedImage;
  final List<String> CompanyList = [
    'cash',
    'online',
  ];

  String? selectedUserValue;
  Future<void> chooseImage(type) async {
    var image;
    if (type == "camera") {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
        imageQuality: 10,
      );
    } else {
      image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 10);
    }
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        base64Image = base64Encode(selectedImage!.readAsBytesSync());

        dashboardcontroller.updateSelectedImage(selectedImage!); //
        print(selectedImage!.readAsBytesSync().lengthInBytes);
        final kb = selectedImage!.readAsBytesSync().lengthInBytes / 1024;
        print(kb);
        final mb = kb / 1024;
        print(mb);
        print("ram b jk dslnkv flk dlkcdslc k");
        showimagenullMessage = false;
      });
    }
  }

  //
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(colors: [
            Klight_grey_twg,
            Klight_grey_twg,
            Klight_grey_twg,
            Klight_grey_twg,
            Klight_grey_twg,
            Klight_grey_twg
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          width: 1,
        ),
        color: Kwhite,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)),
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 2, bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 3, right: 3),
                  decoration: const BoxDecoration(
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                          colors: [
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Kwhite,
                            Klight_grey_twg
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      width: 1,
                    ),
                    color: Kwhite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      dashboardcontroller.selectedPublishedorScheduled ==
                              "Expenses"
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  dashboardcontroller
                                      .selectedPublishedorScheduled
                                      .value = "Expenses";
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    "Expenses",
                                    style: GoogleFonts.poppins(
                                        color: Kform_border_twg,
                                        fontSize: 15.sp,
                                        fontWeight: kFW400),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 2.h),
                                    height: 4,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                        color: Kform_border_twg,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                  )
                                ],
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  dashboardcontroller
                                      .selectedPublishedorScheduled
                                      .value = "Expenses";
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    "Expenses",
                                    style: GoogleFonts.poppins(
                                        color: kblack,
                                        fontSize: 15.sp,
                                        fontWeight: kFW400),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 2.h),
                                    height: 4,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                        color: Kwhite,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                  )
                                ],
                              ),
                            ),
                      dashboardcontroller.selectedPublishedorScheduled ==
                              "Others"
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  dashboardcontroller
                                      .selectedPublishedorScheduled
                                      .value = "Others";
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    "Others",
                                    style: GoogleFonts.poppins(
                                        color: Kform_border_twg,
                                        fontSize: 15.sp,
                                        fontWeight: kFW400),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 2.h),
                                    height: 4,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        color: Kform_border_twg,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                  )
                                ],
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  dashboardcontroller
                                      .selectedPublishedorScheduled
                                      .value = "Others";
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    "Others",
                                    style: GoogleFonts.poppins(
                                        color: kblack,
                                        fontSize: 15.sp,
                                        fontWeight: kFW400),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 2.h),
                                    height: 4,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        color: Kwhite,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                  )
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
                Positioned(bottom: 0, child: Divider()),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            dashboardcontroller.selectedPublishedorScheduled == "Others"
                ? SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Comment",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: KdarkText,
                              fontSize: kEighteenFont,
                              fontWeight: kFW500),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomFormFields(
                          ontap: () {},
                          enabled: true,
                          controller:
                              dashboardcontroller.otherCommentsController,
                          labelColor: KText,
                          obscureText: false,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),
                          fontSize: kFourteenFont,
                          fontWeight: FontWeight.w500,
                          hintText: "Enter comment",
                          maxLines: 1,
                          readOnly: false,
                          label: "comment",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter comment';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Upload Image",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: KdarkText,
                              fontSize: kEighteenFont,
                              fontWeight: kFW500),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        selectedImage != null
                            ? Container(
                                padding: EdgeInsets.all(12),
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Klight_grey_twg, width: 1),
                                  color: Kwhite,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.r),
                                      child: Image.file(
                                        selectedImage!,
                                        width: double.infinity,
                                        // width: 270.w,
                                        height: 200.h,
                                        //   fit: BoxFit.cover,
                                        fit: BoxFit.cover,
                                        // height: 100.h,
                                        // width: 100.w,
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      right: 5,
                                      top: 5,
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectedImage = null;
                                            });
                                            setState(() {});
                                          },
                                          child: Icon(Icons.cancel_outlined)
                                          // Text
                                          // ('X',
                                          //     maxLines: 2,
                                          //     overflow: TextOverflow.ellipsis,
                                          //     style: GoogleFonts.poppins(
                                          //         fontSize: 20.sp,
                                          //         fontWeight: kFW600,
                                          //         color: Klight_grey_twg)),
                                          ),
                                    )
                                  ],
                                ),
                              )
                            : SizedBox(),

                        CustomButton(
                            borderRadius: BorderRadius.circular(5.r),
                            Color: Kform_border_twg,
                            textColor: Kwhite,
                            height: 40,
                            width: double.infinity,
                            label: "Upload Image",
                            fontSize: kSixteenFont,
                            fontWeight: kFW600,
                            isLoading: false,
                            onTap: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20)),
                                  ),
                                  backgroundColor: Kbackground,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Kbackground,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        height: 100.h,
                                        padding: EdgeInsets.only(top: 20.h),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                chooseImage("Gallery");
                                                Navigator.pop(context);
                                              },
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.image_outlined,
                                                    color: Kblue_twg,
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text('Gallery',
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  kFW700,
                                                              color:
                                                                  KdarkText)),
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                chooseImage("camera");
                                                Navigator.pop(context);
                                              },
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.camera_alt_outlined,
                                                    color: Kblue_twg,
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Text('camera',
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  kFW700,
                                                              color:
                                                                  KdarkText)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }),
                        Obx(
                          () => dashboardcontroller.addFormLoading == true
                              ? Center(
                                  child: CircularProgressIndicator(
                                    color: Kform_border_twg,
                                  ),
                                )
                              : CustomButton(
                                  margin: EdgeInsets.only(top: 36.h),
                                  borderRadius: BorderRadius.circular(8.r),
                                  Color: Kform_border_twg,
                                  textColor: Kwhite,
                                  height: 40,
                                  width: double.infinity,
                                  label: "Submit",
                                  fontSize: kSixteenFont,
                                  fontWeight: kFW700,
                                  isLoading: false,
                                  onTap: () {
                                    DateTime now = DateTime.now();
                                    String formattedDate =
                                        DateFormat("dd-MM-yyyy").format(now);
                                    String formattedTime =
                                        DateFormat("hh:mm a").format(now);
                                    setState(() {
                                      dashboardcontroller.today.value =
                                          formattedDate + " " + formattedTime;
                                      print(dashboardcontroller.today);
                                    });
                                    var payloadem =
                                        // "email": dashboardcontroller
                                        //     .UserEmailSignInController.text,
                                        // "password": dashboardcontroller
                                        //     .UserEmailPasswordController.text
                                        {
                                      "Embroidery": {
                                        //

                                        // donot remove
                                        "Comments": {
                                          "comment": dashboardcontroller
                                              .otherCommentsController.text,

                                          // "fields": [
                                          //   {"name": "Amount", "required": true},
                                          //   {"name": "Remarks", "required": false}
                                          // ]
                                        },
                                        "Time": {
                                          "createdTime":
                                              dashboardcontroller.today.value,

                                          // "fields": [
                                          //   {"name": "Amount", "required": true},
                                          //   {"name": "Remarks", "required": false}
                                          // ]
                                        },
                                        "User": {
                                          "email": dashboardcontroller
                                              .userEmail.value,

                                          // "fields": [
                                          //   {"name": "Amount", "required": true},
                                          //   {"name": "Remarks", "required": false}
                                          // ]
                                        },
                                        //  "createdTime": today.value
                                      }
                                    };
                                    // if (selectedImage != null) {
                                    //   dashboardcontroller
                                    //       .addFormCommment(payload);
                                    var payload = {
                                      'formType': "embroidery",
                                      'remarks': dashboardcontroller
                                          .otherCommentsController.text,
                                      'email':
                                          dashboardcontroller.userEmail.value,
                                    };

                                    if (selectedImage != null) {
                                      // dashboardcontroller
                                      //     .addFormCommment(payload);
                                      dashboardcontroller.uploadImage(payload);
                                      dashboardcontroller
                                          .otherCommentsController
                                          .clear();
                                    } else {
                                      Fluttertoast.showToast(
                                        msg: "please upload image",
                                      );
                                    }
                                    // if (_formKey.currentState!.validate()) {
                                    //   dashboardcontroller.addForm(payload);
                                    // }
                                  }),
                        ),
                        /////
                      ],
                    ),
                  )
                : Form(
                    key: _formKey,
                    // autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fixed Salaries",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseFixedSalary == false
                                ? InkWell(
                                    onTap: () {
                                      togglefbSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      togglefbSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isNurseryFixedExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeyNurseryFixed,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .FixedSalariesEmpidController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter ID",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Emp. ID*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter ID';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .FixedSalariesEmpnameController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Name",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Emp. Name*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please Enter Name';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .FixedSalariesSalaryAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Salary Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosenfixedSalaryAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosenfixedSalaryAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .fixedSalaryAmountIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .FixedSalariesRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            // if (value!.isEmpty) {
                                            //   return 'Please Enter Remarks';
                                            // }
                                            return null;
                                          },
                                        ),
                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadfs =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        //
                                                        //                              var choosenfixedSalaryAmount = 'cash'.obs;
                                                        // TextEditingController fixedSalaryAmountIDController = TextEditingController();
                                                        //
                                                        "Fixed Salaries": {
                                                          "Emp_ID":
                                                              dashboardcontroller
                                                                  .FixedSalariesEmpidController
                                                                  .text,
                                                          "Emp_Name":
                                                              dashboardcontroller
                                                                  .FixedSalariesEmpnameController
                                                                  .text,
                                                          "Salary_Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .FixedSalariesSalaryAmountController
                                                                      .text) ??
                                                              0,

                                                          ///
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosenfixedSalaryAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .fixedSalaryAmountIDController
                                                                  .text,
                                                          //
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .FixedSalariesRemarksController
                                                                  .text,
                                                          // "fields": [ dashboardcontroller.FixedSalariesRemarksController
                                                          //  // {"Emp_ID": },
                                                          //   {"name": "Emp_Name", "required": true},
                                                          //   {"name": "Salary_Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //
                                                        //                              var choosenwagesSalaryAmount = 'cash'.obs;
                                                        // TextEditingController wagesSalaryAmountIDController = TextEditingController();

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'empId': dashboardcontroller
                                                          .FixedSalariesEmpidController
                                                          .text,
                                                      'empName': dashboardcontroller
                                                          .FixedSalariesEmpnameController
                                                          .text,
                                                      'amount': dashboardcontroller
                                                          .FixedSalariesSalaryAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosenfixedSalaryAmount
                                                              .value,
                                                      'categoryType':
                                                          'fixedsalaries',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .FixedSalariesRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .fixedSalaryAmountIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });

                                                    if (_formKeyNurseryFixed
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addForm(payload);
                                                      dashboardcontroller
                                                              .FixedSalariesEmpidController
                                                          .clear();
                                                      dashboardcontroller
                                                              .FixedSalariesEmpnameController
                                                          .clear();
                                                      dashboardcontroller
                                                              .FixedSalariesSalaryAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                              .FixedSalariesRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                      ]),
                                ))),
                        //
                        isNurseFixedSalary == false ? Divider() : SizedBox(),

                        ////////////// wages
                        SizedBox(
                          height: 20.h,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Wages Salaries",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseWagesSalary == false
                                ? InkWell(
                                    onTap: () {
                                      toggleWagesSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      toggleWagesSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isNurseryWagesExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                    key: _formKeyNurseWagesSalary,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Divider(),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .WagesSalariesEmpidController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter ID",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Emp. ID*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter ID';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .WagesSalariesEmpnameController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Name",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Emp. Name*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please Enter Name';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            keyboardType: TextInputType.number,
                                            controller: dashboardcontroller
                                                .WagesSalariesSalaryAmountController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Amount",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Salary Amount*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter amount';
                                              }
                                              return null;
                                            },
                                          ),
                                          // drop down
                                          //             /  var choosenwagesSalaryAmount = 'cash'.obs;
                                          // TextEditingController wagesSalaryAmountIDController = TextEditingController();
                                          ///////////          //dropdown///////////////////////////////////////////////
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Text(
                                            "Payment mode",
                                            style: GoogleFonts.poppins(
                                                color: kblack,
                                                fontSize: kSixteenFont,
                                                fontWeight: kFW400),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Kwhite,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        kblack.withOpacity(0.2),
                                                    blurRadius: 2.r,
                                                    offset: Offset(1, 1),
                                                    spreadRadius: 1.r,
                                                  )
                                                ]),
                                            child: DropdownButtonFormField2<
                                                String>(
                                              isExpanded: true,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                disabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Kform_border_twg,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Kform_border_twg,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 8),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              hint: Text(
                                                'Select mode',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: KTextgery.withOpacity(
                                                      0.5),
                                                ),
                                              ),
                                              items: CompanyList.map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  )).toList(),
                                              validator: (value) {
                                                // if (value == null) {
                                                //   return 'Please select mode';
                                                // }
                                                return null;
                                              },
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedUserValue =
                                                      value.toString();

                                                  dashboardcontroller
                                                      .choosenwagesSalaryAmount
                                                      .value = value.toString();

                                                  setState(() {});
                                                });
                                              },
                                              onSaved: (value) {
                                                selectedUserValue =
                                                    value.toString();
                                                print(selectedUserValue);
                                                setState(() {});
                                              },
                                              buttonStyleData:
                                                  const ButtonStyleData(
                                                padding:
                                                    EdgeInsets.only(right: 8),
                                              ),
                                              iconStyleData: IconStyleData(
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color:
                                                      kblack.withOpacity(0.6),
                                                ),
                                                iconSize: 24,
                                              ),
                                              dropdownStyleData:
                                                  DropdownStyleData(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              menuItemStyleData:
                                                  const MenuItemStyleData(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16),
                                              ),
                                            ),
                                          ),
                                          //id
                                          // online
                                          dashboardcontroller
                                                      .choosenwagesSalaryAmount ==
                                                  "online"
                                              ? Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10.h),
                                                  child: CustomFormFields(
                                                    ontap: () {},
                                                    enabled: true,
                                                    controller: dashboardcontroller
                                                        .wagesSalaryAmountIDController,
                                                    labelColor: KText,
                                                    obscureText: false,
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 16,
                                                            horizontal: 8),
                                                    fontSize: kFourteenFont,
                                                    fontWeight: FontWeight.w500,
                                                    hintText: "Enter Txn ID",
                                                    maxLines: 1,
                                                    readOnly: false,
                                                    label: "Transaction ID",
                                                    validator: (value) {
                                                      // if (value!.isEmpty) {
                                                      //   return 'Please Enter Remarks';
                                                      // }
                                                      return null;
                                                    },
                                                  ),
                                                )
                                              : SizedBox(),

                                          //////////////////////////////////////////////////////drop down end////
                                          ///
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .WagesSalariesRemarksController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Remarks",
                                            maxLines: 4,
                                            readOnly: false,
                                            label: "Remarks",
                                            validator: (value) {
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Obx(
                                            () => dashboardcontroller
                                                        .addFormLoading ==
                                                    true
                                                ? Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Kform_border_twg,
                                                    ),
                                                  )
                                                : CustomButton(
                                                    margin: EdgeInsets.only(
                                                        top: 36.h),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.r),
                                                    Color: Kform_border_twg,
                                                    textColor: Kwhite,
                                                    height: 40,
                                                    width: double.infinity,
                                                    label: "Submit",
                                                    fontSize: kSixteenFont,
                                                    fontWeight: kFW700,
                                                    isLoading: false,
                                                    onTap: () {
                                                      DateTime now =
                                                          DateTime.now();
                                                      String formattedDate =
                                                          DateFormat(
                                                                  "dd-MM-yyyy")
                                                              .format(now);
                                                      String formattedTime =
                                                          DateFormat("hh:mm a")
                                                              .format(now);
                                                      setState(() {
                                                        dashboardcontroller
                                                                .today.value =
                                                            formattedDate +
                                                                " " +
                                                                formattedTime;
                                                        print(
                                                            dashboardcontroller
                                                                .today);
                                                      });
                                                      var payloadws =
                                                          // "email": dashboardcontroller
                                                          //     .UserEmailSignInController.text,
                                                          // "password": dashboardcontroller
                                                          //     .UserEmailPasswordController.text
                                                          {
                                                        "Embroidery": {
                                                          "Wages Salaries": {
                                                            //ok
                                                            "Emp_ID":
                                                                dashboardcontroller
                                                                    .WagesSalariesEmpidController
                                                                    .text,
                                                            "Emp_Name":
                                                                dashboardcontroller
                                                                    .WagesSalariesEmpnameController
                                                                    .text,
                                                            "Salary_Amount":
                                                                int.tryParse(dashboardcontroller
                                                                        .WagesSalariesSalaryAmountController
                                                                        .text) ??
                                                                    0,
                                                            "Payment_Mode":
                                                                dashboardcontroller
                                                                    .choosenwagesSalaryAmount
                                                                    .value,
                                                            "Transaction_Id":
                                                                dashboardcontroller
                                                                    .wagesSalaryAmountIDController
                                                                    .text,
                                                            "Remarks":
                                                                dashboardcontroller
                                                                    .WagesSalariesRemarksController
                                                                    .text,
                                                            // "fields": [
                                                            //   {"name": "Emp_ID", "required": true},
                                                            //   {"name": "Emp_Name", "required": true},
                                                            //   {"name": "Salary_Amount", "required": true},
                                                            //   {"name": "Remarks", "required": false}
                                                            // ]
                                                          },

                                                          // "Comments": {
                                                          //   "comment": dashboardcontroller
                                                          //       .otherCommentsController.text,

                                                          //   // "fields": [
                                                          //   //   {"name": "Amount", "required": true},
                                                          //   //   {"name": "Remarks", "required": false}
                                                          //   // ]
                                                          // },
                                                          "Time": {
                                                            "createdTime":
                                                                dashboardcontroller
                                                                    .today
                                                                    .value,

                                                            // "fields": [
                                                            //   {"name": "Amount", "required": true},
                                                            //   {"name": "Remarks", "required": false}
                                                            // ]
                                                          },
                                                          "User": {
                                                            "email":
                                                                dashboardcontroller
                                                                    .userEmail
                                                                    .value,

                                                            // "fields": [
                                                            //   {"name": "Amount", "required": true},
                                                            //   {"name": "Remarks", "required": false}
                                                            // ]
                                                          },
                                                          //  "createdTime": today.value
                                                        }
                                                      };
                                                      var payload = {
                                                        'empId': dashboardcontroller
                                                            .WagesSalariesEmpidController
                                                            .text,
                                                        'empName':
                                                            dashboardcontroller
                                                                .WagesSalariesEmpnameController
                                                                .text,
                                                        'amount':
                                                            dashboardcontroller
                                                                .WagesSalariesSalaryAmountController
                                                                .text,
                                                        'paymentMode':
                                                            dashboardcontroller
                                                                .choosenwagesSalaryAmount
                                                                .value,
                                                        'categoryType':
                                                            ' wagessalaries',
                                                        'formType':
                                                            "embroidery",
                                                        'remarks':
                                                            dashboardcontroller
                                                                .WagesSalariesRemarksController
                                                                .text,
                                                        'transcationId':
                                                            dashboardcontroller
                                                                .wagesSalaryAmountIDController
                                                                .text,
                                                        'email':
                                                            dashboardcontroller
                                                                .userEmail
                                                                .value,
                                                      };
                                                      setState(() {
                                                        dashboardcontroller
                                                            .updateSelectedImage(
                                                                null);
                                                      });

                                                      if (_formKeyNurseWagesSalary
                                                          .currentState!
                                                          .validate()) {
                                                        dashboardcontroller
                                                            .addForm(payload);
                                                        dashboardcontroller
                                                                .WagesSalariesEmpidController
                                                            .clear();
                                                        dashboardcontroller
                                                                .WagesSalariesEmpnameController
                                                            .clear();
                                                        dashboardcontroller
                                                                .WagesSalariesSalaryAmountController
                                                            .clear();
                                                        dashboardcontroller
                                                            .wagesSalaryAmountIDController
                                                            .clear();

                                                        dashboardcontroller
                                                                .WagesSalariesRemarksController
                                                            .clear();
                                                      }

                                                      // if (_formKey.currentState!.validate()) {
                                                      //   dashboardcontroller.addForm(payload);
                                                      // }
                                                    }),
                                          ),
                                        ])))),
                        isNurseWagesSalary == false ? Divider() : SizedBox(),
                        // Salary Advance
                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //   "Salary Advance",
                        //   textAlign: TextAlign.center,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Salary Advance",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseSalaryAdvance == false
                                ? InkWell(
                                    onTap: () {
                                      toggleSalaryAdvanceSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      toggleSalaryAdvanceSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),

                        ExpandableSection(
                            expand: _isNurserySalaryAdvanceExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                    key: _formKeyNurseSalaryAdvance,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Divider(),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .SalaryAdvanceEmpIDController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter ID",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Emp. ID*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter ID';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .SalaryAdvanceEmpNameController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Name",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Emp. Name*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please Enter Name';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            keyboardType: TextInputType.number,
                                            controller: dashboardcontroller
                                                .SalaryAdvanceAmountController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Amount",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Amount*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter amount';
                                              }
                                              return null;
                                            },
                                          ),

                                          ////Salary Advance dropdoen
                                          ///  var choosenSalaryAdvanceAmount = 'cash'.obs;
                                          // TextEditingController choosenSalaryAdvanceAmountIDController =
                                          //     TextEditingController();
                                          ///////////          //dropdown///////////////////////////////////////////////
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Text(
                                            "Payment mode",
                                            style: GoogleFonts.poppins(
                                                color: kblack,
                                                fontSize: kSixteenFont,
                                                fontWeight: kFW400),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Kwhite,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        kblack.withOpacity(0.2),
                                                    blurRadius: 2.r,
                                                    offset: Offset(1, 1),
                                                    spreadRadius: 1.r,
                                                  )
                                                ]),
                                            child: DropdownButtonFormField2<
                                                String>(
                                              isExpanded: true,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                disabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Kform_border_twg,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Kform_border_twg,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 8),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              hint: Text(
                                                'Select mode',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: KTextgery.withOpacity(
                                                      0.5),
                                                ),
                                              ),
                                              items: CompanyList.map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  )).toList(),
                                              validator: (value) {
                                                // if (value == null) {
                                                //   return 'Please select mode';
                                                // }
                                                return null;
                                              },
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedUserValue =
                                                      value.toString();

                                                  dashboardcontroller
                                                      .choosenSalaryAdvanceAmount
                                                      .value = value.toString();

                                                  setState(() {});
                                                });
                                              },
                                              onSaved: (value) {
                                                selectedUserValue =
                                                    value.toString();
                                                print(selectedUserValue);
                                                setState(() {});
                                              },
                                              buttonStyleData:
                                                  const ButtonStyleData(
                                                padding:
                                                    EdgeInsets.only(right: 8),
                                              ),
                                              iconStyleData: IconStyleData(
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color:
                                                      kblack.withOpacity(0.6),
                                                ),
                                                iconSize: 24,
                                              ),
                                              dropdownStyleData:
                                                  DropdownStyleData(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              menuItemStyleData:
                                                  const MenuItemStyleData(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16),
                                              ),
                                            ),
                                          ),
                                          //id
                                          // online
                                          dashboardcontroller
                                                      .choosenSalaryAdvanceAmount ==
                                                  "online"
                                              ? Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10.h),
                                                  child: CustomFormFields(
                                                    ontap: () {},
                                                    enabled: true,
                                                    controller: dashboardcontroller
                                                        .choosenSalaryAdvanceAmountIDController,
                                                    labelColor: KText,
                                                    obscureText: false,
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 16,
                                                            horizontal: 8),
                                                    fontSize: kFourteenFont,
                                                    fontWeight: FontWeight.w500,
                                                    hintText: "Enter Txn ID",
                                                    maxLines: 1,
                                                    readOnly: false,
                                                    label: "Transaction ID",
                                                    validator: (value) {
                                                      // if (value!.isEmpty) {
                                                      //   return 'Please Enter Remarks';
                                                      // }
                                                      return null;
                                                    },
                                                  ),
                                                )
                                              : SizedBox(),

                                          //////////////////////////////////////////////////////drop down end////

                                          ///
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .SalaryAdvanceRemarksController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Remarks",
                                            maxLines: 4,
                                            readOnly: false,
                                            label: "Remarks",
                                            validator: (value) {
                                              return null;
                                            },
                                          ),
                                          Obx(
                                            () => dashboardcontroller
                                                        .addFormLoading ==
                                                    true
                                                ? Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Kform_border_twg,
                                                    ),
                                                  )
                                                : CustomButton(
                                                    margin: EdgeInsets.only(
                                                        top: 36.h),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.r),
                                                    Color: Kform_border_twg,
                                                    textColor: Kwhite,
                                                    height: 40,
                                                    width: double.infinity,
                                                    label: "Submit",
                                                    fontSize: kSixteenFont,
                                                    fontWeight: kFW700,
                                                    isLoading: false,
                                                    onTap: () {
                                                      DateTime now =
                                                          DateTime.now();
                                                      String formattedDate =
                                                          DateFormat(
                                                                  "dd-MM-yyyy")
                                                              .format(now);
                                                      String formattedTime =
                                                          DateFormat("hh:mm a")
                                                              .format(now);
                                                      setState(() {
                                                        dashboardcontroller
                                                                .today.value =
                                                            formattedDate +
                                                                " " +
                                                                formattedTime;
                                                        print(
                                                            dashboardcontroller
                                                                .today);
                                                      });
                                                      var payloadsd =
                                                          // "email": dashboardcontroller
                                                          //     .UserEmailSignInController.text,
                                                          // "password": dashboardcontroller
                                                          //     .UserEmailPasswordController.text
                                                          {
                                                        "Embroidery": {
                                                          "Salary Advance": {
                                                            "Emp_ID":
                                                                dashboardcontroller
                                                                    .SalaryAdvanceEmpIDController
                                                                    .text,
                                                            "Emp_Name":
                                                                dashboardcontroller
                                                                    .SalaryAdvanceEmpNameController
                                                                    .text,
                                                            "Amount": int.tryParse(
                                                                    dashboardcontroller
                                                                        .SalaryAdvanceAmountController
                                                                        .text) ??
                                                                0,
                                                            //
                                                            ///
                                                            "Payment_Mode":
                                                                dashboardcontroller
                                                                    .choosenSalaryAdvanceAmount
                                                                    .value,
                                                            "Transaction_Id":
                                                                dashboardcontroller
                                                                    .choosenSalaryAdvanceAmountIDController
                                                                    .text,
                                                            //
                                                            //
                                                            "Remarks":
                                                                dashboardcontroller
                                                                    .SalaryAdvanceRemarksController
                                                                    .text,
                                                          },
                                                          //

                                                          "Time": {
                                                            "createdTime":
                                                                dashboardcontroller
                                                                    .today
                                                                    .value,

                                                            // "fields": [
                                                            //   {"name": "Amount", "required": true},
                                                            //   {"name": "Remarks", "required": false}
                                                            // ]
                                                          },
                                                          "User": {
                                                            "email":
                                                                dashboardcontroller
                                                                    .userEmail
                                                                    .value,

                                                            // "fields": [
                                                            //   {"name": "Amount", "required": true},
                                                            //   {"name": "Remarks", "required": false}
                                                            // ]
                                                          },
                                                          //  "createdTime": today.value
                                                        }
                                                      };
                                                      var payload = {
                                                        'empId': dashboardcontroller
                                                            .SalaryAdvanceEmpIDController
                                                            .text,
                                                        'empName':
                                                            dashboardcontroller
                                                                .SalaryAdvanceEmpNameController
                                                                .text,
                                                        'amount':
                                                            dashboardcontroller
                                                                .SalaryAdvanceAmountController
                                                                .text,
                                                        'paymentMode':
                                                            dashboardcontroller
                                                                .choosenSalaryAdvanceAmount
                                                                .value,
                                                        'categoryType':
                                                            'salaryadvance',
                                                        'formType':
                                                            "embroidery",
                                                        'remarks':
                                                            dashboardcontroller
                                                                .SalaryAdvanceRemarksController
                                                                .text,
                                                        'transcationId':
                                                            dashboardcontroller
                                                                .choosenSalaryAdvanceAmountIDController
                                                                .text,
                                                        'email':
                                                            dashboardcontroller
                                                                .userEmail
                                                                .value,
                                                      };
                                                      setState(() {
                                                        dashboardcontroller
                                                            .updateSelectedImage(
                                                                null);
                                                      });
                                                      if (_formKeyNurseSalaryAdvance
                                                          .currentState!
                                                          .validate()) {
                                                        dashboardcontroller
                                                            .addForm(payload);
                                                        dashboardcontroller
                                                                .SalaryAdvanceEmpIDController
                                                            .clear();
                                                        dashboardcontroller
                                                                .SalaryAdvanceEmpNameController
                                                            .clear();
                                                        dashboardcontroller
                                                                .SalaryAdvanceAmountController
                                                            .clear();
                                                        dashboardcontroller
                                                            .choosenSalaryAdvanceAmountIDController
                                                            .clear();
                                                        dashboardcontroller
                                                                .SalaryAdvanceRemarksController
                                                            .clear();
                                                      }

                                                      // if (_formKey.currentState!.validate()) {
                                                      //   dashboardcontroller.addForm(payload);
                                                      // }
                                                    }),
                                          ),
                                        ])))),
                        isNurseSalaryAdvance == false ? Divider() : SizedBox(),

                        // ⁠Loans
                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //
                        //   textAlign: TextAlign.center,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Loans",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseLoans == false
                                ? InkWell(
                                    onTap: () {
                                      toggleLoansSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      toggleLoansSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),

                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isNurseryLoansExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                    key: _formKeyNurseLoans,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Divider(),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .loansEmpidController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter ID",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Emp. ID*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter ID';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .loansEmpnameController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Name",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Emp. Name*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please Enter Name';
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            keyboardType: TextInputType.number,
                                            controller: dashboardcontroller
                                                .loansAmountController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Amount",
                                            maxLines: 1,
                                            readOnly: false,
                                            label: "Amount*",
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter amount';
                                              }
                                              return null;
                                            },
                                          ),

                                          // loans drop down
                                          //             var choosenLoanAmount = 'cash'.obs;
                                          // TextEditingController choosenLoanAmountIDController = TextEditingController();

                                          ///////////          //dropdown///////////////////////////////////////////////
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Text(
                                            "Payment mode",
                                            style: GoogleFonts.poppins(
                                                color: kblack,
                                                fontSize: kSixteenFont,
                                                fontWeight: kFW400),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Kwhite,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        kblack.withOpacity(0.2),
                                                    blurRadius: 2.r,
                                                    offset: Offset(1, 1),
                                                    spreadRadius: 1.r,
                                                  )
                                                ]),
                                            child: DropdownButtonFormField2<
                                                String>(
                                              isExpanded: true,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                disabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Kform_border_twg,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Kform_border_twg,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.r),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal: 8),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              hint: Text(
                                                'Select mode',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: KTextgery.withOpacity(
                                                      0.5),
                                                ),
                                              ),
                                              items: CompanyList.map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  )).toList(),
                                              validator: (value) {
                                                // if (value == null) {
                                                //   return 'Please select mode';
                                                // }
                                                return null;
                                              },
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedUserValue =
                                                      value.toString();

                                                  dashboardcontroller
                                                      .choosenLoanAmount
                                                      .value = value.toString();

                                                  setState(() {});
                                                });
                                              },
                                              onSaved: (value) {
                                                selectedUserValue =
                                                    value.toString();
                                                print(selectedUserValue);
                                                setState(() {});
                                              },
                                              buttonStyleData:
                                                  const ButtonStyleData(
                                                padding:
                                                    EdgeInsets.only(right: 8),
                                              ),
                                              iconStyleData: IconStyleData(
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color:
                                                      kblack.withOpacity(0.6),
                                                ),
                                                iconSize: 24,
                                              ),
                                              dropdownStyleData:
                                                  DropdownStyleData(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                              ),
                                              menuItemStyleData:
                                                  const MenuItemStyleData(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16),
                                              ),
                                            ),
                                          ),
                                          //id
                                          // online
                                          dashboardcontroller
                                                      .choosenLoanAmount ==
                                                  "online"
                                              ? Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10.h),
                                                  child: CustomFormFields(
                                                    ontap: () {},
                                                    enabled: true,
                                                    controller: dashboardcontroller
                                                        .choosenLoanAmountIDController,
                                                    labelColor: KText,
                                                    obscureText: false,
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 16,
                                                            horizontal: 8),
                                                    fontSize: kFourteenFont,
                                                    fontWeight: FontWeight.w500,
                                                    hintText: "Enter Txn ID",
                                                    maxLines: 1,
                                                    readOnly: false,
                                                    label: "Transaction ID",
                                                    validator: (value) {
                                                      // if (value!.isEmpty) {
                                                      //   return 'Please Enter Remarks';
                                                      // }
                                                      return null;
                                                    },
                                                  ),
                                                )
                                              : SizedBox(),

                                          //////////////////////////////////////////////////////drop down end////
                                          //
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          CustomFormFields(
                                            ontap: () {},
                                            enabled: true,
                                            controller: dashboardcontroller
                                                .loansRemarksController,
                                            labelColor: KText,
                                            obscureText: false,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 8),
                                            fontSize: kFourteenFont,
                                            fontWeight: FontWeight.w500,
                                            hintText: "Enter Remarks",
                                            maxLines: 4,
                                            readOnly: false,
                                            label: "Remarks",
                                            validator: (value) {
                                              return null;
                                            },
                                          ),
                                          // _formKeyNurseLoans
                                          Obx(
                                            () => dashboardcontroller
                                                        .addFormLoading ==
                                                    true
                                                ? Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Kform_border_twg,
                                                    ),
                                                  )
                                                : CustomButton(
                                                    margin: EdgeInsets.only(
                                                        top: 36.h),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.r),
                                                    Color: Kform_border_twg,
                                                    textColor: Kwhite,
                                                    height: 40,
                                                    width: double.infinity,
                                                    label: "Submit",
                                                    fontSize: kSixteenFont,
                                                    fontWeight: kFW700,
                                                    isLoading: false,
                                                    onTap: () {
                                                      DateTime now =
                                                          DateTime.now();
                                                      String formattedDate =
                                                          DateFormat(
                                                                  "dd-MM-yyyy")
                                                              .format(now);
                                                      String formattedTime =
                                                          DateFormat("hh:mm a")
                                                              .format(now);
                                                      setState(() {
                                                        dashboardcontroller
                                                                .today.value =
                                                            formattedDate +
                                                                " " +
                                                                formattedTime;
                                                        print(
                                                            dashboardcontroller
                                                                .today);
                                                      });
                                                      var payloadln =
                                                          // "email": dashboardcontroller
                                                          //     .UserEmailSignInController.text,
                                                          // "password": dashboardcontroller
                                                          //     .UserEmailPasswordController.text
                                                          {
                                                        "Embroidery": {
                                                          "Loans": {
                                                            "Emp_ID":
                                                                dashboardcontroller
                                                                    .loansEmpidController
                                                                    .text,
                                                            "Emp_Name":
                                                                dashboardcontroller
                                                                    .loansEmpnameController
                                                                    .text,
                                                            "Amount": int.tryParse(
                                                                    dashboardcontroller
                                                                        .loansAmountController
                                                                        .text) ??
                                                                0,
                                                            //
                                                            ///
                                                            "Payment_Mode":
                                                                dashboardcontroller
                                                                    .choosenLoanAmount
                                                                    .value,
                                                            "Transaction_Id":
                                                                dashboardcontroller
                                                                    .choosenLoanAmountIDController
                                                                    .text,
                                                            //
                                                            //
                                                            "Remarks":
                                                                dashboardcontroller
                                                                    .loansRemarksController
                                                                    .text,
                                                            // "fields": [
                                                            //   {"name": "Emp_ID", "required": true},
                                                            //   {"name": "Emp_Name", "required": true},
                                                            //   {"name": "Amount", "required": true},
                                                            //   {"name": "Remarks", "required": false}
                                                            // ]
                                                          },
                                                          //

                                                          "Time": {
                                                            "createdTime":
                                                                dashboardcontroller
                                                                    .today
                                                                    .value,

                                                            // "fields": [
                                                            //   {"name": "Amount", "required": true},
                                                            //   {"name": "Remarks", "required": false}
                                                            // ]
                                                          },
                                                          "User": {
                                                            "email":
                                                                dashboardcontroller
                                                                    .userEmail
                                                                    .value,

                                                            // "fields": [
                                                            //   {"name": "Amount", "required": true},
                                                            //   {"name": "Remarks", "required": false}
                                                            // ]
                                                          },
                                                          //  "createdTime": today.value
                                                        }
                                                      };
                                                      var payload = {
                                                        'empId': dashboardcontroller
                                                            .loansEmpidController
                                                            .text,
                                                        'empName':
                                                            dashboardcontroller
                                                                .loansEmpnameController
                                                                .text,
                                                        'amount':
                                                            dashboardcontroller
                                                                .loansAmountController
                                                                .text,
                                                        'paymentMode':
                                                            dashboardcontroller
                                                                .choosenLoanAmount
                                                                .value,
                                                        'categoryType': 'loans',
                                                        'formType':
                                                            "embroidery",
                                                        'remarks':
                                                            dashboardcontroller
                                                                .loansRemarksController
                                                                .text,
                                                        'transcationId':
                                                            dashboardcontroller
                                                                .choosenLoanAmountIDController
                                                                .text,
                                                        'email':
                                                            dashboardcontroller
                                                                .userEmail
                                                                .value,
                                                      };
                                                      setState(() {
                                                        dashboardcontroller
                                                            .updateSelectedImage(
                                                                null);
                                                      });
                                                      if (_formKeyNurseLoans
                                                          .currentState!
                                                          .validate()) {
                                                        dashboardcontroller
                                                            .addForm(payload);
                                                        dashboardcontroller
                                                            .loansEmpidController
                                                            .clear();

                                                        dashboardcontroller
                                                            .loansEmpnameController
                                                            .clear();
                                                        dashboardcontroller
                                                            .loansAmountController
                                                            .clear();
                                                        dashboardcontroller
                                                            .choosenLoanAmountIDController
                                                            .clear();
                                                        dashboardcontroller
                                                            .loansRemarksController
                                                            .clear();
                                                      }

                                                      // if (_formKey.currentState!.validate()) {
                                                      //   dashboardcontroller.addForm(payload);
                                                      // }
                                                    }),
                                          ),
                                        ])))),
                        isNurseLoans == false ? Divider() : SizedBox(),
                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //   "⁠Packaging",
                        //   textAlign: TextAlign.left,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Packaging",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            _ispackgingCard == false
                                ? InkWell(
                                    onTap: () {
                                      togglepackgingSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      togglepackgingSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _ispackgingCard,
                            child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeypackgingExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),

                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .packgingAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        // drop
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosensepackgingAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosensepackgingAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosensepackgingIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .packgingRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),
                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadpg =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "⁠Packaging": {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .packgingAmountController
                                                                      .text) ??
                                                              0,
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosensepackgingAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosensepackgingIDController
                                                                  .text,
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .packgingRemarksController
                                                                  .text,
                                                        },
                                                        /////

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .packgingAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosensepackgingAmount
                                                              .value,
                                                      'categoryType':
                                                          'packaging',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .packgingRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosensepackgingIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });
                                                    if (_formKeypackgingExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .packgingAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosensepackgingIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .packgingRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                      ]),
                                ))),
                        //
                        _ispackgingCard == false ? Divider() : SizedBox(),

                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //   "⁠Transportation",
                        //   textAlign: TextAlign.left,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Transportation",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurserytranscost == false
                                ? InkWell(
                                    onTap: () {
                                      togglestransportSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      togglestransportSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _istrnasExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeytranExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .transportationAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        // drop
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosensetransportationCostAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosensetransportationCostAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosensetransportationIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .transportationRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),
                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadtr =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        /////////transportation
                                                        "⁠Transportation": {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .transportationAmountController
                                                                      .text) ??
                                                              0,
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosensetransportationCostAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosensetransportationIDController
                                                                  .text,
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .transportationRemarksController
                                                                  .text,
                                                        },

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .transportationAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosensetransportationCostAmount
                                                              .value,
                                                      'categoryType':
                                                          'transportation',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .transportationRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosensetransportationIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });
                                                    if (_formKeytranExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .transportationAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosensetransportationIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .transportationRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                      ]),
                                ))),
                        //
                        isNurserytranscost == false ? Divider() : SizedBox(),

                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //
                        //   textAlign: TextAlign.left,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Skills Training Cost",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseryskillstrainingcost == false
                                ? InkWell(
                                    onTap: () {
                                      toggleskillstrainingcostSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      toggleskillstrainingcostSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isskillstrainingcostExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeyskillstrainingcostExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),

                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .skillsTrainingCostAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        // drop
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosenseskillsTrainingCostAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosenseskillsTrainingCostAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosenseskillsTrainingIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .skillsTrainingCostRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),
                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadsc =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "⁠Skills Training Cost":
                                                            {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .skillsTrainingCostAmountController
                                                                      .text) ??
                                                              0,
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosenseskillsTrainingCostAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosenseskillsTrainingIDController
                                                                  .text,
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .skillsTrainingCostRemarksController
                                                                  .text,
                                                        },
                                                        //     11.⁠ ⁠Transportation
                                                        //             a. Amount*
                                                        //             b. Remarks
                                                        //     12.⁠ ⁠Packaging
                                                        //             a. Amount
                                                        //             b. Remarks
                                                        /////////////////////////////////////////////////////////////////////////////

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .skillsTrainingCostAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosenseskillsTrainingCostAmount
                                                              .value,
                                                      'categoryType':
                                                          'skilltrainingcost',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .skillsTrainingCostRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosenseskillsTrainingIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });
                                                    if (_formKeyskillstrainingcostExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);

                                                      dashboardcontroller
                                                          .skillsTrainingCostAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosenseskillsTrainingIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .skillsTrainingCostRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                      ]),
                                ))),
                        //
                        isNurseryskillstrainingcost == false
                            ? Divider()
                            : SizedBox(),

                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //   "⁠Rent and Utilities",
                        //   textAlign: TextAlign.left,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Rent and Utilities",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseryrentandutilities == false
                                ? InkWell(
                                    onTap: () {
                                      togglerentandutilitiesSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      togglerentandutilitiesSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isrentandutilitiesExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeyNurseryrentandutilitiesExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .rentandUtilitiesAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),

                                        // drop
                                        ///////////
                                        ///        //dropdown///////////////////////////////////////////////
                                        ///  var choosenserentandUtilitiesAmount = 'cash'.obs;
                                        // TextEditingController choosenserentAndutilitiesIDController =
                                        //     TextEditingController();
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosenserentandUtilitiesAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosenserentandUtilitiesAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosenserentAndutilitiesIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .rentandUtilitiesRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),
                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadru =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "⁠Rent and Utilities": {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .rentandUtilitiesAmountController
                                                                      .text) ??
                                                              0,
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosenserentandUtilitiesAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosenserentAndutilitiesIDController
                                                                  .text,
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .rentandUtilitiesRemarksController
                                                                  .text,
                                                        },
                                                        //     10.⁠ ⁠Skills Training Cost
                                                        //             a. Amount*
                                                        //             b. Remarks
                                                        //
                                                        //                               var choosenseskillsTrainingCostAmount = 'cash'.obs;
                                                        // TextEditingController choosenseskillsTrainingIDController =
                                                        //     TextEditingController();
                                                        //

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .rentandUtilitiesAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosenserentandUtilitiesAmount
                                                              .value,
                                                      'categoryType':
                                                          'rentandutilities',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .rentandUtilitiesRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosenserentAndutilitiesIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });
                                                    if (_formKeyNurseryrentandutilitiesExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .rentandUtilitiesAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosenserentAndutilitiesIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .rentandUtilitiesRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                      ]),
                                ))),
                        //
                        isNurseryrentandutilities == false
                            ? Divider()
                            : SizedBox(),

                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //
                        //   textAlign: TextAlign.left,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: Text(
                                "⁠Machine Maintenance and Repairs",
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: KdarkText,
                                    fontSize: kEighteenFont,
                                    fontWeight: kFW500),
                              ),
                            ),
                            isNurserymachinemaintenncerepiars == false
                                ? InkWell(
                                    onTap: () {
                                      togglemachinemaintenncerepiarsSwitch(
                                          true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      togglemachinemaintenncerepiarsSwitch(
                                          false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand:
                                _isNurserymachinemaintenncerepiarsExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key:
                                      _formKeyNurserymachinemaintenncerepiarsExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),

                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .machineMaintenanceandRepairsAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        //drops
                                        //               var choosensemachineMaintenanceandRepairsAmount = 'cash'.obs;
                                        // TextEditingController choosensemachineMaintenanceandRepairsIDController =
                                        //     TextEditingController();
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosensemachineMaintenanceandRepairsAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosensemachineMaintenanceandRepairsAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosensemachineMaintenanceandRepairsIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .machineMaintenanceandRepairsRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),

                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadmr =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "⁠Machine Maintenance and Repairs":
                                                            {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .machineMaintenanceandRepairsAmountController
                                                                      .text) ??
                                                              0,
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosensemachineMaintenanceandRepairsAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosensemachineMaintenanceandRepairsIDController
                                                                  .text,
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .machineMaintenanceandRepairsRemarksController
                                                                  .text,
                                                        },
                                                        //     9.⁠ ⁠Rent and Utilities
                                                        //             a. Amount*
                                                        //             b. Remarks
                                                        //
                                                        //                              var choosenserentandUtilitiesAmount = 'cash'.obs;
                                                        // TextEditingController choosenserentAndutilitiesIDController =
                                                        //     TextEditingController();
                                                        //

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .machineMaintenanceandRepairsAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosensemachineMaintenanceandRepairsAmount
                                                              .value,
                                                      'categoryType':
                                                          'machinemaintaince',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .machineMaintenanceandRepairsRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosensemachineMaintenanceandRepairsIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });
                                                    if (_formKeyNurserymachinemaintenncerepiarsExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .machineMaintenanceandRepairsAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosensemachineMaintenanceandRepairsIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .machineMaintenanceandRepairsRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        //

                                        // button end
                                      ]),
                                ))),
                        //
                        isNurseFixedSalary == false ? Divider() : SizedBox(),

                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //   "⁠Tools",
                        //   textAlign: TextAlign.center,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Tools",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurserytools == false
                                ? InkWell(
                                    onTap: () {
                                      toggletoolsSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      toggletoolsSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isNurserytoolsExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeyNurserytoolsExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .toolsAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        // drop
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        ///
                                        //               var choosensetoolsAmount = 'cash'.obs;
                                        // TextEditingController choosensewingtoolsIDController =
                                        //     TextEditingController();
                                        ///
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosensetoolsAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosensetoolsAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosensewingtoolsIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .toolsRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),

                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadtl =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "⁠Tools": {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .toolsAmountController
                                                                      .text) ??
                                                              0,
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosensetoolsAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosensewingtoolsIDController
                                                                  .text,
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .toolsRemarksController
                                                                  .text,
                                                        },
                                                        //     8.⁠ ⁠Machine Maintenance and Repairs
                                                        //             a. Amount*
                                                        //             b. Remarks
                                                        //
                                                        //                              var choosensemachineMaintenanceandRepairsAmount = 'cash'.obs;

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .toolsAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosensetoolsAmount
                                                              .value,
                                                      'categoryType': 'tools',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .toolsRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosensewingtoolsIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });
                                                    if (_formKeyNurserytoolsExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .toolsAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosensewingtoolsIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .toolsRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                        //
                                      ]),
                                ))),
                        //
                        isNurserytools == false ? Divider() : SizedBox(),

                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //   "Raw material",
                        //   textAlign: TextAlign.center,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Raw material",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseryrawmaterialsexpenses == false
                                ? InkWell(
                                    onTap: () {
                                      togglerawmaterialsSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      togglerawmaterialsSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isNurseryrawmaterialsExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeyNurseryrawmaterialsExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .rawmaterialAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        // drop
                                        //               var choosenRawmaterialAmount = 'cash'.obs;
                                        // TextEditingController choosenRawmaterialIDController =
                                        //     TextEditingController();
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosenRawmaterialAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosenRawmaterialAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosenRawmaterialIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .rawmaterialRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),
                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadrm =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "Raw material": {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .rawmaterialAmountController
                                                                      .text) ??
                                                              0,
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosenRawmaterialAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosenRawmaterialIDController
                                                                  .text,
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .rawmaterialRemarksController
                                                                  .text,
                                                        },
                                                        //     6.⁠ ⁠Sewing Machines
                                                        //             a. Amount*
                                                        //             b. Remarks
                                                        //
                                                        //                               var choosensewingMachinesAmount = 'cash'.obs;
                                                        // TextEditingController choosensewingMachinesIDController =
                                                        //     TextEditingController();

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .rawmaterialAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosenRawmaterialAmount
                                                              .value,
                                                      'categoryType':
                                                          'rawmaterial',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .rawmaterialRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosenRawmaterialIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });

                                                    if (_formKeyNurseryrawmaterialsExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .rawmaterialAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosenRawmaterialIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .rawmaterialRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                        // _formKeyNurseryrawmaterialsExpenses
                                      ]),
                                ))),
                        //
                        isNurseryrawmaterialsexpenses == false
                            ? Divider()
                            : SizedBox(),

                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //   "⁠Sewing Machines",
                        //   textAlign: TextAlign.center,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Sewing Machines",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurserysewingmachineexpenses == false
                                ? InkWell(
                                    onTap: () {
                                      togglesewingmachineSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      togglesewingmachineSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isNurserysewingmachineExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeyNurserysewingmachineExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .sewingMachinesamountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        // drop
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        ///  var choosensewingMachinesAmount = 'cash'.obs;
                                        // TextEditingController choosensewingMachinesIDController =
                                        //     TextEditingController();
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosensewingMachinesAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosensewingMachinesAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosensewingMachinesIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .sewingMachineRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),

                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadsm =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "⁠Sewing Machines": {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .sewingMachinesamountController
                                                                      .text) ??
                                                              0,
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosensewingMachinesAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosensewingMachinesIDController
                                                                  .text,
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .sewingMachineRemarksController
                                                                  .text,
                                                        },

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .sewingMachinesamountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosensewingMachinesAmount
                                                              .value,
                                                      'categoryType':
                                                          'sewingmachine',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .sewingMachineRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosensewingMachinesIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });

                                                    if (_formKeyNurserysewingmachineExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .sewingMachinesamountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosensewingMachinesIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .sewingMachineRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                        // _formKeyNurserysewingmachineExpenses
                                      ]),
                                ))),
                        //
                        isNurserysewingmachineexpenses == false
                            ? Divider()
                            : SizedBox(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Miscellaneous",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseryMiscellaneousSupply == false
                                ? InkWell(
                                    onTap: () {
                                      toggleMiscellaneousSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      toggleMiscellaneousSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isNurseryMiscellaneousExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeyNurseryMiscellaneous,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .miscellaneousAmounrController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        // drop down
                                        //             var choosenMiscellineousAmount = 'cash'.obs;
                                        // TextEditingController choosenMiscellineousAmountIDController =
                                        //     TextEditingController();
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosenMiscellineousAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosenMiscellineousAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosenMiscellineousAmountIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //fuel costs
                                        //                TextEditingController fuelCostsAmountController = TextEditingController();
                                        // //             b. Remarks
                                        //   TextEditingController fuelCostsRemarksController = TextEditingController();
                                        ////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .miscellaneousRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),
                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadml =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "Miscellaneous": {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .miscellaneousAmounrController
                                                                      .text) ??
                                                              0,

                                                          ///
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosenMiscellineousAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosenMiscellineousAmountIDController
                                                                  .text,
                                                          //
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .miscellaneousRemarksController
                                                                  .text,
                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //
                                                        //                             var choosenOtherexpensesAmount = 'cash'.obs;
                                                        // TextEditingController choosenOtherExpensesAmountIDController =
                                                        //     TextEditingController();

                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .miscellaneousAmounrController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosenMiscellineousAmount
                                                              .value,
                                                      'categoryType':
                                                          'misellaneous',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .miscellaneousRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosenMiscellineousAmountIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });

                                                    if (_formKeyNurseryMiscellaneous
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .miscellaneousAmounrController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosenMiscellineousAmountIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .miscellaneousRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                      ]),
                                ))),
                        //
                        isNurseryMiscellaneousSupply == false
                            ? Divider()
                            : SizedBox(),

                        ////////////////////////////////////////////
                        SizedBox(
                          height: 20.h,
                        ),
                        // Text(
                        //
                        //   textAlign: TextAlign.center,
                        //   style: GoogleFonts.poppins(
                        //       color: KdarkText,
                        //       fontSize: kEighteenFont,
                        //       fontWeight: kFW500),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "⁠Other Expenses",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: KdarkText,
                                  fontSize: kEighteenFont,
                                  fontWeight: kFW500),
                            ),
                            isNurseryothersexpenses == false
                                ? InkWell(
                                    onTap: () {
                                      toggleothersexpensesSwitch(true);
                                    },
                                    child: Icon(Icons.arrow_drop_down))
                                : InkWell(
                                    onTap: () {
                                      toggleothersexpensesSwitch(false);
                                    },
                                    child: Icon(Icons.arrow_drop_up))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ExpandableSection(
                            expand: _isNurseryothersexpensesExpandCard,
                            child: Container(
                                width: double.infinity,
                                // margin: const EdgeInsets.only(top: 2, bottom: 10),
                                // padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.zero,
                                    topRight: Radius.zero,
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Form(
                                  key: _formKeyNurseryOtherExpenses,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(),

                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          keyboardType: TextInputType.number,
                                          controller: dashboardcontroller
                                              .otherExpensesAmountController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Amount",
                                          maxLines: 1,
                                          readOnly: false,
                                          label: "Amount*",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter amount';
                                            }
                                            return null;
                                          },
                                        ),
                                        // drop down
                                        //               var choosenOtherexpensesAmount = 'cash'.obs;
                                        // TextEditingController choosenOtherExpensesAmountIDController =
                                        //     TextEditingController();
                                        ///////////          //dropdown///////////////////////////////////////////////
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Payment mode",
                                          style: GoogleFonts.poppins(
                                              color: kblack,
                                              fontSize: kSixteenFont,
                                              fontWeight: kFW400),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Kwhite,
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      kblack.withOpacity(0.2),
                                                  blurRadius: 2.r,
                                                  offset: Offset(1, 1),
                                                  spreadRadius: 1.r,
                                                )
                                              ]),
                                          child:
                                              DropdownButtonFormField2<String>(
                                            isExpanded: true,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                    width: 0.5),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Kform_border_twg,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            hint: Text(
                                              'Select mode',
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color:
                                                    KTextgery.withOpacity(0.5),
                                              ),
                                            ),
                                            items: CompanyList.map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                )).toList(),
                                            validator: (value) {
                                              // if (value == null) {
                                              //   return 'Please select mode';
                                              // }
                                              return null;
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                selectedUserValue =
                                                    value.toString();

                                                dashboardcontroller
                                                    .choosenOtherexpensesAmount
                                                    .value = value.toString();

                                                setState(() {});
                                              });
                                            },
                                            onSaved: (value) {
                                              selectedUserValue =
                                                  value.toString();
                                              print(selectedUserValue);
                                              setState(() {});
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding:
                                                  EdgeInsets.only(right: 8),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: kblack.withOpacity(0.6),
                                              ),
                                              iconSize: 24,
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                            ),
                                          ),
                                        ),
                                        //id
                                        // online
                                        dashboardcontroller
                                                    .choosenOtherexpensesAmount ==
                                                "online"
                                            ? Container(
                                                margin:
                                                    EdgeInsets.only(top: 10.h),
                                                child: CustomFormFields(
                                                  ontap: () {},
                                                  enabled: true,
                                                  controller: dashboardcontroller
                                                      .choosenOtherExpensesAmountIDController,
                                                  labelColor: KText,
                                                  obscureText: false,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 16,
                                                          horizontal: 8),
                                                  fontSize: kFourteenFont,
                                                  fontWeight: FontWeight.w500,
                                                  hintText: "Enter Txn ID",
                                                  maxLines: 1,
                                                  readOnly: false,
                                                  label: "Transaction ID",
                                                  validator: (value) {
                                                    // if (value!.isEmpty) {
                                                    //   return 'Please Enter Remarks';
                                                    // }
                                                    return null;
                                                  },
                                                ),
                                              )
                                            : SizedBox(),

                                        //////////////////////////////////////////////////////drop down end////
                                        //
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        CustomFormFields(
                                          ontap: () {},
                                          enabled: true,
                                          controller: dashboardcontroller
                                              .otherExpensesRemarksController,
                                          labelColor: KText,
                                          obscureText: false,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 16, horizontal: 8),
                                          fontSize: kFourteenFont,
                                          fontWeight: FontWeight.w500,
                                          hintText: "Enter Remarks",
                                          maxLines: 4,
                                          readOnly: false,
                                          label: "Remarks",
                                          validator: (value) {
                                            return null;
                                          },
                                        ),

                                        // button here
                                        Obx(
                                          () => dashboardcontroller
                                                      .addFormLoading ==
                                                  true
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Kform_border_twg,
                                                  ),
                                                )
                                              : CustomButton(
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r),
                                                  Color: Kform_border_twg,
                                                  textColor: Kwhite,
                                                  height: 40,
                                                  width: double.infinity,
                                                  label: "Submit",
                                                  fontSize: kSixteenFont,
                                                  fontWeight: kFW700,
                                                  isLoading: false,
                                                  onTap: () {
                                                    DateTime now =
                                                        DateTime.now();
                                                    String formattedDate =
                                                        DateFormat("dd-MM-yyyy")
                                                            .format(now);
                                                    String formattedTime =
                                                        DateFormat("hh:mm a")
                                                            .format(now);
                                                    setState(() {
                                                      dashboardcontroller
                                                              .today.value =
                                                          formattedDate +
                                                              " " +
                                                              formattedTime;
                                                      print(dashboardcontroller
                                                          .today);
                                                    });
                                                    var payloadoe =
                                                        // "email": dashboardcontroller
                                                        //     .UserEmailSignInController.text,
                                                        // "password": dashboardcontroller
                                                        //     .UserEmailPasswordController.text
                                                        {
                                                      "Embroidery": {
                                                        "Other Expenses": {
                                                          "Amount": int.tryParse(
                                                                  dashboardcontroller
                                                                      .otherExpensesAmountController
                                                                      .text) ??
                                                              0,

                                                          ///
                                                          "Payment_Mode":
                                                              dashboardcontroller
                                                                  .choosenOtherexpensesAmount
                                                                  .value,
                                                          "Transaction_Id":
                                                              dashboardcontroller
                                                                  .choosenOtherExpensesAmountIDController
                                                                  .text,
                                                          //
                                                          "Remarks":
                                                              dashboardcontroller
                                                                  .otherExpensesRemarksController
                                                                  .text,
                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        // "Comments": { rem
                                                        //   "comment": dashboardcontroller
                                                        //       .otherCommentsController
                                                        //       .text,

                                                        //   // "fields": [
                                                        //   //   {"name": "Amount", "required": true},
                                                        //   //   {"name": "Remarks", "required": false}
                                                        //   // ]
                                                        // },
                                                        "Time": {
                                                          "createdTime":
                                                              dashboardcontroller
                                                                  .today.value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        "User": {
                                                          "email":
                                                              dashboardcontroller
                                                                  .userEmail
                                                                  .value,

                                                          // "fields": [
                                                          //   {"name": "Amount", "required": true},
                                                          //   {"name": "Remarks", "required": false}
                                                          // ]
                                                        },
                                                        //  "createdTime": today.value
                                                      }
                                                    };
                                                    var payload = {
                                                      'amount': dashboardcontroller
                                                          .otherExpensesAmountController
                                                          .text,
                                                      'paymentMode':
                                                          dashboardcontroller
                                                              .choosenOtherexpensesAmount
                                                              .value,
                                                      'categoryType':
                                                          'otherexpenses',
                                                      'formType': "embroidery",
                                                      'remarks': dashboardcontroller
                                                          .otherExpensesRemarksController
                                                          .text,
                                                      'transcationId':
                                                          dashboardcontroller
                                                              .choosenOtherExpensesAmountIDController
                                                              .text,
                                                      'email':
                                                          dashboardcontroller
                                                              .userEmail.value,
                                                    };
                                                    setState(() {
                                                      dashboardcontroller
                                                          .updateSelectedImage(
                                                              null);
                                                    });

                                                    if (_formKeyNurseryOtherExpenses
                                                        .currentState!
                                                        .validate()) {
                                                      dashboardcontroller
                                                          .addFormExp(payload);
                                                      dashboardcontroller
                                                          .otherExpensesAmountController
                                                          .clear();
                                                      dashboardcontroller
                                                          .choosenOtherExpensesAmountIDController
                                                          .clear();
                                                      dashboardcontroller
                                                          .otherExpensesRemarksController
                                                          .clear();
                                                    }

                                                    // if (_formKey.currentState!.validate()) {
                                                    //   dashboardcontroller.addForm(payload);
                                                    // }
                                                  }),
                                        ),
                                        // button end
                                      ]),
                                ))),
                        //
                        isNurseryothersexpenses == false
                            ? Divider()
                            : SizedBox(),

                        // Comments
                        SizedBox(
                          height: 20.h,
                        ),
                        // Comments
                        SizedBox(
                          height: 20.h,
                        ),

                        SizedBox(
                            height: MediaQuery.of(context).size.height / 2.5)
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
