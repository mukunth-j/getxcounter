import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcounter/service/main_controller.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            "The Count 1 of the Number is  ${mainController.count}",
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          child: Icon(Icons.add),
          onPressed: () {
            mainController.myIncrement();
          },
        )
      ],
    ));
  }
}
