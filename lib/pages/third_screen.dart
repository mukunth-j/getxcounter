import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcounter/service/main_controller.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple[200],
      body: Center(
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
      )),
    );
  }
}
