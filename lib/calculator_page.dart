import 'package:belajar_flutter/components/calculator/custom_calculator_text.dart';
import 'package:belajar_flutter/components/calculator/operator_button.dart';
import 'package:belajar_flutter/controller/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();  
  
}

class _CalculatorPageState extends State<CalculatorPage> {
  final controller = Get.put(CalculatorController());
  
  TextEditingController textNumber1 = TextEditingController();
  TextEditingController textNumber2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 20,
          vertical: 10
        ),
        child: Column(
          children: [
            CustomCalculatorText(
              labelText: 'Number 1', 
              txtController: textNumber1
            ),

            const SizedBox(height: 9),

            CustomCalculatorText(
              labelText: 'Number 2', 
              txtController: textNumber2
            ),
            
            const SizedBox(height: 9),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OperatorButton(
                  onPressed: () {
                    if (textNumber1.text.isEmpty || textNumber2.text.isEmpty) {
                      controller.warnMessage.value = "Please fill both numbers!";
                      return;
                    }

                    controller.addition(
                      double.parse(textNumber1.text),
                      double.parse(textNumber2.text),
                    );
                  },
                  operatorText: '+'
                ),
                const SizedBox(width: 10),

                OperatorButton(
                  onPressed: () {
                    if (textNumber1.text.isEmpty || textNumber2.text.isEmpty) {
                      controller.warnMessage.value = "Please fill both numbers!";
                      return;
                    }

                    controller.substraction(
                      double.parse(textNumber1.text),
                      double.parse(textNumber2.text),
                    );
                  },
                  operatorText: '-'
                ),
                const SizedBox(width: 10),

                OperatorButton(
                  onPressed: () {
                    if (textNumber1.text.isEmpty || textNumber2.text.isEmpty) {
                      controller.warnMessage.value = "Please fill both numbers!";
                      return;
                    }

                    controller.multiplication(
                      double.parse(textNumber1.text),
                      double.parse(textNumber2.text),
                    );
                  },
                  operatorText: 'x'
                ),
                const SizedBox(width: 10),
  
                OperatorButton(
                  onPressed: () {
                    if (textNumber1.text.isEmpty || textNumber2.text.isEmpty) {
                      controller.warnMessage.value = "Please fill both numbers!";
                      return;
                    }

                    controller.division(
                      double.parse(textNumber1.text),
                      double.parse(textNumber2.text),
                    );
                  }, 
                  operatorText: '/'
                ),
                const SizedBox(width: 10),
              ],
            ),
            
            const SizedBox(height: 30),

            Obx(
              () => Text(
                controller.warnMessage.value,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Obx(
              () => Text(
                controller.hasilHitung.value.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}