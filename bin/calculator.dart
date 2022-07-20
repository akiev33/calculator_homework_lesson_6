import 'dart:io';
import 'package:calculator/calculator.dart' as calculator;

void main() {

  //it`s object save result
  double result = 0;
  //first input object
  print('Введите первое значение:');
  String first_text_number = stdin.readLineSync()!;
  //save objects
  //convert double 
  double first_number = double.tryParse(first_text_number) ?? 0;
  //if people write '0', program works on 
  //but write another objects is not number, program stop
  if (first_number == 0 && first_text_number != '0') {
    print('Ошибка! Пиши только цифры');
    //code 1 - stop program if people write not number
    exit(1);
  }

  //operations
  print('Выбирите действие: +, -, *, /, ^2');
  String operation = stdin.readLineSync()!;
  //if you choice operation ^2, program give you reslut and stop program
  //if choice another operation, progam works on
  if (operation == '^2') {
    result = first_number * first_number;
    if (result % 1 == 0) {
      print('Ответ ${result.round()}');
      //https code 200 - good working 
      exit(200);
    } else {
      //else, working if no remainder
      print('Ответ ${result}');
    }

  //else work, if people not choice operation ^2
  } else if (operation == '+' ||
      operation == '-' ||
      operation == '*' ||
      operation == '/') {
    //second input object
    print('Введите второе значение');
    String second_text_number = stdin.readLineSync()!;
    //convert objects in double
    double second_number = double.tryParse(second_text_number) ?? 0;
    if (second_number == 0 && second_text_number != '0') {
      print('Ошибка! Пиши только цифры'); 
      exit(1);
    }
    //switch case
    switch (operation) {
      case '+':
        result = first_number + second_number;
        //if there is no remainder, function round is work 2.0 == 2
        if (result % 1 == 0) {
          print('Ответ: ${result.round()}');
        } else {
        //else, if number have remainder is round not work 2.1 == 2.1 
          print('Ответ: ${result}');
        }
        break;
      case '-':
        result = first_number - second_number;
        if (result % 1 == 0) {
          print('Ответ: ${result.round()}');
        } else {
          print('Ответ: ${result}');
        }
        break;
      case '*':
        result = first_number * second_number;
        if (result % 1 == 0) {
          print('Ответ: ${result.round()}');
        } else {
          print('Ответ: ${result}');
        }
        break;
      case '/':
        result = first_number / second_number;
        if (result % 1 == 0) {
          print('Ответ: ${result.round()}');
        } else {
          print('Ответ: ${result}');
        }
        break;
      default:
        //if working default it is bad  
        print('Произошла ошибка!');
    }
  //else work if people choice unknown operation
  } else {
    print('Неизвестная операция');
  }

}
