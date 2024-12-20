import 'package:cas_login_f18assignment/styleText.dart';
import 'package:flutter/material.dart';

class WhichLanguageYouKnow extends StatefulWidget {
  WhichLanguageYouKnow(
      {super.key,
      required this.javaError,
      required this.cPlusError,
      required this.kotlinError,
      required this.nothingError,
      required this.pythonError,
      required this.cplusValue,
      required this.javaValue,
      required this.kotlinValue,
      required this.nothingValue,
      required this.pythonValue,
      required this.onChangedCplus,
      required this.onChangedJava,
      required this.onChangedKotlin,
      required this.onChangedNothing,
      required this.onChangedPython});
  var javaError;
  var cPlusError;
  var pythonError;
  var kotlinError;
  var nothingError;

  Function(bool?) onChangedCplus;
  Function(bool?) onChangedPython;
  Function(bool?) onChangedJava;
  Function(bool?) onChangedKotlin;
  Function(bool?) onChangedNothing;

  var javaValue;
  var kotlinValue;
  var nothingValue;
  var cplusValue;
  var pythonValue;
  @override
  State<WhichLanguageYouKnow> createState() => _WhichLanguageYouKnowState();
}

class _WhichLanguageYouKnowState extends State<WhichLanguageYouKnow> {
  var javaFocusNode = FocusNode();
  var kotlinFocusNode = FocusNode();
  var pythonFocusNode = FocusNode();
  var cPlusFocusNode = FocusNode();
  var nothingFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            'Which Computor languge have you learned?',
            style: myTextStyle(
                color: Colors.black, size: 16, fontWeight: FontWeight.bold),
          ),
        ),
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  focusNode: cPlusFocusNode,
                  autofocus: true,
                  isError: widget.cPlusError,
                  checkColor: Colors.white,
                  activeColor: const Color.fromARGB(255, 32, 173, 202),
                  value: widget.cplusValue,
                  onChanged: widget.onChangedCplus),
              const FittedBox(child: Text('C++')),
              Checkbox(
                  focusNode: javaFocusNode,
                  isError: widget.javaError,
                  autofocus: true,
                  checkColor: Colors.white,
                  activeColor: const Color.fromARGB(255, 32, 173, 202),
                  value: widget.javaValue,
                  onChanged: widget.onChangedJava),
              const FittedBox(child: Text('Java')),
              Checkbox(
                  focusNode: kotlinFocusNode,
                  isError: widget.kotlinError,
                  autofocus: true,
                  checkColor: Colors.white,
                  activeColor: const Color.fromARGB(255, 32, 173, 202),
                  value: widget.kotlinValue,
                  onChanged: widget.onChangedKotlin),
              const FittedBox(child: Text('Kotlin')),
              Checkbox(
                  focusNode: pythonFocusNode,
                  isError: widget.pythonError,
                  autofocus: true,
                  checkColor: Colors.white,
                  activeColor: const Color.fromARGB(255, 32, 173, 202),
                  value: widget.pythonValue,
                  onChanged: widget.onChangedPython),
              const FittedBox(child: Text('Python')),
              FittedBox(
                child: Checkbox(
                  focusNode: nothingFocusNode,
                  isError: widget.nothingError,
                  autofocus: true,
                  checkColor: Colors.white,
                  activeColor: const Color.fromARGB(255, 32, 173, 202),
                  value: widget.nothingValue,
                  onChanged: widget.onChangedNothing,
                ),
              ),
              const FittedBox(child: Text('Nothing')),
            ],
          ),
        )
      ],
    );
  }
}
