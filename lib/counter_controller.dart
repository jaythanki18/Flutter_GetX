import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController{
  RxBool notification=false.obs;

  setNotification(value){
    notification.value=value;
    print(notification.value);
  }
}