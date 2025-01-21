import 'package:flutter/services.dart';
import 'package:uthistaapp/untils/export_file.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /////////////////////////////////////////////
  bool? isUserLoggedIn;
  @override
  void initState() {
    super.initState();

    //////////////////////////////
    isUserLoggedIn = UserSimplePreferences.getLoginStatus();
    Future.delayed(const Duration(seconds: 3), () async {
      Get.toNamed(kSingIn);
    });
    /////////////////////////////
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Kwhite,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [KGradientPurple_twg, KGradientPink_twg, KLightPurple_twg],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/uf_new_logo.png",
              height: 200.h,
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              "Welcome To",
              style: GoogleFonts.poppins(
                  fontSize: kTwentyFont, color: Kwhite, fontWeight: kFW600),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "UTHISHTA  FOUNDATION",
              style: GoogleFonts.poppins(
                  fontSize: kTwentyFont, color: Kwhite, fontWeight: kFW600),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/foundation.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   AuthController authcontroller = Get.put(AuthController());
//   //////////////////

//   @override
//   void initState() {
//     super.initState();

//   }

//   /////////
//   Future<bool> _onWillPop() async {
//     return (await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: Text(
//               'Are you sure?',
//               style: GoogleFonts.roboto(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black),
//             ),
//             content: Text(
//               'Do you want to exit this App',
//               style: GoogleFonts.roboto(
//                   fontSize: 13,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black),
//             ),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: Text(
//                   'No',
//                   style: GoogleFonts.roboto(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () => SystemNavigator.pop(),
//                 child: Text(
//                   'Yes',
//                   style: GoogleFonts.roboto(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w600,
//                       color: Kblue_twg),
//                 ),
//               ),
//             ],
//           ),
//         )) ??
//         false;
//   }
//   /////////////////////////////////////////////

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: _onWillPop,
//       child: Scaffold(
//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 KGradientPurple_twg,
//                 KGradientPink_twg,
//                 KLightPurple_twg
//               ],
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10.r),
//                 child: GestureDetector(
//                   onTap: () {
//                     //  _initPlayer();
//                     // _player.seek(Duration.zero); // Restart the audio
//                     // _player.play();
//                   },
//                   child: Image.asset(
//                     "assets/images/uf_logo.jpeg",
//                     width: 200.w,
//                     height: 200.h,
//                   ),
//                 ),
//               ),
//               CustomButton(
//                 margin: EdgeInsets.only(
//                     top: 200.h, left: 16.w, right: 16.w, bottom: 60.h),
//                 borderRadius: BorderRadius.circular(8.r),
//                 Color: Kform_border_twg,
//                 textColor: Kwhite,
//                 height: 40,
//                 width: double.infinity,
//                 label: "Scan Now",
//                 fontSize: kSixteenFont,
//                 fontWeight: kFW700,
//                 isLoading: false,
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
