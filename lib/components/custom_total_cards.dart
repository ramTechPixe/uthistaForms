import 'package:uthistaapp/untils/export_file.dart';

// TWG
class CustomTotalCards extends StatelessWidget {
  //String label;
  double? height;
  double? width;
  double? fontSize;
  FontWeight? fontWeight;
  final Color;
  final textColor;
  var Padding;
  var margin;
  BorderRadiusGeometry? borderRadius;
  String imageAddress;
  String cardTitle;
  String value;
  String buttonTitle;
  String buttonValue;
  // bool isLoading;
  dynamic onTap;

  CustomTotalCards(
      {Key? key,
      this.height,
      this.width,
      this.Padding,
      this.Color,
      required this.imageAddress,
      required this.cardTitle,
      required this.value,
      required this.buttonTitle,
      required this.buttonValue,
      this.textColor,
      this.margin,
      this.fontSize,
      this.fontWeight,
      this.borderRadius,
      // required this.label,
      // required this.isLoading,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        /////////////////////////////////////////////
        Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kblack.withOpacity(0.1),
            blurRadius: 2.r,
            offset: Offset(0, 1),
            spreadRadius: 2.r,
          )
        ],
        color: Kwhite,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kblack.withOpacity(0.3),
                      blurRadius: 1.r,
                      offset: Offset(1, 1),
                      spreadRadius: 1.r,
                    )
                  ],
                  color: Kwhite,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Image.asset(
                  imageAddress,
                  height: 45.h,
                  width: 45.h,
                  // height: 115.h,
                  // width: 300.w,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            cardTitle,
            style: GoogleFonts.poppins(
                color: kblack, fontSize: kFourteenFont, fontWeight: kFW400),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
                color: Kblue_twg, fontSize: kFourteenFont, fontWeight: kFW400),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 36.h,
            width: 140.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Kdeep_purple_twg,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  buttonTitle,
                  style: GoogleFonts.poppins(
                      color: Kwhite, fontSize: 11.sp, fontWeight: kFW400),
                ),
                Text(
                  buttonValue,
                  style: GoogleFonts.poppins(
                      color: Kwhite, fontSize: 11.sp, fontWeight: kFW400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
