import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EnterYourPhoneNumber extends StatefulWidget {
  EnterYourPhoneNumber({super.key, required this.formKey});
  var formKey;
  @override
  State<EnterYourPhoneNumber> createState() => _EnterYourPhoneNumberState();
}

class _EnterYourPhoneNumberState extends State<EnterYourPhoneNumber> {
  var controller = TextEditingController();
  var focusNode = FocusNode();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.always,
        key: widget.formKey,
        child: SizedBox(
          width: 320,
          child: TextFormField(
            validator: (value) {
              if (controller.text.isEmpty) {
                return 'Should not be null';
              } else if (value!.length <= 10 || value.length >= 12) {
                return 'Number form is invalid';
              } else {
                return null;
              }
            },
            onChanged: (value) {
              setState(() {});
            },
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[\\d]'))
            ],
            autocorrect: true,
            autofillHints: const [AutofillHints.telephoneNumber],
            focusNode: focusNode,
            controller: controller,
            decoration: InputDecoration(
                labelText: 'Enter Your Phone NO',
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: const Icon(Icons.phone),
                suffixIcon: controller.text.isNotEmpty
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            controller.clear();
                          });
                        },
                        icon: const Icon(Icons.close))
                    : null,

                // ---------Focused Border-----------

                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 32, 173, 202), width: 3)),

                // ---------ERROR Border-----------

                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.red, width: 2)),

                // ---------Enable Border-----------

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1)),

                //-----------Border--------

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1))),
          ),
        ));
  }
}
