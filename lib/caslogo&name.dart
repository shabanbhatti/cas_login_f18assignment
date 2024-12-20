import 'package:cas_login_f18assignment/styleText.dart';
import 'package:flutter/material.dart';

Widget casLogoAndNameColumn() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Flexible(flex: 50, child: Image.asset('assets/images/cas.png')),
      Flexible(
        flex: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 50,
              child: FittedBox(
                child: Text(
                  'Center for',
                  style: myTextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 72, 13, 82),
                      size: 25),
                ),
              ),
            ),
            Flexible(
              flex: 50,
              child: FittedBox(
                child: Text(
                  ' Advance Solution',
                  style: myTextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 32, 173, 202),
                      size: 25),
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget logoOpacity() {
  return SizedBox(
      height: 70, width: 100, child: Image.asset('assets/images/cas.png'));
}

Widget nameOpacity() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Flexible(
        flex: 50,
        child: FittedBox(
          child: Text(
            'Center for',
            style: myTextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 72, 13, 82),
                size: 15),
          ),
        ),
      ),
      Flexible(
        flex: 50,
        child: FittedBox(
          child: Text(
            ' Advance Solution',
            style: myTextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 32, 173, 202),
                size: 15),
          ),
        ),
      )
    ],
  );
}
