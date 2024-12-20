import 'package:cas_login_f18assignment/styleText.dart';
import 'package:flutter/material.dart';

class WhyDoYouWantToComeToCas extends StatefulWidget {
  WhyDoYouWantToComeToCas(
      {super.key,
      required this.forStudy,
      required this.xxxKey,
      required this.groupValue,
      required this.onChangedForStudy,
      required this.onChangedForGapshap,
      required this.onChangedForMahool,
      required this.onChangedForEnjoy,
      required this.forEnjoy,
      required this.forGapsahp,
      required this.fillColor,
      required this.forMahool,
      required this.groupValue2,
      required this.female,
      required this.male,
      required this.trans,
      required this.notPreferred,
      required this.onChangedForFemale,
      required this.onChangedForMale,
      required this.onChangedForTrans,
      required this.onChangedForNotPreferred});
  var forStudy;
  var forEnjoy;
  var forMahool;
  var forGapsahp;
  var fillColor;
  var groupValue;
  var xxxKey;
  Function(dynamic) onChangedForStudy;
  Function(dynamic) onChangedForMahool;
  Function(dynamic) onChangedForGapshap;
  Function(dynamic) onChangedForEnjoy;

  // ------------Gender--------------

  var male;
  var female;
  var trans;
  var notPreferred;
  var groupValue2;
  Function(dynamic) onChangedForFemale;
  Function(dynamic) onChangedForTrans;
  Function(dynamic) onChangedForMale;
  Function(dynamic) onChangedForNotPreferred;

  @override
  State<WhyDoYouWantToComeToCas> createState() =>
      _WhyDoYouWantToComeToCasState();
}

class _WhyDoYouWantToComeToCasState extends State<WhyDoYouWantToComeToCas> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // ------------------------------------------------------------------
        FittedBox(
          child: Text(
            'Why do you want come to CAS?',
            style: myTextStyle(
                color: Colors.black, size: 16, fontWeight: FontWeight.bold),
          ),
        ),
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Radio(
                    fillColor: widget.xxxKey == true
                        ? WidgetStatePropertyAll(widget.fillColor)
                        : null,
                    activeColor: const Color.fromARGB(255, 32, 173, 202),
                    value: widget.forStudy,
                    groupValue: widget.groupValue,
                    onChanged: widget.onChangedForStudy),
              ),
              const FittedBox(child: Text('For Study')),
              FittedBox(
                child: Radio(
                    fillColor: widget.xxxKey == true
                        ? WidgetStatePropertyAll(widget.fillColor)
                        : null,
                    activeColor: const Color.fromARGB(255, 32, 173, 202),
                    value: widget.forEnjoy,
                    groupValue: widget.groupValue,
                    onChanged: widget.onChangedForEnjoy),
              ),
              const FittedBox(child: Text('Enjoy')),
              FittedBox(
                child: Radio(
                    fillColor: widget.xxxKey == true
                        ? WidgetStatePropertyAll(widget.fillColor)
                        : null,
                    activeColor: const Color.fromARGB(255, 32, 173, 202),
                    value: widget.forGapsahp,
                    groupValue: widget.groupValue,
                    onChanged: widget.onChangedForGapshap),
              ),
              const FittedBox(child: Text('Gapshap')),
              FittedBox(
                child: Radio(
                    fillColor: widget.xxxKey == true
                        ? WidgetStatePropertyAll(widget.fillColor)
                        : null,
                    activeColor: const Color.fromARGB(255, 32, 173, 202),
                    value: widget.forMahool,
                    groupValue: widget.groupValue,
                    onChanged: widget.onChangedForMahool),
              ),
              const FittedBox(child: Text('For Mahool')),
            ],
          ),
        ),

// ------------------------------------------------------------------------------

        FittedBox(
          child: Text(
            'What is your Gender?',
            style: myTextStyle(
                color: Colors.black, size: 16, fontWeight: FontWeight.bold),
          ),
        ),
        FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Radio(
                    fillColor: widget.xxxKey == true
                        ? WidgetStatePropertyAll(widget.fillColor)
                        : null,
                    activeColor: const Color.fromARGB(255, 32, 173, 202),
                    value: widget.male,
                    groupValue: widget.groupValue2,
                    onChanged: widget.onChangedForMale),
              ),
              const FittedBox(child: Text('Male')),
              FittedBox(
                child: Radio(
                    fillColor: widget.xxxKey == true
                        ? WidgetStatePropertyAll(widget.fillColor)
                        : null,
                    activeColor: const Color.fromARGB(255, 32, 173, 202),
                    value: widget.female,
                    groupValue: widget.groupValue2,
                    onChanged: widget.onChangedForFemale),
              ),
              const FittedBox(child: Text('Female')),
              FittedBox(
                child: Radio(
                    fillColor: widget.xxxKey == true
                        ? WidgetStatePropertyAll(widget.fillColor)
                        : null,
                    activeColor: const Color.fromARGB(255, 32, 173, 202),
                    value: widget.trans,
                    groupValue: widget.groupValue2,
                    onChanged: widget.onChangedForTrans),
              ),
              const FittedBox(child: Text('Trans')),
              FittedBox(
                child: Radio(
                    fillColor: widget.xxxKey == true
                        ? WidgetStatePropertyAll(widget.fillColor)
                        : null,
                    activeColor: const Color.fromARGB(255, 32, 173, 202),
                    value: widget.notPreferred,
                    groupValue: widget.groupValue2,
                    onChanged: widget.onChangedForNotPreferred),
              ),
              const FittedBox(child: Text('Not Preferred'))
            ],
          ),
        )
      ],
    );
  }
}
