import 'package:flutter/material.dart';

class EnterYourEmail extends StatefulWidget {
  EnterYourEmail({super.key, required this.formKey});
  var formKey;
  @override
  State<EnterYourEmail> createState() => _EnterYourEmailState();
}

class _EnterYourEmailState extends State<EnterYourEmail> {
  var controller = TextEditingController();
  var focusNode = FocusNode();

  var emailValidContext = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';

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
            // ------Validator-------------

            validator: (value) {
              if (controller.text.isEmpty) {
                return 'Should not be null';
              } else if (!RegExp(emailValidContext).hasMatch(controller.text)) {
                return 'Email context is invalid';
              } else
                return null;
            },
            onChanged: (value) {
              setState(() {});
            },
            autocorrect: true,
            autofillHints: const [AutofillHints.email],
            focusNode: focusNode,
            controller: controller,
            decoration: InputDecoration(
                labelText: 'Enter Your Email',
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: const Icon(Icons.mail),
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
