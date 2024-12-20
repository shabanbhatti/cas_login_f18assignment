import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EnterYourName extends StatefulWidget {
  EnterYourName({super.key, required this.formKey});
  var formKey;
  @override
  State<EnterYourName> createState() => _EnterYourNameState();
}

class _EnterYourNameState extends State<EnterYourName> {
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
              } else if (value!.length <= 6) {
                return 'Name should be greater than 6 alphabets';
              } else if (!RegExp('[\\s]').hasMatch(controller.text)) {
                return 'Name must contain spaces';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {});
            },
            autocorrect: true,
            autofillHints: const [AutofillHints.name],
            focusNode: focusNode,
            controller: controller,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]'))
            ],
            decoration: InputDecoration(
                labelText: 'Enter Your full Name',
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: const Icon(Icons.person),
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
