import 'package:flutter/material.dart';

class EnterYourPassword extends StatefulWidget {
  EnterYourPassword(
      {super.key, required this.createFormKey, required this.confirmFormKey});
  var createFormKey;
  var confirmFormKey;
  @override
  State<EnterYourPassword> createState() => _EnterYourPasswordState();
}

class _EnterYourPasswordState extends State<EnterYourPassword> {
  var createPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var createPasswordFocusNode = FocusNode();
  var confirmPasswordFocusNode = FocusNode();

  var isCreatePasswordObscure = true;
  var isConfirmPasswordObscure = true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    createPasswordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            autovalidateMode: AutovalidateMode.always,
            key: widget.createFormKey,
            child: SizedBox(
              width: 320,
              child: TextFormField(
                validator: (value) {
                  if (createPasswordController.text.isEmpty) {
                    return 'Should not be null';
                  } else if (!RegExp('[a-z]')
                      .hasMatch(createPasswordController.text)) {
                    return 'Password must contain lower case';
                  } else if (!RegExp('[A-Z]')
                      .hasMatch(createPasswordController.text)) {
                    return 'Password must contain upper case';
                  } else if (!RegExp('[\\s]')
                      .hasMatch(createPasswordController.text)) {
                    return 'Password must contain spaces';
                  } else if (!RegExp('[\\d]')
                      .hasMatch(createPasswordController.text)) {
                    return 'Password must contain numbers';
                  } else if (!RegExp('[!@_*<|.,+=([{)}#%?/>;:~`^]')
                      .hasMatch(createPasswordController.text)) {
                    return 'Password must contain !@_*<|.,+=([{)} # %?/> ;:~` ^';
                  } else if (value!.length <= 6) {
                    return 'Password must contain at least 6 digits';
                  } else {
                    return null;
                  }
                },
                autofillHints: const [AutofillHints.password],
                autocorrect: true,
                focusNode: createPasswordFocusNode,
                obscureText: isCreatePasswordObscure,
                controller: createPasswordController,
                decoration: InputDecoration(
                    labelText: 'Create Your Password',
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: isCreatePasswordObscure == true
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                isCreatePasswordObscure = false;
                              });
                            },
                            icon: const Icon(Icons.visibility))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                isCreatePasswordObscure = true;
                              });
                            },
                            icon: const Icon(Icons.visibility_off)),
                    // ---------Focused Border-----------

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 32, 173, 202),
                            width: 3)),

                    // ---------ERROR Border-----------

                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2)),

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
            )),
        const SizedBox(
          height: 20,
        ),
        Form(
            autovalidateMode: AutovalidateMode.always,
            key: widget.confirmFormKey,
            child: SizedBox(
              width: 320,
              child: TextFormField(
                validator: (value) {
                  if (confirmPasswordController.text.isEmpty) {
                    return 'Should not be null';
                  } else if (confirmPasswordController.text !=
                      createPasswordController.text) {
                    return 'Password does not match';
                  } else {
                    return null;
                  }
                },
                autofillHints: const [AutofillHints.password],
                autocorrect: true,
                focusNode: confirmPasswordFocusNode,
                obscureText: isConfirmPasswordObscure,
                controller: confirmPasswordController,
                decoration: InputDecoration(
                    labelText: 'Confirm Your Password',
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: isConfirmPasswordObscure == true
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                isConfirmPasswordObscure = false;
                              });
                            },
                            icon: const Icon(Icons.visibility))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                isConfirmPasswordObscure = true;
                              });
                            },
                            icon: const Icon(Icons.visibility_off)),
                    // ---------Focused Border-----------

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 32, 173, 202),
                            width: 3)),

                    // ---------ERROR Border-----------

                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2)),

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
            ))
      ],
    );
  }
}
