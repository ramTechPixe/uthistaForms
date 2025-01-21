import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:uthistaapp/untils/export_file.dart';
import 'dart:convert';
import 'dart:io';

class Nursey extends StatefulWidget {
  const Nursey({super.key});

  @override
  State<Nursey> createState() => _NurseyState();
}

class _NurseyState extends State<Nursey> {
  AuthController dashboardcontroller = Get.put(AuthController());

  final _formKey = GlobalKey<FormState>();
  ////////////
  /////////// fixed salaries
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

  /////////////////////////////////////////////////////////////////////
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
          child: Obx(
            () => Column(
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
                                          borderRadius:
                                              BorderRadius.circular(8.r),
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
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20))),
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
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      12.sp,
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
                                                        Icons
                                                            .camera_alt_outlined,
                                                        color: Kblue_twg,
                                                      ),
                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                      Text('camera',
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      12.sp,
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

                            /////
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
                                            DateFormat("dd-MM-yyyy")
                                                .format(now);
                                        String formattedTime =
                                            DateFormat("hh:mm a").format(now);
                                        setState(() {
                                          dashboardcontroller.today.value =
                                              formattedDate +
                                                  " " +
                                                  formattedTime;
                                          print(dashboardcontroller.today);
                                        });
                                        var payloadd = {
                                          "Nursery": {
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
                                              "createdTime": dashboardcontroller
                                                  .today.value,

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
                                        //  ..fields[''] = payload['remarks']
                                        // ..fields[''] = payload['formType']
                                        // ..fields[''] = payload['email'];
                                        var payload = {
                                          'formType': "nursery",
                                          'remarks': dashboardcontroller
                                              .otherCommentsController.text,
                                          'email': dashboardcontroller
                                              .userEmail.value,
                                        };

                                        if (selectedImage != null) {
                                          // dashboardcontroller
                                          //     .addFormCommment(payload);
                                          dashboardcontroller
                                              .uploadImage(payload);
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
                          ],
                        ),
                      )
                    : Form(
                        key: _formKey,
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
                                              // keyboardType:
                                              //     TextInputType.number,
                                              controller: dashboardcontroller
                                                  .FixedSalariesEmpidController,
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
                                                  .FixedSalariesEmpnameController,
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
                                              controller: dashboardcontroller
                                                  .FixedSalariesSalaryAmountController,
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
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Kwhite,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: kblack
                                                          .withOpacity(0.2),
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
                                                  errorBorder:
                                                      OutlineInputBorder(
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
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 8),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                hint: Text(
                                                  'Select mode',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color:
                                                        KTextgery.withOpacity(
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
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                  ),
                                                  iconSize: 24,
                                                ),
                                                dropdownStyleData:
                                                    DropdownStyleData(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
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
                                                    margin: EdgeInsets.only(
                                                        top: 10.h),
                                                    child: CustomFormFields(
                                                      ontap: () {},
                                                      enabled: true,
                                                      controller:
                                                          dashboardcontroller
                                                              .fixedSalaryAmountIDController,
                                                      labelColor: KText,
                                                      obscureText: false,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16,
                                                              horizontal: 8),
                                                      fontSize: kFourteenFont,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                      vertical: 16,
                                                      horizontal: 8),
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
                                                            DateFormat(
                                                                    "dd-MM-yyyy")
                                                                .format(now);
                                                        String formattedTime =
                                                            DateFormat(
                                                                    "hh:mm a")
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
                                                        // new
                                                        var payload = {
                                                          'empId':
                                                              dashboardcontroller
                                                                  .FixedSalariesEmpidController
                                                                  .text,
                                                          'empName':
                                                              dashboardcontroller
                                                                  .FixedSalariesEmpnameController
                                                                  .text,
                                                          'amount':
                                                              dashboardcontroller
                                                                  .FixedSalariesSalaryAmountController
                                                                  .text,
                                                          'paymentMode':
                                                              dashboardcontroller
                                                                  .choosenfixedSalaryAmount
                                                                  .value,
                                                          'categoryType':
                                                              'fixedsalaries',
                                                          'formType': "nursery",
                                                          'remarks':
                                                              dashboardcontroller
                                                                  .FixedSalariesRemarksController
                                                                  .text,
                                                          'transcationId':
                                                              dashboardcontroller
                                                                  .fixedSalaryAmountIDController
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

                                                        //
                                                        // var payloads = {
                                                        //   "Nursery": {
                                                        //     //
                                                        //     //                              var choosenfixedSalaryAmount = 'cash'.obs;
                                                        //     // TextEditingController fixedSalaryAmountIDController = TextEditingController();
                                                        //     //
                                                        //     "Fixed Salaries": {
                                                        //       "Emp_ID":
                                                        //           dashboardcontroller
                                                        //               .FixedSalariesEmpidController
                                                        //               .text,
                                                        //       "Emp_Name":
                                                        //           dashboardcontroller
                                                        //               .FixedSalariesEmpnameController
                                                        //               .text,
                                                        //       "Salary_Amount":
                                                        //           int.tryParse(dashboardcontroller
                                                        //                   .FixedSalariesSalaryAmountController
                                                        //                   .text) ??
                                                        //               0,

                                                        //       ///
                                                        //       "Payment_Mode":
                                                        //           dashboardcontroller
                                                        //               .choosenfixedSalaryAmount
                                                        //               .value,
                                                        //       "Transaction_Id":
                                                        //           dashboardcontroller
                                                        //               .fixedSalaryAmountIDController
                                                        //               .text,
                                                        //       //
                                                        //       "Remarks":
                                                        //           dashboardcontroller
                                                        //               .FixedSalariesRemarksController
                                                        //               .text,
                                                        //       // "fields": [ dashboardcontroller.FixedSalariesRemarksController
                                                        //       //  // {"Emp_ID": },
                                                        //       //   {"name": "Emp_Name", "required": true},
                                                        //       //   {"name": "Salary_Amount", "required": true},
                                                        //       //   {"name": "Remarks", "required": false}
                                                        //       // ]
                                                        //     },
                                                        //     //
                                                        //     //                              var choosenwagesSalaryAmount = 'cash'.obs;
                                                        //     // TextEditingController wagesSalaryAmountIDController = TextEditingController();

                                                        //     "Time": {
                                                        //       "createdTime":
                                                        //           dashboardcontroller
                                                        //               .today
                                                        //               .value,

                                                        //       // "fields": [
                                                        //       //   {"name": "Amount", "required": true},
                                                        //       //   {"name": "Remarks", "required": false}
                                                        //       // ]
                                                        //     },
                                                        //     "User": {
                                                        //       "email":
                                                        //           dashboardcontroller
                                                        //               .userEmail
                                                        //               .value,

                                                        //       // "fields": [
                                                        //       //   {"name": "Amount", "required": true},
                                                        //       //   {"name": "Remarks", "required": false}
                                                        //       // ]
                                                        //     },
                                                        //     //  "createdTime": today.value
                                                        //   }
                                                        // };

                                                        if (_formKeyNurseryFixed
                                                            .currentState!
                                                            .validate()) {
                                                          dashboardcontroller
                                                              .addForm(payload);
                                                          //

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
                            isNurseFixedSalary == false
                                ? Divider()
                                : SizedBox(),

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
                                                keyboardType:
                                                    TextInputType.number,
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
                                                margin:
                                                    EdgeInsets.only(top: 5.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Kwhite,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: kblack
                                                            .withOpacity(0.2),
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
                                                    errorBorder:
                                                        OutlineInputBorder(
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
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 8),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  hint: Text(
                                                    'Select mode',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color:
                                                          KTextgery.withOpacity(
                                                              0.5),
                                                    ),
                                                  ),
                                                  items: CompanyList.map(
                                                      (item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style: GoogleFonts
                                                                  .poppins(
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
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                  ),
                                                  iconStyleData: IconStyleData(
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                    ),
                                                    iconSize: 24,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                                                        controller:
                                                            dashboardcontroller
                                                                .wagesSalaryAmountIDController,
                                                        labelColor: KText,
                                                        obscureText: false,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 16,
                                                                horizontal: 8),
                                                        fontSize: kFourteenFont,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        hintText:
                                                            "Enter Txn ID",
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
                                                          color:
                                                              Kform_border_twg,
                                                        ),
                                                      )
                                                    : CustomButton(
                                                        margin: EdgeInsets.only(
                                                            top: 36.h),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r),
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
                                                              DateFormat(
                                                                      "hh:mm a")
                                                                  .format(now);
                                                          setState(() {
                                                            dashboardcontroller
                                                                    .today
                                                                    .value =
                                                                formattedDate +
                                                                    " " +
                                                                    formattedTime;
                                                            print(
                                                                dashboardcontroller
                                                                    .today);
                                                          });
                                                          //  var payloadd = {
                                                          //   "Nursery": {
                                                          //     //
                                                          //     "Wages Salaries":
                                                          //         {
                                                          //       "Emp_ID":
                                                          //           dashboardcontroller
                                                          //               .WagesSalariesEmpidController
                                                          //               .text,
                                                          //       "Emp_Name":
                                                          //           dashboardcontroller
                                                          //               .WagesSalariesEmpnameController
                                                          //               .text,
                                                          //       "Salary_Amount":
                                                          //           int.tryParse(dashboardcontroller
                                                          //                   .WagesSalariesSalaryAmountController
                                                          //                   .text) ??
                                                          //               0,
                                                          //       //
                                                          //       ///
                                                          //       "Payment_Mode":
                                                          //           dashboardcontroller
                                                          //               .choosenwagesSalaryAmount
                                                          //               .value,
                                                          //       "Transaction_Id":
                                                          //           dashboardcontroller
                                                          //               .wagesSalaryAmountIDController
                                                          //               .text,
                                                          //       //
                                                          //       //
                                                          //       "Remarks":
                                                          //           dashboardcontroller
                                                          //               .WagesSalariesRemarksController
                                                          //               .text,
                                                          //     },

                                                          //     "Time": {
                                                          //       "createdTime":
                                                          //           dashboardcontroller
                                                          //               .today
                                                          //               .value,
                                                          //     },
                                                          //     "User": {
                                                          //       "email":
                                                          //           dashboardcontroller
                                                          //               .userEmail
                                                          //               .value,
                                                          //     },
                                                          //   }
                                                          // };
                                                          //new'
                                                          var payload = {
                                                            'empId':
                                                                dashboardcontroller
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
                                                                "nursery",
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
                                                          //

                                                          if (_formKeyNurseWagesSalary
                                                              .currentState!
                                                              .validate()) {
                                                            dashboardcontroller
                                                                .addForm(
                                                                    payload);
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
                            isNurseWagesSalary == false
                                ? Divider()
                                : SizedBox(),
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
                                                keyboardType:
                                                    TextInputType.number,
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
                                                margin:
                                                    EdgeInsets.only(top: 5.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Kwhite,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: kblack
                                                            .withOpacity(0.2),
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
                                                    errorBorder:
                                                        OutlineInputBorder(
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
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 8),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  hint: Text(
                                                    'Select mode',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color:
                                                          KTextgery.withOpacity(
                                                              0.5),
                                                    ),
                                                  ),
                                                  items: CompanyList.map(
                                                      (item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style: GoogleFonts
                                                                  .poppins(
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
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                  ),
                                                  iconStyleData: IconStyleData(
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                    ),
                                                    iconSize: 24,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                                                        controller:
                                                            dashboardcontroller
                                                                .choosenSalaryAdvanceAmountIDController,
                                                        labelColor: KText,
                                                        obscureText: false,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 16,
                                                                horizontal: 8),
                                                        fontSize: kFourteenFont,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        hintText:
                                                            "Enter Txn ID",
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
                                                          color:
                                                              Kform_border_twg,
                                                        ),
                                                      )
                                                    : CustomButton(
                                                        margin: EdgeInsets.only(
                                                            top: 36.h),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r),
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
                                                              DateFormat(
                                                                      "hh:mm a")
                                                                  .format(now);
                                                          setState(() {
                                                            dashboardcontroller
                                                                    .today
                                                                    .value =
                                                                formattedDate +
                                                                    " " +
                                                                    formattedTime;
                                                            print(
                                                                dashboardcontroller
                                                                    .today);
                                                          });
                                                          // var payloadds = {
                                                          //   "Nursery": {
                                                          //     "Salary Advance":
                                                          //         {
                                                          //       "Emp_ID":
                                                          //           dashboardcontroller
                                                          //               .SalaryAdvanceEmpIDController
                                                          //               .text,
                                                          //       "Emp_Name":
                                                          //           dashboardcontroller
                                                          //               .SalaryAdvanceEmpNameController
                                                          //               .text,
                                                          //       "Amount": int.tryParse(dashboardcontroller
                                                          //               .SalaryAdvanceAmountController
                                                          //               .text) ??
                                                          //           0,
                                                          //       //
                                                          //       ///
                                                          //       "Payment_Mode":
                                                          //           dashboardcontroller
                                                          //               .choosenSalaryAdvanceAmount
                                                          //               .value,
                                                          //       "Transaction_Id":
                                                          //           dashboardcontroller
                                                          //               .choosenSalaryAdvanceAmountIDController
                                                          //               .text,
                                                          //       //
                                                          //       //
                                                          //       "Remarks":
                                                          //           dashboardcontroller
                                                          //               .SalaryAdvanceRemarksController
                                                          //               .text,
                                                          //     },
                                                          //     //

                                                          //     "Time": {
                                                          //       "createdTime":
                                                          //           dashboardcontroller
                                                          //               .today
                                                          //               .value,
                                                          //     },
                                                          //     "User": {
                                                          //       "email":
                                                          //           dashboardcontroller
                                                          //               .userEmail
                                                          //               .value,
                                                          //     },
                                                          //     //  "createdTime": today.value
                                                          //   }
                                                          // };
                                                          var payload = {
                                                            'empId':
                                                                dashboardcontroller
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
                                                                "nursery",
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
                                                                .addForm(
                                                                    payload);
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
                            isNurseSalaryAdvance == false
                                ? Divider()
                                : SizedBox(),

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
                                                keyboardType:
                                                    TextInputType.number,
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
                                                margin:
                                                    EdgeInsets.only(top: 5.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Kwhite,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: kblack
                                                            .withOpacity(0.2),
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
                                                    errorBorder:
                                                        OutlineInputBorder(
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
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 8),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  hint: Text(
                                                    'Select mode',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color:
                                                          KTextgery.withOpacity(
                                                              0.5),
                                                    ),
                                                  ),
                                                  items: CompanyList.map(
                                                      (item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style: GoogleFonts
                                                                  .poppins(
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
                                                              .value =
                                                          value.toString();

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
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                  ),
                                                  iconStyleData: IconStyleData(
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                    ),
                                                    iconSize: 24,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                                                        controller:
                                                            dashboardcontroller
                                                                .choosenLoanAmountIDController,
                                                        labelColor: KText,
                                                        obscureText: false,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 16,
                                                                horizontal: 8),
                                                        fontSize: kFourteenFont,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        hintText:
                                                            "Enter Txn ID",
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
                                              Obx(
                                                () => dashboardcontroller
                                                            .addFormLoading ==
                                                        true
                                                    ? Center(
                                                        child:
                                                            CircularProgressIndicator(
                                                          color:
                                                              Kform_border_twg,
                                                        ),
                                                      )
                                                    : CustomButton(
                                                        margin: EdgeInsets.only(
                                                            top: 36.h),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r),
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
                                                              DateFormat(
                                                                      "hh:mm a")
                                                                  .format(now);
                                                          setState(() {
                                                            dashboardcontroller
                                                                    .today
                                                                    .value =
                                                                formattedDate +
                                                                    " " +
                                                                    formattedTime;
                                                            print(
                                                                dashboardcontroller
                                                                    .today);
                                                          });
                                                          // var payloadl = {
                                                          //   "Nursery": {
                                                          //     "Loans": {
                                                          //       "Emp_ID":
                                                          //           dashboardcontroller
                                                          //               .loansEmpidController
                                                          //               .text,
                                                          //       "Emp_Name":
                                                          //           dashboardcontroller
                                                          //               .loansEmpnameController
                                                          //               .text,
                                                          //       "Amount": int.tryParse(dashboardcontroller
                                                          //               .loansAmountController
                                                          //               .text) ??
                                                          //           0,
                                                          //       "Payment_Mode":
                                                          //           dashboardcontroller
                                                          //               .choosenLoanAmount
                                                          //               .value,
                                                          //       "Transaction_Id":
                                                          //           dashboardcontroller
                                                          //               .choosenLoanAmountIDController
                                                          //               .text,
                                                          //       "Remarks":
                                                          //           dashboardcontroller
                                                          //               .loansRemarksController
                                                          //               .text,
                                                          //     },
                                                          //     //

                                                          //     "Time": {
                                                          //       "createdTime":
                                                          //           dashboardcontroller
                                                          //               .today
                                                          //               .value,
                                                          //     },
                                                          //     "User": {
                                                          //       "email":
                                                          //           dashboardcontroller
                                                          //               .userEmail
                                                          //               .value,
                                                          //     },
                                                          //   }
                                                          // };
                                                          var payload = {
                                                            'empId':
                                                                dashboardcontroller
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
                                                            'categoryType':
                                                                'loans',
                                                            'formType':
                                                                "nursery",
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
                                                                .addForm(
                                                                    payload);
                                                          }
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
                                                        }),
                                              ),
                                            ])))),
                            isNurseLoans == false ? Divider() : SizedBox(),
                            // ⁠Staff Training Expenses
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
                                  "⁠Staff Training Expenses ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNursestafftraining == false
                                    ? InkWell(
                                        onTap: () {
                                          togglestafftrainingSwitch(true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          togglestafftrainingSwitch(false);
                                        },
                                        child: Icon(Icons.arrow_drop_up))
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ExpandableSection(
                                expand: _isNurserystafftrainingExpandCard,
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
                                        key: _formKeyStafftraining,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Divider(),
                                              CustomFormFields(
                                                ontap: () {},
                                                enabled: true,
                                                keyboardType:
                                                    TextInputType.number,
                                                controller: dashboardcontroller
                                                    .staffTrainingAmountController,
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
                                              // staff train dropdown
                                              //               var choosenStafftrainingAmount = 'cash'.obs;
                                              // TextEditingController choosenstafftrainingAmountIDController =
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
                                                margin:
                                                    EdgeInsets.only(top: 5.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Kwhite,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: kblack
                                                            .withOpacity(0.2),
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
                                                    errorBorder:
                                                        OutlineInputBorder(
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
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 8),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  hint: Text(
                                                    'Select mode',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color:
                                                          KTextgery.withOpacity(
                                                              0.5),
                                                    ),
                                                  ),
                                                  items: CompanyList.map(
                                                      (item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style: GoogleFonts
                                                                  .poppins(
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
                                                          .choosenStafftrainingAmount
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
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                  ),
                                                  iconStyleData: IconStyleData(
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                    ),
                                                    iconSize: 24,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                  ),
                                                ),
                                              ),
                                              //id
                                              // online
                                              dashboardcontroller
                                                          .choosenStafftrainingAmount ==
                                                      "online"
                                                  ? Container(
                                                      margin: EdgeInsets.only(
                                                          top: 10.h),
                                                      child: CustomFormFields(
                                                        ontap: () {},
                                                        enabled: true,
                                                        controller:
                                                            dashboardcontroller
                                                                .choosenstafftrainingAmountIDController,
                                                        labelColor: KText,
                                                        obscureText: false,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 16,
                                                                horizontal: 8),
                                                        fontSize: kFourteenFont,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        hintText:
                                                            "Enter Txn ID",
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
                                              ////
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              CustomFormFields(
                                                ontap: () {},
                                                enabled: true,
                                                controller: dashboardcontroller
                                                    .staffTrainingRemarksController,
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
                                              Obx(() => dashboardcontroller
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
                                                            DateFormat(
                                                                    "hh:mm a")
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
                                                        // var payloadst = {
                                                        //   "Nursery": {
                                                        //     "Staff Training Expenses":
                                                        //         {
                                                        //       "Amount": int.tryParse(
                                                        //               dashboardcontroller
                                                        //                   .staffTrainingAmountController
                                                        //                   .text) ??
                                                        //           0,

                                                        //       ///
                                                        //       "Payment_Mode":
                                                        //           dashboardcontroller
                                                        //               .choosenStafftrainingAmount
                                                        //               .value,
                                                        //       "Transaction_Id":
                                                        //           dashboardcontroller
                                                        //               .choosenstafftrainingAmountIDController
                                                        //               .text,
                                                        //       //
                                                        //       "Remarks":
                                                        //           dashboardcontroller
                                                        //               .staffTrainingRemarksController
                                                        //               .text,
                                                        //     },
                                                        //     "Time": {
                                                        //       "createdTime":
                                                        //           dashboardcontroller
                                                        //               .today
                                                        //               .value,
                                                        //     },
                                                        //     "User": {
                                                        //       "email":
                                                        //           dashboardcontroller
                                                        //               .userEmail
                                                        //               .value,
                                                        //     },
                                                        //   }
                                                        // };
                                                        var payload = {
                                                          'amount':
                                                              dashboardcontroller
                                                                  .staffTrainingAmountController
                                                                  .text,
                                                          'paymentMode':
                                                              dashboardcontroller
                                                                  .choosenStafftrainingAmount
                                                                  .value,
                                                          'categoryType':
                                                              'stafftrainingexpenses',
                                                          'formType': "nursery",
                                                          'remarks':
                                                              dashboardcontroller
                                                                  .staffTrainingRemarksController
                                                                  .text,
                                                          'transcationId':
                                                              dashboardcontroller
                                                                  .choosenstafftrainingAmountIDController
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
                                                        if (_formKeyStafftraining
                                                            .currentState!
                                                            .validate()) {
                                                          dashboardcontroller
                                                              .addFormExp(
                                                                  payload);
                                                          dashboardcontroller
                                                              .staffTrainingAmountController
                                                              .clear();
                                                          dashboardcontroller
                                                              .choosenstafftrainingAmountIDController
                                                              .clear();
                                                          dashboardcontroller
                                                              .staffTrainingRemarksController
                                                              .clear();
                                                        }

                                                        // if (_formKey.currentState!.validate()) {
                                                        //   dashboardcontroller.addForm(payload);
                                                        // }
                                                      })),
                                            ])))),
                            isNursestafftraining == false
                                ? Divider()
                                : SizedBox(),

                            //
                            SizedBox(
                              height: 20.h,
                            ),
                            // Text(
                            //   "⁠Utilities",
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
                                  "⁠Utilities",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNurseUtilities == false
                                    ? InkWell(
                                        onTap: () {
                                          toggleUtilitiesSwitch(true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          toggleUtilitiesSwitch(false);
                                        },
                                        child: Icon(Icons.arrow_drop_up))
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ExpandableSection(
                                expand: _isNurseryUtilitiesExpandCard,
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
                                        key: _formKeyNurseryUtilities,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Divider(),
                                              CustomFormFields(
                                                ontap: () {},
                                                enabled: true,
                                                keyboardType:
                                                    TextInputType.number,
                                                controller: dashboardcontroller
                                                    .utiliteisAmountController,
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
                                              // utilities drop down
                                              //               var choosenUtilitiesAmount = 'cash'.obs;
                                              // TextEditingController choosenUtilitiesAmountIDController =
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
                                                margin:
                                                    EdgeInsets.only(top: 5.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Kwhite,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: kblack
                                                            .withOpacity(0.2),
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
                                                    errorBorder:
                                                        OutlineInputBorder(
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
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 8),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  hint: Text(
                                                    'Select mode',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color:
                                                          KTextgery.withOpacity(
                                                              0.5),
                                                    ),
                                                  ),
                                                  items: CompanyList.map(
                                                      (item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style: GoogleFonts
                                                                  .poppins(
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
                                                          .choosenUtilitiesAmount
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
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                  ),
                                                  iconStyleData: IconStyleData(
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                    ),
                                                    iconSize: 24,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                  ),
                                                ),
                                              ),
                                              //id
                                              // online
                                              dashboardcontroller
                                                          .choosenUtilitiesAmount ==
                                                      "online"
                                                  ? Container(
                                                      margin: EdgeInsets.only(
                                                          top: 10.h),
                                                      child: CustomFormFields(
                                                        ontap: () {},
                                                        enabled: true,
                                                        controller:
                                                            dashboardcontroller
                                                                .choosenUtilitiesAmountIDController,
                                                        labelColor: KText,
                                                        obscureText: false,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 16,
                                                                horizontal: 8),
                                                        fontSize: kFourteenFont,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        hintText:
                                                            "Enter Txn ID",
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
                                                    .utiliteisRemarksController,
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
                                                          color:
                                                              Kform_border_twg,
                                                        ),
                                                      )
                                                    : CustomButton(
                                                        margin: EdgeInsets.only(
                                                            top: 36.h),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r),
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
                                                              DateFormat(
                                                                      "hh:mm a")
                                                                  .format(now);
                                                          setState(() {
                                                            dashboardcontroller
                                                                    .today
                                                                    .value =
                                                                formattedDate +
                                                                    " " +
                                                                    formattedTime;
                                                            print(
                                                                dashboardcontroller
                                                                    .today);
                                                          });
                                                          var payloadu = {
                                                            "Nursery": {
                                                              "Utilities": {
                                                                "Amount": int.tryParse(dashboardcontroller
                                                                        .utiliteisAmountController
                                                                        .text) ??
                                                                    0,

                                                                "Payment_Mode":
                                                                    dashboardcontroller
                                                                        .choosenUtilitiesAmount
                                                                        .value,
                                                                "Transaction_Id":
                                                                    dashboardcontroller
                                                                        .choosenUtilitiesAmountIDController
                                                                        .text,
                                                                //
                                                                "Remarks":
                                                                    dashboardcontroller
                                                                        .utiliteisRemarksController
                                                                        .text,
                                                              },
                                                              "Time": {
                                                                "createdTime":
                                                                    dashboardcontroller
                                                                        .today
                                                                        .value,
                                                              },
                                                              "User": {
                                                                "email":
                                                                    dashboardcontroller
                                                                        .userEmail
                                                                        .value,
                                                              },
                                                            }
                                                          };
                                                          var payload = {
                                                            'amount':
                                                                dashboardcontroller
                                                                    .utiliteisAmountController
                                                                    .text,
                                                            'paymentMode':
                                                                dashboardcontroller
                                                                    .choosenUtilitiesAmount
                                                                    .value,
                                                            'categoryType':
                                                                'utilities',
                                                            'formType':
                                                                "nursery",
                                                            'remarks':
                                                                dashboardcontroller
                                                                    .utiliteisRemarksController
                                                                    .text,
                                                            'transcationId':
                                                                dashboardcontroller
                                                                    .choosenUtilitiesAmountIDController
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

                                                          if (_formKeyNurseryUtilities
                                                              .currentState!
                                                              .validate()) {
                                                            dashboardcontroller
                                                                .addFormExp(
                                                                    payload);
                                                            dashboardcontroller
                                                                .utiliteisAmountController
                                                                .clear();
                                                            dashboardcontroller
                                                                .choosenUtilitiesAmountIDController
                                                                .clear();
                                                            dashboardcontroller
                                                                .utiliteisRemarksController
                                                                .clear();
                                                          }

                                                          // if (_formKey.currentState!.validate()) {
                                                          //   dashboardcontroller.addForm(payload);
                                                          // }
                                                        }),
                                              ),
                                            ])))),
                            isNurseUtilities == false ? Divider() : SizedBox(),

                            //// ⁠Stationery
                            SizedBox(
                              height: 20.h,
                            ),
                            // Text(
                            //   "⁠Stationery",
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
                                  "⁠Stationery",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNurseFixedSalary == false
                                    ? InkWell(
                                        onTap: () {
                                          togglestationarySwitch(true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          togglestationarySwitch(false);
                                        },
                                        child: Icon(Icons.arrow_drop_up))
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ExpandableSection(
                                expand: _isNurserystationaryExpandCard,
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
                                        key: _formKeyNurseryStationary,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Divider(),
                                              CustomFormFields(
                                                ontap: () {},
                                                enabled: true,
                                                keyboardType:
                                                    TextInputType.number,
                                                controller: dashboardcontroller
                                                    .stationaneryAmountController,
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
                                              // stationary
                                              //               var choosenStationaryAmount = 'cash'.obs;
                                              // TextEditingController choosenStationaryAmountIDController =
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
                                                margin:
                                                    EdgeInsets.only(top: 5.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Kwhite,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: kblack
                                                            .withOpacity(0.2),
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
                                                    errorBorder:
                                                        OutlineInputBorder(
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
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 8),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  hint: Text(
                                                    'Select mode',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color:
                                                          KTextgery.withOpacity(
                                                              0.5),
                                                    ),
                                                  ),
                                                  items: CompanyList.map(
                                                      (item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style: GoogleFonts
                                                                  .poppins(
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
                                                          .choosenStationaryAmount
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
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                  ),
                                                  iconStyleData: IconStyleData(
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                    ),
                                                    iconSize: 24,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                  ),
                                                ),
                                              ),
                                              //id
                                              // online
                                              dashboardcontroller
                                                          .choosenStationaryAmount ==
                                                      "online"
                                                  ? Container(
                                                      margin: EdgeInsets.only(
                                                          top: 10.h),
                                                      child: CustomFormFields(
                                                        ontap: () {},
                                                        enabled: true,
                                                        controller:
                                                            dashboardcontroller
                                                                .choosenStationaryAmountIDController,
                                                        labelColor: KText,
                                                        obscureText: false,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 16,
                                                                horizontal: 8),
                                                        fontSize: kFourteenFont,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        hintText:
                                                            "Enter Txn ID",
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
                                                    .stationaneryremarksController,
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
                                                          color:
                                                              Kform_border_twg,
                                                        ),
                                                      )
                                                    : CustomButton(
                                                        margin: EdgeInsets.only(
                                                            top: 36.h),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r),
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
                                                              DateFormat(
                                                                      "hh:mm a")
                                                                  .format(now);
                                                          setState(() {
                                                            dashboardcontroller
                                                                    .today
                                                                    .value =
                                                                formattedDate +
                                                                    " " +
                                                                    formattedTime;
                                                            print(
                                                                dashboardcontroller
                                                                    .today);
                                                          });
                                                          // var payloadst = {
                                                          //   "Nursery": {
                                                          //     "Stationery": {
                                                          //       "Amount": int.tryParse(dashboardcontroller
                                                          //               .stationaneryAmountController
                                                          //               .text) ??
                                                          //           0,

                                                          //       "Payment_Mode":
                                                          //           dashboardcontroller
                                                          //               .choosenStationaryAmount
                                                          //               .value,
                                                          //       "Transaction_Id":
                                                          //           dashboardcontroller
                                                          //               .choosenStationaryAmountIDController
                                                          //               .text,
                                                          //       //
                                                          //       "Remarks":
                                                          //           dashboardcontroller
                                                          //               .stationaneryremarksController
                                                          //               .text,
                                                          //     },

                                                          //     "Time": {
                                                          //       "createdTime":
                                                          //           dashboardcontroller
                                                          //               .today
                                                          //               .value,
                                                          //     },
                                                          //     "User": {
                                                          //       "email":
                                                          //           dashboardcontroller
                                                          //               .userEmail
                                                          //               .value,
                                                          //     },
                                                          //     //  "createdTime": today.value
                                                          //   }
                                                          // };
                                                          var payload = {
                                                            'amount':
                                                                dashboardcontroller
                                                                    .stationaneryAmountController
                                                                    .text,
                                                            'paymentMode':
                                                                dashboardcontroller
                                                                    .choosenStationaryAmount
                                                                    .value,
                                                            'categoryType':
                                                                'stationery',
                                                            'formType':
                                                                "nursery",
                                                            'remarks':
                                                                dashboardcontroller
                                                                    .stationaneryremarksController
                                                                    .text,
                                                            'transcationId':
                                                                dashboardcontroller
                                                                    .choosenStationaryAmountIDController
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

                                                          if (_formKeyNurseryStationary
                                                              .currentState!
                                                              .validate()) {
                                                            dashboardcontroller
                                                                .addFormExp(
                                                                    payload);
                                                            dashboardcontroller
                                                                .stationaneryAmountController
                                                                .clear();
                                                            dashboardcontroller
                                                                .choosenStationaryAmountIDController
                                                                .clear();
                                                            dashboardcontroller
                                                                .stationaneryremarksController
                                                                .clear();
                                                          }

                                                          // if (_formKey.currentState!.validate()) {
                                                          //   dashboardcontroller.addForm(payload);
                                                          // }
                                                        }),
                                              ),
                                            ])))),
                            isNurserystationary == false
                                ? Divider()
                                : SizedBox(),
                            // ⁠Food and Beverages
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
                                  "⁠Food and Beverages",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNurseryfoodBeverages == false
                                    ? InkWell(
                                        onTap: () {
                                          togglefoodBeveragesSwitch(true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          togglefoodBeveragesSwitch(false);
                                        },
                                        child: Icon(Icons.arrow_drop_up))
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ExpandableSection(
                                expand: _isNurseryfoodBeveragesExpandCard,
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
                                        key: _formKeyFoodBeverages,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Divider(),
                                              CustomFormFields(
                                                ontap: () {},
                                                enabled: true,
                                                keyboardType:
                                                    TextInputType.number,
                                                controller: dashboardcontroller
                                                    .foodBeveragesAmountController,
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
                                              //   var choosenfoodbeveragesAmount = 'cash'.obs;
                                              // TextEditingController choosenFoodbeveragesAmountIDController =
                                              //     TextEditingController();
                                              ////////////
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
                                                margin:
                                                    EdgeInsets.only(top: 5.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Kwhite,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: kblack
                                                            .withOpacity(0.2),
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
                                                    errorBorder:
                                                        OutlineInputBorder(
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
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 8),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  hint: Text(
                                                    'Select mode',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color:
                                                          KTextgery.withOpacity(
                                                              0.5),
                                                    ),
                                                  ),
                                                  items: CompanyList.map(
                                                      (item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style: GoogleFonts
                                                                  .poppins(
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
                                                          .choosenfoodbeveragesAmount
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
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                  ),
                                                  iconStyleData: IconStyleData(
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                    ),
                                                    iconSize: 24,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                  ),
                                                ),
                                              ),
                                              //id
                                              // online
                                              dashboardcontroller
                                                          .choosenfoodbeveragesAmount ==
                                                      "online"
                                                  ? Container(
                                                      margin: EdgeInsets.only(
                                                          top: 10.h),
                                                      child: CustomFormFields(
                                                        ontap: () {},
                                                        enabled: true,
                                                        controller:
                                                            dashboardcontroller
                                                                .choosenFoodbeveragesAmountIDController,
                                                        labelColor: KText,
                                                        obscureText: false,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 16,
                                                                horizontal: 8),
                                                        fontSize: kFourteenFont,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        hintText:
                                                            "Enter Txn ID",
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
                                              /////
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              CustomFormFields(
                                                ontap: () {},
                                                enabled: true,
                                                controller: dashboardcontroller
                                                    .foodBeveragesremarksController,
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
                                                          color:
                                                              Kform_border_twg,
                                                        ),
                                                      )
                                                    : CustomButton(
                                                        margin: EdgeInsets.only(
                                                            top: 36.h),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r),
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
                                                              DateFormat(
                                                                      "hh:mm a")
                                                                  .format(now);
                                                          setState(() {
                                                            dashboardcontroller
                                                                    .today
                                                                    .value =
                                                                formattedDate +
                                                                    " " +
                                                                    formattedTime;
                                                            print(
                                                                dashboardcontroller
                                                                    .today);
                                                          });
                                                          // var payloadfb = {
                                                          //   "Nursery": {
                                                          //     "Food and Beverages":
                                                          //         {
                                                          //       "Amount": int.tryParse(dashboardcontroller
                                                          //               .foodBeveragesAmountController
                                                          //               .text) ??
                                                          //           0,

                                                          //       ///
                                                          //       "Payment_Mode":
                                                          //           dashboardcontroller
                                                          //               .choosenfoodbeveragesAmount
                                                          //               .value,
                                                          //       "Transaction_Id":
                                                          //           dashboardcontroller
                                                          //               .choosenFoodbeveragesAmountIDController
                                                          //               .text,
                                                          //       //
                                                          //       "Remarks":
                                                          //           dashboardcontroller
                                                          //               .foodBeveragesremarksController
                                                          //               .text,
                                                          //     },

                                                          //     "Time": {
                                                          //       "createdTime":
                                                          //           dashboardcontroller
                                                          //               .today
                                                          //               .value,
                                                          //     },
                                                          //     "User": {
                                                          //       "email":
                                                          //           dashboardcontroller
                                                          //               .userEmail
                                                          //               .value,
                                                          //     },
                                                          //     //  "createdTime": today.value
                                                          //   }
                                                          // };
                                                          var payload = {
                                                            'amount':
                                                                dashboardcontroller
                                                                    .foodBeveragesAmountController
                                                                    .text,
                                                            'paymentMode':
                                                                dashboardcontroller
                                                                    .choosenfoodbeveragesAmount
                                                                    .value,
                                                            'categoryType':
                                                                'foodandBeverages',
                                                            'formType':
                                                                "nursery",
                                                            'remarks':
                                                                dashboardcontroller
                                                                    .foodBeveragesremarksController
                                                                    .text,
                                                            'transcationId':
                                                                dashboardcontroller
                                                                    .choosenFoodbeveragesAmountIDController
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
                                                          if (_formKeyFoodBeverages
                                                              .currentState!
                                                              .validate()) {
                                                            dashboardcontroller
                                                                .addFormExp(
                                                                    payload);
                                                            dashboardcontroller
                                                                .foodBeveragesAmountController
                                                                .clear();
                                                            dashboardcontroller
                                                                .choosenFoodbeveragesAmountIDController
                                                                .clear();
                                                            dashboardcontroller
                                                                .foodBeveragesremarksController
                                                                .clear();
                                                          }

                                                          // if (_formKey.currentState!.validate()) {
                                                          //   dashboardcontroller.addForm(payload);
                                                          // }
                                                        }),
                                              ),
                                            ])))),

                            isNurseryfoodBeverages == false
                                ? Divider()
                                : SizedBox(),

                            // Groceries
                            SizedBox(
                              height: 20.h,
                            ),
                            // Text(
                            //   "⁠Groceries",
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
                                  "⁠Groceries",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNurseryGroceries == false
                                    ? InkWell(
                                        onTap: () {
                                          toggleGroceriesSwitch(true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          toggleGroceriesSwitch(false);
                                        },
                                        child: Icon(Icons.arrow_drop_up))
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ExpandableSection(
                                expand: _isNurseryGroceriesExpandCard,
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
                                        key: _formKeyGroceries,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Divider(),
                                              CustomFormFields(
                                                ontap: () {},
                                                enabled: true,
                                                keyboardType:
                                                    TextInputType.number,
                                                controller: dashboardcontroller
                                                    .groceriesBeveragesAmountController,
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
                                              //grocrer dropdown
                                              //               var choosenGroceriesAmount = 'cash'.obs;
                                              // TextEditingController choosenGroceriesAmountIDController =
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
                                                margin:
                                                    EdgeInsets.only(top: 5.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    color: Kwhite,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: kblack
                                                            .withOpacity(0.2),
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
                                                    errorBorder:
                                                        OutlineInputBorder(
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
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Kform_border_twg,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.r),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            vertical: 10,
                                                            horizontal: 8),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  hint: Text(
                                                    'Select mode',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      color:
                                                          KTextgery.withOpacity(
                                                              0.5),
                                                    ),
                                                  ),
                                                  items: CompanyList.map(
                                                      (item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style: GoogleFonts
                                                                  .poppins(
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
                                                          .choosenGroceriesAmount
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
                                                    padding: EdgeInsets.only(
                                                        right: 8),
                                                  ),
                                                  iconStyleData: IconStyleData(
                                                    icon: Icon(
                                                      Icons.arrow_drop_down,
                                                      color: kblack
                                                          .withOpacity(0.6),
                                                    ),
                                                    iconSize: 24,
                                                  ),
                                                  dropdownStyleData:
                                                      DropdownStyleData(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                  ),
                                                ),
                                              ),
                                              //id
                                              // online
                                              dashboardcontroller
                                                          .choosenGroceriesAmount ==
                                                      "online"
                                                  ? Container(
                                                      margin: EdgeInsets.only(
                                                          top: 10.h),
                                                      child: CustomFormFields(
                                                        ontap: () {},
                                                        enabled: true,
                                                        controller:
                                                            dashboardcontroller
                                                                .choosenGroceriesAmountIDController,
                                                        labelColor: KText,
                                                        obscureText: false,
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 16,
                                                                horizontal: 8),
                                                        fontSize: kFourteenFont,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        hintText:
                                                            "Enter Txn ID",
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
                                              ////
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              CustomFormFields(
                                                ontap: () {},
                                                enabled: true,
                                                controller: dashboardcontroller
                                                    .groceriesremarksController,
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
                                                          color:
                                                              Kform_border_twg,
                                                        ),
                                                      )
                                                    : CustomButton(
                                                        margin: EdgeInsets.only(
                                                            top: 36.h),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r),
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
                                                              DateFormat(
                                                                      "hh:mm a")
                                                                  .format(now);
                                                          setState(() {
                                                            dashboardcontroller
                                                                    .today
                                                                    .value =
                                                                formattedDate +
                                                                    " " +
                                                                    formattedTime;
                                                            print(
                                                                dashboardcontroller
                                                                    .today);
                                                          });
                                                          var payloadgr = {
                                                            "Nursery": {
                                                              "Groceries": {
                                                                "Amount": int.tryParse(dashboardcontroller
                                                                        .groceriesBeveragesAmountController
                                                                        .text) ??
                                                                    0,

                                                                ///
                                                                "Payment_Mode":
                                                                    dashboardcontroller
                                                                        .choosenGroceriesAmount
                                                                        .value,
                                                                "Transaction_Id":
                                                                    dashboardcontroller
                                                                        .choosenGroceriesAmountIDController
                                                                        .text,
                                                                //
                                                                "Remarks":
                                                                    dashboardcontroller
                                                                        .groceriesremarksController
                                                                        .text,
                                                              },

                                                              "Time": {
                                                                "createdTime":
                                                                    dashboardcontroller
                                                                        .today
                                                                        .value,
                                                              },
                                                              "User": {
                                                                "email":
                                                                    dashboardcontroller
                                                                        .userEmail
                                                                        .value,
                                                              },
                                                              //  "createdTime": today.value
                                                            }
                                                          };

                                                          /// new
                                                          var payload = {
                                                            'amount':
                                                                dashboardcontroller
                                                                    .groceriesBeveragesAmountController
                                                                    .text,
                                                            'paymentMode':
                                                                dashboardcontroller
                                                                    .choosenGroceriesAmount
                                                                    .value,
                                                            'categoryType':
                                                                'groceries',
                                                            'formType':
                                                                "nursery",
                                                            'remarks':
                                                                dashboardcontroller
                                                                    .groceriesremarksController
                                                                    .text,
                                                            'transcationId':
                                                                dashboardcontroller
                                                                    .choosenGroceriesAmountIDController
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
/////
                                                          if (_formKeyGroceries
                                                              .currentState!
                                                              .validate()) {
                                                            dashboardcontroller
                                                                .addFormExp(
                                                                    payload);
                                                            dashboardcontroller
                                                                .groceriesBeveragesAmountController
                                                                .clear();
                                                            dashboardcontroller
                                                                .choosenGroceriesAmountIDController
                                                                .clear();
                                                            dashboardcontroller
                                                                .groceriesremarksController
                                                                .clear();
                                                          }
                                                        }),
                                              ),
                                            ])))),
                            isNurseryGroceries == false
                                ? Divider()
                                : SizedBox(),
                            // ⁠Water Supplie
                            SizedBox(
                              height: 20.h,
                            ),
                            // Text(
                            //   "⁠Water Supplie",
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
                                  "⁠Water Supplie",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNurseryWaterSupply == false
                                    ? InkWell(
                                        onTap: () {
                                          toggleWatersupplySwitch(true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          toggleWatersupplySwitch(false);
                                        },
                                        child: Icon(Icons.arrow_drop_up))
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ExpandableSection(
                                expand: _isNurseryWaterSupplyExpandCard,
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
                                      key: _formKeyWaterSuppli,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Divider(),
                                            CustomFormFields(
                                              ontap: () {},
                                              enabled: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: dashboardcontroller
                                                  .watersuppliAmountController,
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
                                            // water supply
                                            //               var choosenWtersupplyAmount = 'cash'.obs;
                                            // TextEditingController choosenwaterSupplyAmountIDController =
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
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Kwhite,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: kblack
                                                          .withOpacity(0.2),
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
                                                  errorBorder:
                                                      OutlineInputBorder(
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
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 8),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                hint: Text(
                                                  'Select mode',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color:
                                                        KTextgery.withOpacity(
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
                                                        .choosenWtersupplyAmount
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
                                                        BorderRadius.circular(
                                                            15),
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
                                                        .choosenWtersupplyAmount ==
                                                    "online"
                                                ? Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10.h),
                                                    child: CustomFormFields(
                                                      ontap: () {},
                                                      enabled: true,
                                                      controller:
                                                          dashboardcontroller
                                                              .choosenwaterSupplyAmountIDController,
                                                      labelColor: KText,
                                                      obscureText: false,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16,
                                                              horizontal: 8),
                                                      fontSize: kFourteenFont,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  .watersuppliremarksController,
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
                                                            DateFormat(
                                                                    "hh:mm a")
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
                                                          "Nursery": {
                                                            //
                                                            //                              var choosenfixedSalaryAmount = 'cash'.obs;
                                                            // TextEditingController fixedSalaryAmountIDController = TextEditingController();

                                                            "Water Supplies": {
                                                              "Amount": int.tryParse(
                                                                      dashboardcontroller
                                                                          .watersuppliAmountController
                                                                          .text) ??
                                                                  0,

                                                              ///
                                                              "Payment_Mode":
                                                                  dashboardcontroller
                                                                      .choosenWtersupplyAmount
                                                                      .value,
                                                              "Transaction_Id":
                                                                  dashboardcontroller
                                                                      .choosenwaterSupplyAmountIDController
                                                                      .text,
                                                              //
                                                              "Remarks":
                                                                  dashboardcontroller
                                                                      .watersuppliremarksController
                                                                      .text,
                                                              // "fields": [
                                                              //   {"name": "Amount", "required": true},
                                                              //   {"name": "Remarks", "required": false}
                                                              // ]
                                                            },
                                                            //
                                                            //                               var choosenMaintenanceAndrepairsAmount = 'cash'.obs;
                                                            // TextEditingController choosenMaintenanceAndrepairsAmountIDController =
                                                            //     TextEditingController();
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
                                                          'amount':
                                                              dashboardcontroller
                                                                  .watersuppliAmountController
                                                                  .text,
                                                          'paymentMode':
                                                              dashboardcontroller
                                                                  .choosenWtersupplyAmount
                                                                  .value,
                                                          'categoryType':
                                                              'watersupplie',
                                                          'formType': "nursery",
                                                          'remarks':
                                                              dashboardcontroller
                                                                  .watersuppliremarksController
                                                                  .text,
                                                          'transcationId':
                                                              dashboardcontroller
                                                                  .choosenwaterSupplyAmountIDController
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
                                                        if (_formKeyWaterSuppli
                                                            .currentState!
                                                            .validate()) {
                                                          dashboardcontroller
                                                              .addFormExp(
                                                                  payload);

                                                          dashboardcontroller
                                                              .watersuppliAmountController
                                                              .clear();
                                                          dashboardcontroller
                                                              .choosenwaterSupplyAmountIDController
                                                              .clear();

                                                          dashboardcontroller
                                                              .watersuppliremarksController
                                                              .clear();
                                                        }

                                                        // if (_formKey.currentState!.validate()) {
                                                        //   dashboardcontroller.addForm(payload);
                                                        // }
                                                      }),
                                            ),

                                            // button here

                                            // button end
                                          ]),
                                    ))),
                            //
                            isNurseryWaterSupply == false
                                ? Divider()
                                : SizedBox(),

                            //
                            SizedBox(
                              height: 20.h,
                            ),
                            // Text(
                            //   "⁠Maintenance and Repairs",
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
                                  "⁠Maintenance and Repairs",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNurseryMaintenenceAndrepairsSupply == false
                                    ? InkWell(
                                        onTap: () {
                                          toggleMaintenenceAndrepairsSwitch(
                                              true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          toggleMaintenenceAndrepairsSwitch(
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
                                    _isNurseryMaintenenceAndrepairsExpandCard,
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
                                      key: _formKeyMaintenenceAndrepairs,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Divider(),

                                            CustomFormFields(
                                              ontap: () {},
                                              enabled: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: dashboardcontroller
                                                  .maintanaceRepairsAmountController,
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
                                            // drop down
                                            //               var choosenMaintenanceAndrepairsAmount = 'cash'.obs;
                                            // TextEditingController choosenMaintenanceAndrepairsAmountIDController =
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
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Kwhite,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: kblack
                                                          .withOpacity(0.2),
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
                                                  errorBorder:
                                                      OutlineInputBorder(
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
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 8),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                hint: Text(
                                                  'Select mode',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color:
                                                        KTextgery.withOpacity(
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
                                                        .choosenMaintenanceAndrepairsAmount
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
                                                        BorderRadius.circular(
                                                            15),
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
                                                        .choosenMaintenanceAndrepairsAmount ==
                                                    "online"
                                                ? Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10.h),
                                                    child: CustomFormFields(
                                                      ontap: () {},
                                                      enabled: true,
                                                      controller:
                                                          dashboardcontroller
                                                              .choosenMaintenanceAndrepairsAmountIDController,
                                                      labelColor: KText,
                                                      obscureText: false,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16,
                                                              horizontal: 8),
                                                      fontSize: kFourteenFont,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  .maintanaceRepairsRemarksController,
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
                                                            DateFormat(
                                                                    "hh:mm a")
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
                                                        // var payloadmr = {
                                                        //   "Nursery": {
                                                        //     "Maintenance and Repairs":
                                                        //         {
                                                        //       "Amount": int.tryParse(
                                                        //               dashboardcontroller
                                                        //                   .maintanaceRepairsAmountController
                                                        //                   .text) ??
                                                        //           0,

                                                        //       ///
                                                        //       "Payment_Mode":
                                                        //           dashboardcontroller
                                                        //               .choosenMaintenanceAndrepairsAmount
                                                        //               .value,
                                                        //       "Transaction_Id":
                                                        //           dashboardcontroller
                                                        //               .choosenMaintenanceAndrepairsAmountIDController
                                                        //               .text,
                                                        //       //
                                                        //       "Remarks":
                                                        //           dashboardcontroller
                                                        //               .maintanaceRepairsRemarksController
                                                        //               .text,
                                                        //     },

                                                        //     "Time": {
                                                        //       "createdTime":
                                                        //           dashboardcontroller
                                                        //               .today
                                                        //               .value,
                                                        //     },
                                                        //     "User": {
                                                        //       "email":
                                                        //           dashboardcontroller
                                                        //               .userEmail
                                                        //               .value,

                                                        //       // "fields": [
                                                        //       //   {"name": "Amount", "required": true},
                                                        //       //   {"name": "Remarks", "required": false}
                                                        //       // ]
                                                        //     },
                                                        //     //  "createdTime": today.value
                                                        //   }
                                                        // };
                                                        var payload = {
                                                          'amount':
                                                              dashboardcontroller
                                                                  .maintanaceRepairsAmountController
                                                                  .text,
                                                          'paymentMode':
                                                              dashboardcontroller
                                                                  .choosenMaintenanceAndrepairsAmount
                                                                  .value,
                                                          'categoryType':
                                                              'maintenanceandrepair',
                                                          'formType': "nursery",
                                                          'remarks':
                                                              dashboardcontroller
                                                                  .maintanaceRepairsRemarksController
                                                                  .text,
                                                          'transcationId':
                                                              dashboardcontroller
                                                                  .choosenMaintenanceAndrepairsAmountIDController
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

                                                        if (_formKeyMaintenenceAndrepairs
                                                            .currentState!
                                                            .validate()) {
                                                          dashboardcontroller
                                                              .addFormExp(
                                                                  payload);

                                                          dashboardcontroller
                                                              .maintanaceRepairsAmountController
                                                              .clear();
                                                          dashboardcontroller
                                                              .choosenMaintenanceAndrepairsAmountIDController
                                                              .clear();
                                                          dashboardcontroller
                                                              .maintanaceRepairsRemarksController
                                                              .clear();
                                                        }

                                                        // if (_formKey.currentState!.validate()) {
                                                        //   dashboardcontroller.addForm(payload);
                                                        // }
                                                      }),
                                            ),

                                            // button here

                                            // button end
                                          ]),
                                    ))),
                            //
                            isNurseryMaintenenceAndrepairsSupply == false
                                ? Divider()
                                : SizedBox(),

                            // ⁠Vehicle Maintenance
                            SizedBox(
                              height: 20.h,
                            ),
                            // Text(
                            //   "⁠Vehicle Maintenance",
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
                                  "⁠Vehicle Maintenance",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNurseryVehicleMaintenanceSupply == false
                                    ? InkWell(
                                        onTap: () {
                                          toggleVehicleMaintenanceSwitch(true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          toggleVehicleMaintenanceSwitch(false);
                                        },
                                        child: Icon(Icons.arrow_drop_up))
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ExpandableSection(
                                expand: _isNurseryVehiclemaintenceExpandCard,
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
                                      key: _formKeyNurseryVehicleMaintenance,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Divider(),
                                            CustomFormFields(
                                              ontap: () {},
                                              enabled: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: dashboardcontroller
                                                  .vehicleMaintenanceAmountController,
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
                                            // drop down
                                            //             var choosenVehicleMaintenanceAmount = 'cash'.obs;
                                            // TextEditingController choosenVehicleMaintennceAmountIDController =
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
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Kwhite,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: kblack
                                                          .withOpacity(0.2),
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
                                                  errorBorder:
                                                      OutlineInputBorder(
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
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 8),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                hint: Text(
                                                  'Select mode',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color:
                                                        KTextgery.withOpacity(
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
                                                        .choosenVehicleMaintenanceAmount
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
                                                        BorderRadius.circular(
                                                            15),
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
                                                        .choosenVehicleMaintenanceAmount ==
                                                    "online"
                                                ? Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10.h),
                                                    child: CustomFormFields(
                                                      ontap: () {},
                                                      enabled: true,
                                                      controller:
                                                          dashboardcontroller
                                                              .choosenVehicleMaintennceAmountIDController,
                                                      labelColor: KText,
                                                      obscureText: false,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16,
                                                              horizontal: 8),
                                                      fontSize: kFourteenFont,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  .vehicleMaintenanceRemarksController,
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
                                                            DateFormat(
                                                                    "hh:mm a")
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
                                                        // var payloadvm = {
                                                        //   "Nursery": {
                                                        //     "Vehicle Maintenance":
                                                        //         {
                                                        //       "Amount": int.tryParse(
                                                        //               dashboardcontroller
                                                        //                   .vehicleMaintenanceAmountController
                                                        //                   .text) ??
                                                        //           0,

                                                        //       ///
                                                        //       "Payment_Mode":
                                                        //           dashboardcontroller
                                                        //               .choosenVehicleMaintenanceAmount
                                                        //               .value,
                                                        //       "Transaction_Id":
                                                        //           dashboardcontroller
                                                        //               .choosenVehicleMaintennceAmountIDController
                                                        //               .text,
                                                        //       //
                                                        //       "Remarks":
                                                        //           dashboardcontroller
                                                        //               .vehicleMaintenanceRemarksController
                                                        //               .text,
                                                        //     },

                                                        //     "Time": {
                                                        //       "createdTime":
                                                        //           dashboardcontroller
                                                        //               .today
                                                        //               .value,
                                                        //     },
                                                        //     "User": {
                                                        //       "email":
                                                        //           dashboardcontroller
                                                        //               .userEmail
                                                        //               .value,
                                                        //     },
                                                        //     //  "createdTime": today.value
                                                        //   }
                                                        // };
                                                        var payload = {
                                                          'amount':
                                                              dashboardcontroller
                                                                  .vehicleMaintenanceAmountController
                                                                  .text,
                                                          'paymentMode':
                                                              dashboardcontroller
                                                                  .choosenVehicleMaintenanceAmount
                                                                  .value,
                                                          'categoryType':
                                                              'vechiclemaintenance',
                                                          'formType': "nursery",
                                                          'remarks':
                                                              dashboardcontroller
                                                                  .vehicleMaintenanceRemarksController
                                                                  .text,
                                                          'transcationId':
                                                              dashboardcontroller
                                                                  .choosenVehicleMaintennceAmountIDController
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
                                                        if (_formKeyNurseryVehicleMaintenance
                                                            .currentState!
                                                            .validate()) {
                                                          dashboardcontroller
                                                              .addFormExp(
                                                                  payload);

                                                          dashboardcontroller
                                                              .vehicleMaintenanceAmountController
                                                              .clear();
                                                          dashboardcontroller
                                                              .choosenVehicleMaintennceAmountIDController
                                                              .clear();
                                                          dashboardcontroller
                                                              .vehicleMaintenanceRemarksController
                                                              .clear();
                                                        }

                                                        // if (_formKey.currentState!.validate()) {
                                                        //   dashboardcontroller.addForm(payload);
                                                        // }
                                                      }),
                                            ),
                                            // button here

                                            // button end
                                          ]),
                                    ))),
                            //
                            isNurseryVehicleMaintenanceSupply == false
                                ? Divider()
                                : SizedBox(),

                            // ⁠Fuel Costs
                            SizedBox(
                              height: 20.h,
                            ),
                            // Text(
                            //   "⁠Miscellaneous",
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
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: dashboardcontroller
                                                  .miscellaneousAmounrController,
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
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Kwhite,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: kblack
                                                          .withOpacity(0.2),
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
                                                  errorBorder:
                                                      OutlineInputBorder(
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
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 8),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                hint: Text(
                                                  'Select mode',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color:
                                                        KTextgery.withOpacity(
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
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                  ),
                                                  iconSize: 24,
                                                ),
                                                dropdownStyleData:
                                                    DropdownStyleData(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
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
                                                    margin: EdgeInsets.only(
                                                        top: 10.h),
                                                    child: CustomFormFields(
                                                      ontap: () {},
                                                      enabled: true,
                                                      controller:
                                                          dashboardcontroller
                                                              .choosenMiscellineousAmountIDController,
                                                      labelColor: KText,
                                                      obscureText: false,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16,
                                                              horizontal: 8),
                                                      fontSize: kFourteenFont,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                            DateFormat(
                                                                    "dd-MM-yyyy")
                                                                .format(now);
                                                        String formattedTime =
                                                            DateFormat(
                                                                    "hh:mm a")
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
                                                        var payloadms = {
                                                          "Nursery": {
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
                                                            },

                                                            "Time": {
                                                              "createdTime":
                                                                  dashboardcontroller
                                                                      .today
                                                                      .value,
                                                            },
                                                            "User": {
                                                              "email":
                                                                  dashboardcontroller
                                                                      .userEmail
                                                                      .value,

                                                              // ]
                                                            },
                                                            //  "createdTime": today.value
                                                          }
                                                        };
                                                        //
                                                        var payload = {
                                                          'amount':
                                                              dashboardcontroller
                                                                  .miscellaneousAmounrController
                                                                  .text,
                                                          'paymentMode':
                                                              dashboardcontroller
                                                                  .choosenMiscellineousAmount
                                                                  .value,
                                                          'categoryType':
                                                              'misellaneous',
                                                          'formType': "nursery",
                                                          'remarks':
                                                              dashboardcontroller
                                                                  .miscellaneousRemarksController
                                                                  .text,
                                                          'transcationId':
                                                              dashboardcontroller
                                                                  .choosenMiscellineousAmountIDController
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
                                                        //

                                                        if (_formKeyNurseryMiscellaneous
                                                            .currentState!
                                                            .validate()) {
                                                          dashboardcontroller
                                                              .addFormExp(
                                                                  payload);

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

                            // Divider(),
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
                                  "Fuel Costs",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: KdarkText,
                                      fontSize: kEighteenFont,
                                      fontWeight: kFW500),
                                ),
                                isNurseryfuelCosts == false
                                    ? InkWell(
                                        onTap: () {
                                          togglefuelCostsSwitch(true);
                                        },
                                        child: Icon(Icons.arrow_drop_down))
                                    : InkWell(
                                        onTap: () {
                                          togglefuelCostsSwitch(false);
                                        },
                                        child: Icon(Icons.arrow_drop_up))
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),

                            ///
                            ExpandableSection(
                                expand: _isNurseryfuelCostsExpandCard,
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
                                      key: _formKeyNurseryfuelCosts,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Divider(),
                                            CustomFormFields(
                                              ontap: () {},
                                              enabled: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: dashboardcontroller
                                                  .fuelCostsAmountController,
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
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Kwhite,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: kblack
                                                          .withOpacity(0.2),
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
                                                  errorBorder:
                                                      OutlineInputBorder(
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
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 8),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                hint: Text(
                                                  'Select mode',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color:
                                                        KTextgery.withOpacity(
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
                                                    //
                                                    //  var choosenFuelcostAmount = 'cash'.obs;
                                                    //   TextEditingController choosenOtherFuelAmountIDController =
                                                    //       TextEditingController();
                                                    //
                                                    dashboardcontroller
                                                        .choosenFuelcostAmount
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
                                                        BorderRadius.circular(
                                                            15),
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
                                                        .choosenFuelcostAmount ==
                                                    "online"
                                                ? Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10.h),
                                                    child: CustomFormFields(
                                                      ontap: () {},
                                                      enabled: true,
                                                      controller:
                                                          dashboardcontroller
                                                              .choosenOtherFuelAmountIDController,
                                                      labelColor: KText,
                                                      obscureText: false,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16,
                                                              horizontal: 8),
                                                      fontSize: kFourteenFont,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  .fuelCostsRemarksController,
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
                                                            DateFormat(
                                                                    "dd-MM-yyyy")
                                                                .format(now);
                                                        String formattedTime =
                                                            DateFormat(
                                                                    "hh:mm a")
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
                                                        var payloadfc = {
                                                          "Nursery": {
                                                            "Fuel Costs": {
                                                              "Amount": int.tryParse(
                                                                      dashboardcontroller
                                                                          .fuelCostsAmountController
                                                                          .text) ??
                                                                  0,
                                                              "Payment_Mode":
                                                                  dashboardcontroller
                                                                      .choosenFuelcostAmount
                                                                      .value,
                                                              "Transaction_Id":
                                                                  dashboardcontroller
                                                                      .choosenOtherFuelAmountIDController
                                                                      .text,
                                                              "Remarks":
                                                                  dashboardcontroller
                                                                      .fuelCostsRemarksController
                                                                      .text,
                                                              // "fields": [
                                                              //   {"name": "Amount", "required": true},
                                                              //   {"name": "Remarks", "required": false}
                                                              // ]
                                                            },
                                                            //
                                                            //                               var choosenMiscellineousAmount = 'cash'.obs;
                                                            // TextEditingController choosenMiscellineousAmountIDController =
                                                            //     TextEditingController();

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
                                                          'amount':
                                                              dashboardcontroller
                                                                  .fuelCostsAmountController
                                                                  .text,
                                                          'paymentMode':
                                                              dashboardcontroller
                                                                  .choosenFuelcostAmount
                                                                  .value,
                                                          'categoryType':
                                                              'fuelcosts',
                                                          'formType': "nursery",
                                                          'remarks':
                                                              dashboardcontroller
                                                                  .fuelCostsRemarksController
                                                                  .text,
                                                          'transcationId':
                                                              dashboardcontroller
                                                                  .choosenOtherFuelAmountIDController
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
                                                        if (_formKeyNurseryfuelCosts
                                                            .currentState!
                                                            .validate()) {
                                                          dashboardcontroller
                                                              .addFormExp(
                                                                  payload);

                                                          dashboardcontroller
                                                              .fuelCostsAmountController
                                                              .clear();
                                                          dashboardcontroller
                                                              .choosenOtherFuelAmountIDController
                                                              .clear();
                                                          dashboardcontroller
                                                              .fuelCostsRemarksController
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
                            isNurseryfuelCosts == false
                                ? Divider()
                                : SizedBox(),
                            /////

                            // Other expenses
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
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: dashboardcontroller
                                                  .otherExpensesAmountController,
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
                                                      BorderRadius.circular(
                                                          10.0),
                                                  color: Kwhite,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: kblack
                                                          .withOpacity(0.2),
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
                                                  errorBorder:
                                                      OutlineInputBorder(
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
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10,
                                                          horizontal: 8),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                hint: Text(
                                                  'Select mode',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    color:
                                                        KTextgery.withOpacity(
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
                                                    color:
                                                        kblack.withOpacity(0.6),
                                                  ),
                                                  iconSize: 24,
                                                ),
                                                dropdownStyleData:
                                                    DropdownStyleData(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
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
                                                    margin: EdgeInsets.only(
                                                        top: 10.h),
                                                    child: CustomFormFields(
                                                      ontap: () {},
                                                      enabled: true,
                                                      controller:
                                                          dashboardcontroller
                                                              .choosenOtherExpensesAmountIDController,
                                                      labelColor: KText,
                                                      obscureText: false,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16,
                                                              horizontal: 8),
                                                      fontSize: kFourteenFont,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                            DateFormat(
                                                                    "dd-MM-yyyy")
                                                                .format(now);
                                                        String formattedTime =
                                                            DateFormat(
                                                                    "hh:mm a")
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
                                                        // var payloadots = {
                                                        //   "Nursery": {
                                                        //     "Other Expenses": {
                                                        //       "Amount": int.tryParse(
                                                        //               dashboardcontroller
                                                        //                   .otherExpensesAmountController
                                                        //                   .text) ??
                                                        //           0,

                                                        //       ///
                                                        //       "Payment_Mode":
                                                        //           dashboardcontroller
                                                        //               .choosenOtherexpensesAmount
                                                        //               .value,
                                                        //       "Transaction_Id":
                                                        //           dashboardcontroller
                                                        //               .choosenOtherExpensesAmountIDController
                                                        //               .text,
                                                        //       //
                                                        //       "Remarks":
                                                        //           dashboardcontroller
                                                        //               .otherExpensesRemarksController
                                                        //               .text,
                                                        //     },

                                                        //     // },
                                                        //     "Time": {
                                                        //       "createdTime":
                                                        //           dashboardcontroller
                                                        //               .today
                                                        //               .value,
                                                        //     },
                                                        //     "User": {
                                                        //       "email":
                                                        //           dashboardcontroller
                                                        //               .userEmail
                                                        //               .value,
                                                        //     },
                                                        //     //  "createdTime": today.value
                                                        //   }
                                                        // };
                                                        //
                                                        //
                                                        var payload = {
                                                          'amount':
                                                              dashboardcontroller
                                                                  .otherExpensesAmountController
                                                                  .text,
                                                          'paymentMode':
                                                              dashboardcontroller
                                                                  .choosenOtherexpensesAmount
                                                                  .value,
                                                          'categoryType':
                                                              'otherexpenses',
                                                          'formType': "nursery",
                                                          'remarks':
                                                              dashboardcontroller
                                                                  .otherExpensesRemarksController
                                                                  .text,
                                                          'transcationId':
                                                              dashboardcontroller
                                                                  .choosenOtherExpensesAmountIDController
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

                                                        if (_formKeyNurseryOtherExpenses
                                                            .currentState!
                                                            .validate()) {
                                                          dashboardcontroller
                                                              .addFormExp(
                                                                  payload);

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
                            // Text(
                            //   "Comments",
                            //   textAlign: TextAlign.center,
                            //   style: GoogleFonts.poppins(
                            //       color: KdarkText,
                            //       fontSize: kEighteenFont,
                            //       fontWeight: kFW500),
                            // ),
                            // SizedBox(
                            //   height: 10.h,
                            //   ),
                            // CustomFormFields(
                            //   ontap: () {},
                            //   enabled: true,
                            //   controller:
                            //       dashboardcontroller.otherCommentsController,
                            //   labelColor: KText,
                            //   obscureText: false,
                            //   contentPadding: const EdgeInsets.symmetric(
                            //       vertical: 16, horizontal: 8),
                            //   fontSize: kFourteenFont,
                            //   fontWeight: FontWeight.w500,
                            //   hintText: "Enter comment",
                            //   maxLines: 1,
                            //   readOnly: false,
                            //   label: "comment",
                            //   validator: (value) {
                            //     if (value!.isEmpty) {
                            //       return 'Please enter comment';
                            //     }
                            //     return null;
                            //   },
                            // ),

                            // SizedBox(
                            //   height: 20.h,
                            // ),
                            // Text(
                            //   "Upload Image",
                            //   textAlign: TextAlign.center,
                            //   style: GoogleFonts.poppins(
                            //       color: KdarkText,
                            //       fontSize: kEighteenFont,
                            //       fontWeight: kFW500),
                            // ),
                            // SizedBox(
                            //   height: 10.h,
                            // ),
                            // selectedImage != null
                            //     ? Container(
                            //         padding: EdgeInsets.all(12),
                            //         margin: EdgeInsets.only(bottom: 10),
                            //         decoration: BoxDecoration(
                            //           border: Border.all(
                            //               color: Klight_grey_twg, width: 1),
                            //           color: Kwhite,
                            //           borderRadius: BorderRadius.only(
                            //               topLeft: Radius.circular(5),
                            //               topRight: Radius.circular(5),
                            //               bottomLeft: Radius.circular(5),
                            //               bottomRight: Radius.circular(5)),
                            //         ),
                            //         child: Stack(
                            //           children: [
                            //             ClipRRect(
                            //               borderRadius: BorderRadius.circular(8.r),
                            //               child: Image.file(
                            //                 selectedImage!,
                            //                 width: double.infinity,
                            //                 // width: 270.w,
                            //                 height: 200.h,
                            //                 //   fit: BoxFit.cover,
                            //                 fit: BoxFit.cover,
                            //                 // height: 100.h,
                            //                 // width: 100.w,
                            //                 // fit: BoxFit.cover,
                            //               ),
                            //             ),
                            //             Positioned(
                            //               right: 5,
                            //               top: 5,
                            //               child: InkWell(
                            //                   onTap: () {
                            //                     setState(() {
                            //                       selectedImage = null;
                            //                     });
                            //                     setState(() {});
                            //                   },
                            //                   child: Icon(Icons.cancel_outlined)
                            //                   // Text
                            //                   // ('X',
                            //                   //     maxLines: 2,
                            //                   //     overflow: TextOverflow.ellipsis,
                            //                   //     style: GoogleFonts.poppins(
                            //                   //         fontSize: 20.sp,
                            //                   //         fontWeight: kFW600,
                            //                   //         color: Klight_grey_twg)),
                            //                   ),
                            //             )
                            //           ],
                            //         ),
                            //       )
                            //     : SizedBox(),

                            // CustomButton(
                            //     borderRadius: BorderRadius.circular(5.r),
                            //     Color: Kform_border_twg,
                            //     textColor: Kwhite,
                            //     height: 40,
                            //     width: double.infinity,
                            //     label: "Upload Image",
                            //     fontSize: kSixteenFont,
                            //     fontWeight: kFW600,
                            //     isLoading: false,
                            //     onTap: () {
                            //       showModalBottomSheet(
                            //           shape: RoundedRectangleBorder(
                            //             borderRadius: BorderRadius.only(
                            //                 topRight: Radius.circular(20),
                            //                 topLeft: Radius.circular(20)),
                            //           ),
                            //           backgroundColor: Kbackground,
                            //           context: context,
                            //           builder: (context) {
                            //             return Container(
                            //               child: Container(
                            //                 decoration: BoxDecoration(
                            //                     color: Kbackground,
                            //                     borderRadius: BorderRadius.only(
                            //                         topLeft: Radius.circular(20),
                            //                         topRight: Radius.circular(20))),
                            //                 height: 100.h,
                            //                 padding: EdgeInsets.only(top: 20.h),
                            //                 child: Row(
                            //                   crossAxisAlignment:
                            //                       CrossAxisAlignment.center,
                            //                   mainAxisAlignment:
                            //                       MainAxisAlignment.spaceAround,
                            //                   children: [
                            //                     GestureDetector(
                            //                       onTap: () {
                            //                         chooseImage("Gallery");
                            //                         Navigator.pop(context);
                            //                       },
                            //                       child: Column(
                            //                         children: [
                            //                           Icon(
                            //                             Icons.image_outlined,
                            //                             color: Kblue_twg,
                            //                           ),
                            //                           SizedBox(
                            //                             height: 5.h,
                            //                           ),
                            //                           Text('Gallery',
                            //                               maxLines: 2,
                            //                               overflow:
                            //                                   TextOverflow.ellipsis,
                            //                               style:
                            //                                   GoogleFonts.poppins(
                            //                                       fontSize: 12.sp,
                            //                                       fontWeight:
                            //                                           kFW700,
                            //                                       color:
                            //                                           KdarkText)),
                            //                         ],
                            //                       ),
                            //                     ),
                            //                     GestureDetector(
                            //                       onTap: () {
                            //                         chooseImage("camera");
                            //                         Navigator.pop(context);
                            //                       },
                            //                       child: Column(
                            //                         children: [
                            //                           Icon(
                            //                             Icons.camera_alt_outlined,
                            //                             color: Kblue_twg,
                            //                           ),
                            //                           SizedBox(
                            //                             height: 5.h,
                            //                           ),
                            //                           Text('camera',
                            //                               maxLines: 2,
                            //                               overflow:
                            //                                   TextOverflow.ellipsis,
                            //                               style:
                            //                                   GoogleFonts.poppins(
                            //                                       fontSize: 12.sp,
                            //                                       fontWeight:
                            //                                           kFW700,
                            //                                       color:
                            //                                           KdarkText)),
                            //                         ],
                            //                       ),
                            //                     ),
                            //                   ],
                            //                 ),
                            //               ),
                            //             );
                            //           });
                            //     }),

                            // /////
                            // Obx(
                            //   () => dashboardcontroller.addFormLoading == true
                            //       ? Center(
                            //           child: CircularProgressIndicator(
                            //             color: Kform_border_twg,
                            //           ),
                            //         )
                            //       : CustomButton(
                            //           margin: EdgeInsets.only(top: 36.h),
                            //           borderRadius: BorderRadius.circular(8.r),
                            //           Color: Kform_border_twg,
                            //           textColor: Kwhite,
                            //           height: 40,
                            //           width: double.infinity,
                            //           label: "Submit",
                            //           fontSize: kSixteenFont,
                            //           fontWeight: kFW700,
                            //           isLoading: false,
                            //           onTap: () {
                            //             DateTime now = DateTime.now();
                            //             String formattedDate =
                            //                 DateFormat("dd-MM-yyyy").format(now);
                            //             String formattedTime =
                            //                 DateFormat("hh:mm a").format(now);
                            //             setState(() {
                            //               dashboardcontroller.today.value =
                            //                   formattedDate + " " + formattedTime;
                            //               print(dashboardcontroller.today);
                            //             });
                            //             var payload =
                            //                 // "email": dashboardcontroller
                            //                 //     .UserEmailSignInController.text,
                            //                 // "password": dashboardcontroller
                            //                 //     .UserEmailPasswordController.text
                            //                 {
                            //               "Nursery": {
                            //                 //
                            //                 //                              var choosenfixedSalaryAmount = 'cash'.obs;
                            //                 // TextEditingController fixedSalaryAmountIDController = TextEditingController();
                            //                 //
                            //                 "Fixed Salaries": {
                            //                   "Emp_ID": dashboardcontroller
                            //                       .FixedSalariesEmpidController
                            //                       .text,
                            //                   "Emp_Name": dashboardcontroller
                            //                       .FixedSalariesEmpnameController
                            //                       .text,
                            //                   "Salary_Amount": int.tryParse(
                            //                           dashboardcontroller
                            //                               .FixedSalariesSalaryAmountController
                            //                               .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenfixedSalaryAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .fixedSalaryAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .FixedSalariesRemarksController
                            //                       .text,
                            //                   // "fields": [ dashboardcontroller.FixedSalariesRemarksController
                            //                   //  // {"Emp_ID": },
                            //                   //   {"name": "Emp_Name", "required": true},
                            //                   //   {"name": "Salary_Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                              var choosenwagesSalaryAmount = 'cash'.obs;
                            //                 // TextEditingController wagesSalaryAmountIDController = TextEditingController();
                            //                 //
                            //                 "Wages Salaries": {
                            //                   "Emp_ID": dashboardcontroller
                            //                       .WagesSalariesEmpidController
                            //                       .text,
                            //                   "Emp_Name": dashboardcontroller
                            //                       .WagesSalariesEmpnameController
                            //                       .text,
                            //                   "Salary_Amount": int.tryParse(
                            //                           dashboardcontroller
                            //                               .WagesSalariesSalaryAmountController
                            //                               .text) ??
                            //                       0,
                            //                   //
                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenwagesSalaryAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .wagesSalaryAmountIDController
                            //                       .text,
                            //                   //
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .WagesSalariesRemarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Emp_ID", "required": true},
                            //                   //   {"name": "Emp_Name", "required": true},
                            //                   //   {"name": "Salary_Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                              var choosenSalaryAdvanceAmount = 'cash'.obs;
                            //                 // TextEditingController choosenSalaryAdvanceAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Salary Advance": {
                            //                   "Emp_ID": dashboardcontroller
                            //                       .SalaryAdvanceEmpIDController
                            //                       .text,
                            //                   "Emp_Name": dashboardcontroller
                            //                       .SalaryAdvanceEmpNameController
                            //                       .text,
                            //                   "Amount": int.tryParse(dashboardcontroller
                            //                           .SalaryAdvanceAmountController
                            //                           .text) ??
                            //                       0,
                            //                   //
                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenSalaryAdvanceAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenSalaryAdvanceAmountIDController
                            //                       .text,
                            //                   //
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .SalaryAdvanceRemarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Emp_ID", "required": true},
                            //                   //   {"name": "Emp_Name", "required": true},
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                              var choosenLoanAmount = 'cash'.obs;
                            //                 // TextEditingController choosenLoanAmountIDController = TextEditingController();
                            //                 //
                            //                 "Loans": {
                            //                   "Emp_ID": dashboardcontroller
                            //                       .loansEmpidController.text,
                            //                   "Emp_Name": dashboardcontroller
                            //                       .loansEmpnameController.text,
                            //                   "Amount": int.tryParse(
                            //                           dashboardcontroller
                            //                               .loansAmountController
                            //                               .text) ??
                            //                       0,
                            //                   //
                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenLoanAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenLoanAmountIDController
                            //                       .text,
                            //                   //
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .loansRemarksController.text,
                            //                   // "fields": [
                            //                   //   {"name": "Emp_ID", "required": true},
                            //                   //   {"name": "Emp_Name", "required": true},
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                               var choosenStafftrainingAmount = 'cash'.obs;
                            //                 // TextEditingController choosenstafftrainingAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Staff Training Expenses": {
                            //                   "Amount": int.tryParse(dashboardcontroller
                            //                           .staffTrainingAmountController
                            //                           .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenStafftrainingAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenstafftrainingAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .staffTrainingRemarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                               var choosenUtilitiesAmount = 'cash'.obs;
                            //                 // TextEditingController choosenUtilitiesAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Utilities": {
                            //                   "Amount": int.tryParse(
                            //                           dashboardcontroller
                            //                               .utiliteisAmountController
                            //                               .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenUtilitiesAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenUtilitiesAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .utiliteisRemarksController.text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                             var choosenStationaryAmount = 'cash'.obs;
                            //                 // TextEditingController choosenStationaryAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Stationery": {
                            //                   "Amount": int.tryParse(
                            //                           dashboardcontroller
                            //                               .stationaneryAmountController
                            //                               .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenStationaryAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenStationaryAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .stationaneryremarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                               var choosenfoodbeveragesAmount = 'cash'.obs;
                            //                 // TextEditingController choosenFoodbeveragesAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Food and Beverages": {
                            //                   "Amount": int.tryParse(dashboardcontroller
                            //                           .foodBeveragesAmountController
                            //                           .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenfoodbeveragesAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenFoodbeveragesAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .foodBeveragesremarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                               var choosenGroceriesAmount = 'cash'.obs;
                            //                 // TextEditingController choosenGroceriesAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Groceries": {
                            //                   "Amount": int.tryParse(dashboardcontroller
                            //                           .groceriesBeveragesAmountController
                            //                           .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenGroceriesAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenGroceriesAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .groceriesremarksController.text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                              var choosenWtersupplyAmount = 'cash'.obs;
                            //                 // TextEditingController choosenwaterSupplyAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Water Supplies": {
                            //                   "Amount": int.tryParse(
                            //                           dashboardcontroller
                            //                               .watersuppliAmountController
                            //                               .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenWtersupplyAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenwaterSupplyAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .watersuppliremarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                               var choosenMaintenanceAndrepairsAmount = 'cash'.obs;
                            //                 // TextEditingController choosenMaintenanceAndrepairsAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Maintenance and Repairs": {
                            //                   "Amount": int.tryParse(dashboardcontroller
                            //                           .maintanaceRepairsAmountController
                            //                           .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenMaintenanceAndrepairsAmount
                            //                       .value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenMaintenanceAndrepairsAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .maintanaceRepairsRemarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                              var choosenVehicleMaintenanceAmount = 'cash'.obs;
                            //                 // TextEditingController choosenVehicleMaintennceAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Vehicle Maintenance": {
                            //                   "Amount": int.tryParse(dashboardcontroller
                            //                           .vehicleMaintenanceAmountController
                            //                           .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenVehicleMaintenanceAmount
                            //                       .value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenVehicleMaintennceAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .vehicleMaintenanceRemarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //  var choosenFuelcostAmount = 'cash'.obs;
                            //                 //   TextEditingController choosenOtherFuelAmountIDController =
                            //                 //       TextEditingController();
                            //                 //
                            //                 "Fuel Costs": {
                            //                   "Amount": int.tryParse(
                            //                           dashboardcontroller
                            //                               .fuelCostsAmountController
                            //                               .text) ??
                            //                       0,
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenFuelcostAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenOtherFuelAmountIDController
                            //                       .text,
                            //                   "Remarks": dashboardcontroller
                            //                       .fuelCostsRemarksController.text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                               var choosenMiscellineousAmount = 'cash'.obs;
                            //                 // TextEditingController choosenMiscellineousAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Miscellaneous": {
                            //                   "Amount": int.tryParse(dashboardcontroller
                            //                           .miscellaneousAmounrController
                            //                           .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenMiscellineousAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenMiscellineousAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .miscellaneousRemarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //
                            //                 //                             var choosenOtherexpensesAmount = 'cash'.obs;
                            //                 // TextEditingController choosenOtherExpensesAmountIDController =
                            //                 //     TextEditingController();
                            //                 //
                            //                 "Other Expenses": {
                            //                   "Amount": int.tryParse(dashboardcontroller
                            //                           .otherExpensesAmountController
                            //                           .text) ??
                            //                       0,

                            //                   ///
                            //                   "Payment_Mode": dashboardcontroller
                            //                       .choosenOtherexpensesAmount.value,
                            //                   "Transaction_Id": dashboardcontroller
                            //                       .choosenOtherExpensesAmountIDController
                            //                       .text,
                            //                   //
                            //                   "Remarks": dashboardcontroller
                            //                       .otherExpensesRemarksController
                            //                       .text,
                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 // donot remove
                            //                 "Comments": {
                            //                   "comment": dashboardcontroller
                            //                       .otherCommentsController.text,

                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 "Time": {
                            //                   "createdTime":
                            //                       dashboardcontroller.today.value,

                            //                   // "fields": [
                            //                   //   {"name": "Amount", "required": true},
                            //                   //   {"name": "Remarks", "required": false}
                            //                   // ]
                            //                 },
                            //                 //  "createdTime": today.value
                            //               }
                            //             };
                            //             if (selectedImage != null) {
                            //               if (_formKey.currentState!.validate()) {
                            //                 dashboardcontroller.addForm(payload);
                            //               }
                            //             } else {
                            //               Fluttertoast.showToast(
                            //                 msg: "please upload image",
                            //               );
                            //             }
                            //             // if (_formKey.currentState!.validate()) {
                            //             //   dashboardcontroller.addForm(payload);
                            //             // }
                            //           }),
                            // ),

                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 2.5)
                          ],
                        ),
                      ),
              ],
            ),
          )),
    );
  }
}
