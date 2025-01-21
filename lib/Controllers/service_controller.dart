import 'package:uthistaapp/untils/export_file.dart';

class ServiceController extends GetxController {
  var longitude = -122.085749655962;
  var latittude = 37.42796133580664;
  // TextEditingController celebratepost = TextEditingController();
  // TextEditingController message = TextEditingController();

  var address = "".obs;
  var addressLatitude = "".obs;
  var addressLongitude = "".obs;
  var loacationIsEnabled = false.obs;

  String celebrateText = "";
  String profileImageData = "";
  var eachStoryList = {}.obs;
  var isLoading = false.obs;
  var empId = 0.obs;
  int? celebrateID;
  @override
  void onInit() {
    celebrateText = "";
    super.onInit();
  }

  void storeStoryData(data) {
    eachStoryList.value = data;
  }

  void setLoading(bool data) {
    isLoading.value = data;
  }

  void setIndex(int number) {
    empId.value = number;
  }
}
