import 'package:get/get.dart';
import 'package:gaurav_port/model/certificate.dart';

class CertificationController extends GetxController{
  late final RxList<bool> hovers;

  @override
  void onInit() {
    super.onInit();
    // Initialize hover flags to match the number of certificates
    hovers = List<bool>.filled(certificateList.length, false).obs;
  }

  void onHover(int index, bool value){
    if (index >= 0 && index < hovers.length) {
      hovers[index] = value;
    }
  }
}
