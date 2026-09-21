import 'package:belajar_flutter/components/calculator/custom_calculator_text.dart';
import 'package:belajar_flutter/components/calculator/operator_button.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();  
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController textNumber1 = TextEditingController();
  TextEditingController textNumber2 = TextEditingController();

  int result = 0;
  

  int calculation(int number1, int number2, String operator) {
    switch (operator) {
      case '+':
        return number1 + number2;

      case '-':
        return number1 - number2;

      case 'x':
        return number1 * number2;

      case '/':
        return number1 ~/ number2;

      default:
        return 0;
    }
  }

  void calculate(String operator) {
    final number1 = int.tryParse(textNumber1.text);
    final number2 = int.tryParse(textNumber2.text);

    if (number1 == null || number2 == null) {
      return;
    }

    setState(() {
      result = calculation(number1, number2, operator);
    });
  }

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
                  onPressed: () {calculate('+');}, 
                  operatorText: '+'
                ),
                const SizedBox(width: 10),

                OperatorButton(
                  onPressed: () {calculate('-');}, 
                  operatorText: '-'
                ),
                const SizedBox(width: 10),

                OperatorButton(
                  onPressed: () {calculate('x');}, 
                  operatorText: 'x'
                ),
                const SizedBox(width: 10),
  
                OperatorButton(
                  onPressed: () {calculate('/');}, 
                  operatorText: '/'
                ),
                const SizedBox(width: 10),
              ],
            ),
            
            const SizedBox(height: 30),

            Text(
              result.toString(),
              style: TextStyle(
                fontSize: 30,
                color: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}