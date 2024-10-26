import 'package:get/get.dart';

class GridController extends GetxController{
  var items = <String>[].obs;
  @override
  void onInit(){
   // items.addAll(List.generate(4, (index)=> "Item $index"));
  super.onInit();
  }
  void addItem(String item){
    items.add(item);
  }
  }
