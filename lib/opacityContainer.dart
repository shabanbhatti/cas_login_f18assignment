import 'package:cas_login_f18assignment/caslogo&name.dart';
import 'package:cas_login_f18assignment/email_textfield.dart';
import 'package:cas_login_f18assignment/name.dart';
import 'package:cas_login_f18assignment/password_textfield.dart';
import 'package:cas_login_f18assignment/phoneNumber.dart';
import 'package:cas_login_f18assignment/styleText.dart';
import 'package:cas_login_f18assignment/whichlanguageUknow.dart';
import 'package:cas_login_f18assignment/whywannacometocas.dart';
import 'package:flutter/material.dart';

class OpacityContainer extends StatefulWidget {
  const OpacityContainer({super.key});

  @override
  State<OpacityContainer> createState() => _OpacityContainerState();
}

class _OpacityContainerState extends State<OpacityContainer> {
  var emailFormKey = GlobalKey<FormState>();
  var nameFormKey = GlobalKey<FormState>();
  var phoneNumberFormKey = GlobalKey<FormState>();
  var createPasswordFormKey = GlobalKey<FormState>();
  var confirmPasswordFormKey = GlobalKey<FormState>();

// --------------which language u know-------------
  var javaValue = false;
  var kotlinValue = false;
  var nothingValue = false;
  var cplusValue = false;
  var pythonValue = false;

// /--------For ERROR Chechkbox
  var errorCheckBox = false;

  // -------------Why wanna come to CAS
  var forStudy = 'forStudy';
  var forEnjoy = 'forenjoy';
  var forMahool = 'formahol';
  var forGapsahp = 'forgapshap';
  var fillColor = const Color.fromARGB(255, 32, 173, 202);
  var groupValue = '';
  var xxxKey = false;

  // --------------Gender---------------
  var male = 'male';
  var female = 'female';
  var trans = 'Transgender';
  var notPreferred = 'notPreferred';
  var groupValue2 = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white.withOpacity(0.85),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              logoOpacity(),
              nameOpacity(),

              const SizedBox(
                height: 50,
              ),

              EnterYourEmail(formKey: emailFormKey),

              const SizedBox(
                height: 20,
              ),

              EnterYourName(formKey: nameFormKey),
              const SizedBox(
                height: 20,
              ),

              EnterYourPhoneNumber(formKey: phoneNumberFormKey),
              const SizedBox(
                height: 20,
              ),

              EnterYourPassword(
                createFormKey: createPasswordFormKey,
                confirmFormKey: confirmPasswordFormKey,
              ),
              const SizedBox(
                height: 20,
              ),

              WhichLanguageYouKnow(
                // ----------OnchangedMethods--------------
                onChangedCplus: (value) {
                  setState(() {
                    if (nothingValue == false) {
                      cplusValue = value!;
                    }
                  });
                },
                onChangedJava: (value) {
                  setState(() {
                    if (nothingValue == false) {
                      javaValue = value!;
                    }
                  });
                },
                onChangedPython: (value) {
                  setState(() {
                    if (nothingValue == false) {
                      pythonValue = value!;
                    }
                  });
                },
                onChangedKotlin: (value) {
                  setState(() {
                    if (nothingValue == false) {
                      kotlinValue = value!;
                    }
                  });
                },
                onChangedNothing: (value) {
                  setState(() {
                    if (javaValue == true ||
                        kotlinValue == true ||
                        pythonValue == true ||
                        cplusValue == true) {
                      null;
                    } else {
                      nothingValue = value!;
                    }
                  });
                },

                // --------------ERRORS--------------
                cPlusError: errorCheckBox,
                javaError: errorCheckBox,
                kotlinError: errorCheckBox,
                nothingError: errorCheckBox,
                pythonError: errorCheckBox,
                // ------------Values---------------
                cplusValue: cplusValue,
                pythonValue: pythonValue,
                javaValue: javaValue,
                nothingValue: nothingValue,
                kotlinValue: kotlinValue,
              ),
              const SizedBox(
                height: 20,
              ),

              // ----------------------------Why want to come to CAS-------------------------

              WhyDoYouWantToComeToCas(
                xxxKey: xxxKey,
                forStudy: forStudy,
                forEnjoy: forEnjoy,
                forGapsahp: forGapsahp,
                forMahool: forMahool,
                fillColor: fillColor,
                groupValue: groupValue,
                onChangedForStudy: (value) {
                  setState(() {
                    groupValue = forStudy;
                  });
                },
                onChangedForMahool: (value) {
                  setState(() {
                    groupValue = forMahool;
                  });
                },
                onChangedForEnjoy: (value) {
                  setState(() {
                    groupValue = forEnjoy;
                  });
                },
                onChangedForGapshap: (value) {
                  setState(() {
                    groupValue = forGapsahp;
                  });
                },
                groupValue2: groupValue2,
                male: male,
                female: female,
                trans: trans,
                notPreferred: notPreferred,
                onChangedForMale: (value) {
                  setState(() {
                    groupValue2 = male;
                  });
                },
                onChangedForFemale: (value) {
                  setState(() {
                    groupValue2 = female;
                  });
                },
                onChangedForTrans: (value) {
                  setState(() {
                    groupValue2 = trans;
                  });
                },
                onChangedForNotPreferred: (value) {
                  setState(() {
                    groupValue2 = notPreferred;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),

              // ------------------------------------------------------------------
              FittedBox(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 32, 173, 202))),
                    onPressed: () {
                      emailFormKey.currentState!.validate();
                      phoneNumberFormKey.currentState!.validate();
                      createPasswordFormKey.currentState!.validate();
                      confirmPasswordFormKey.currentState!.validate();
                      nameFormKey.currentState!.validate();

                      setState(() {
                        if (groupValue.isEmpty || groupValue2.isEmpty) {
                          fillColor = Colors.red;
                          xxxKey = true;
                        } else {
                          fillColor = const Color.fromARGB(255, 32, 173, 202);
                          xxxKey = false;
                        }

                        if (javaValue == false &&
                            pythonValue == false &&
                            kotlinValue == false &&
                            nothingValue == false &&
                            cplusValue == false) {
                          errorCheckBox = true;
                        } else if (javaValue == true ||
                            pythonValue == true ||
                            kotlinValue == true ||
                            nothingValue == true ||
                            cplusValue == true) {
                          errorCheckBox = false;
                        }
                      });
                    },
                    child: Text(
                      'Save',
                      style: myTextStyle(color: Colors.white, size: 15),
                    )),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
