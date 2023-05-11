import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter=1.obs;

  incrementCounter(){
    counter.value++;
    print(counter.value);
  }
}