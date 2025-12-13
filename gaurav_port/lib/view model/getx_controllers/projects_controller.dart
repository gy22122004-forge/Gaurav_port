import 'package:get/get.dart';
import 'package:gaurav_port/model/work_done.dart';

class ProjectController extends GetxController {
  late final RxList<bool> hovers;

  @override
  void onInit() {
    super.onInit();
    // Initialize hover flags to match project list length
    hovers = List<bool>.filled(projectList.length, false).obs;
  }

  void onHover(int index, bool value) {
    if (index >= 0 && index < hovers.length) {
      hovers[index] = value;
    }
  }
}