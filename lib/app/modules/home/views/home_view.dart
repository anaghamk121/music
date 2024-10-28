import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/colors.dart';
import '../controllers/grid_controller.dart';

class GridPage extends StatelessWidget {
  final GridController controller = Get.put(GridController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Obx(() {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              return  Card(
                color: secondarycolor,
                child: Center(
                    child: Text(
                      controller.items[index],
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    ),
              );
            },
          );
        }),
      ),
    );
  }
}
