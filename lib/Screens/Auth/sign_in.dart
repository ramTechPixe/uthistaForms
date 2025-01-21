import 'package:flutter/services.dart';
import 'package:uthistaapp/untils/export_file.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthController authcontroller = Get.put(AuthController());
  final _formKey = GlobalKey<FormState>();
  String? selectedOption;
  bool passwordVisible = true;
  bool confirmpasswordVisible = true;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Are you sure?',
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            content: Text(
              'Do you want to exit this App',
              style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  'No',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                child: Text(
                  'Yes',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Kblue_twg),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void initState() {
    setState(() {
      // authcontroller.UserEmailSignInController.text = "sri965272@gmail.com";
      // authcontroller.UserEmailPasswordController.text = "Bstore@123";
      //  userprofilecontroller.profileData["user_details"]["last_name"] ?? "";
      // userprofilecontroller.editEmailController.text =
      //     userprofilecontroller.profileData["user_details"]["email"] ?? "";
      authcontroller.UserEmailSignInController.text = "s@gmail.com";
      authcontroller.UserEmailPasswordController.text = "s123";
    });

    super.initState();
  }

  /////
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: SlidingSheet(
          elevation: 2,
          cornerRadius: 20,
          snapSpec: const SnapSpec(
            initialSnap: 0.79,
            snap: true,
            snappings: [0.79, 0.8],
            // initialSnap: 0.8,
            // snap: true,
            // snappings: [0.5, 0.8],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        KGradientPurple_twg,
                        KGradientPink_twg,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                            color: Kwhite, fontSize: 32.sp, fontWeight: kFW600),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        "Please sign in your account.",
                        style: GoogleFonts.poppins(
                            color: Kwhite,
                            fontSize: kTenFont,
                            fontWeight: kFW400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          builder: (context, state) {
            return Container(
              color: Kwhite,
              padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
              child: Form(
                key: _formKey,
                // autovalidateMode: AutovalidateMode.always,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/horiz_divider.png",
                        height: 3.h,
                        width: 80.w,
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),

                    CustomFormFields(
                      ontap: () {},
                      enabled: true,
                      controller: authcontroller.UserEmailSignInController,
                      labelColor: KText,
                      obscureText: false,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      fontSize: kFourteenFont,
                      fontWeight: FontWeight.w500,
                      hintText: "Email",
                      maxLines: 1,
                      readOnly: false,
                      label: "Email",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Password",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          fontSize: kSixteenFont,
                          //  letterSpacing: 1,
                          color: KBlack_twg,
                          fontWeight: kFW400),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Kwhite,
                      ),
                      child: TextFormField(
                        cursorColor: Kform_border_twg,
                        obscureText: passwordVisible,
                        controller: authcontroller.UserEmailPasswordController,
                        obscuringCharacter: '*',
                        enabled: true,
                        readOnly: false,
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp, fontWeight: kFW500, color: kblack),
                        decoration: InputDecoration(
                          focusColor: Kwhite,
                          filled: true,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: KText_border_twg, width: 0.5),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: KRed_twg, width: 0.5),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: KText_border_twg, width: 0.5),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Kform_border_twg, width: 1),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Kform_border_twg, width: 1),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          fillColor: Kwhite,

                          hintText: "Enter Password",
                          alignLabelWithHint: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 20.sp,
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                          ),

                          hintStyle: GoogleFonts.poppins(
                            color: KLighText_twg,
                            fontSize: 14.sp,
                            fontWeight: kFW400,
                          ),
                          //////////////////

                          ////////////

                          //create lable
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    // CustomButton(
                    //     margin: EdgeInsets.only(top: 36.h),
                    //     borderRadius: BorderRadius.circular(8.r),
                    //     Color: Kform_border_twg,
                    //     textColor: Kwhite,
                    //     height: 40,
                    //     width: double.infinity,
                    //     label: "Sign In",
                    //     fontSize: kSixteenFont,
                    //     fontWeight: kFW700,
                    //     isLoading: false,
                    //     onTap: () {
                    //       Get.toNamed(kHome);
                    //       // var payload = {
                    //       //   // "user_email": authcontroller
                    //       //   //     .UserEmailSignInController.text,
                    //       //   // "user_password": authcontroller
                    //       //   //     .UserEmailPasswordController.text
                    //       // };

                    //       // if (_formKey.currentState!.validate()) {}
                    //     }),
                    //////////////
                    Obx(
                      () => authcontroller.userSignInLoading == true
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
                              label: "Sign In",
                              fontSize: kSixteenFont,
                              fontWeight: kFW700,
                              isLoading: false,
                              onTap: () {
                                var payload = {
                                  // {"email": "s@gmail.com", "password": "s123"},
                                  "email": authcontroller
                                      .UserEmailSignInController.text,
                                  "password": authcontroller
                                      .UserEmailPasswordController.text
                                };

                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    authcontroller.userEmail.value =
                                        authcontroller
                                            .UserEmailSignInController.text;
                                  });
                                  authcontroller.checkEmployee(payload);
                                }
                              }),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height / 2.5)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
