import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:samskara_customer/common/ButtonClass.dart';
import 'package:samskara_customer/screens/PrivacyPolicy.dart';
import 'package:samskara_customer/screens/TermsConditions.dart';
import '../common/string_api.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();




  @override
  void dispose() {
    nameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    super.dispose();
  }
  bool isCheckedOne = false;
  bool isCheckedTwo = false;
  bool isCheckedthree = false;
  bool valueCheck = false;

  bool isCheckedAgree = false;
  var deviceSize;
   List<bool> arr = [];

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    return Scaffold(
        body:
        SingleChildScrollView(
            child: Container(width: width,
                height: height,
                padding: const EdgeInsets.fromLTRB(27, 50, 27, 0),
                color: Colors.white,
                child: Form(
                  // autovalidateMode: AutovalidateMode.disabled,
                  key: _formkey, child: Column(children: [
                  const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            letterSpacing: 1,
                            height: 1.53,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF131A22),
                            decoration: TextDecoration.none),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      "Please fill the following details to create an \naccount",
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.08,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF131A22),
                          decoration: TextDecoration.none),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: nameController,
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"),)
                    // ],
                    onChanged: null
                    ,
                    validator:
                        (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your first name';
                      } else if (!value.isValidFirstName) {
                        return 'Enter valid first name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                      ),
                      fillColor: Color(0xFFF3F5FF),
                      filled: true,
                      hintText: 'First Name',
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA3A3A3),
                          decoration: TextDecoration.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: lastNameController,
                    onChanged: null,
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"),)
                    // ],
                    validator:
                        (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter your  last name';
                      } else if (!value.isValidLastName) {
                        return 'Enter valid last name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                      ),
                      fillColor: Color(0xFFF3F5FF),
                      filled: true,
                      hintText: 'Last Name',
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA3A3A3),
                          decoration: TextDecoration.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailController,
                    onChanged: null,
                    validator:
                        (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      } else if (!value.isValidEmail) {
                        return 'Enter valid email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                      ),
                      fillColor: Color(0xFFF3F5FF),
                      filled: true,
                      hintText: 'Email *',
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA3A3A3),
                          decoration: TextDecoration.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Service Type",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000)),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 11,
                  ),
                  // Container(
                  //     height: 159,
                  //     width: width,
                  //     alignment: Alignment.topLeft,
                  //     child: ListView(
                  //       physics: NeverScrollableScrollPhysics(),
                  //       children: [
                  //       ...values.map(_buildSingleCheckbox).toList()
                  //     ],)
                  //
                  //
                  // ),

                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                            checkColor: Color(0xFF02519E),
                            value: isCheckedOne,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedOne = value!;
                                debugPrint('key1 $isCheckedOne');
                                if(isCheckedOne){
                                debugPrint('check checked');
                                valueCheck=false;
                                }else{debugPrint('check  Not checked');
                                valueCheck=true;}

                              });
                            })),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Yajman Location",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000)),
                    ),
                    SizedBox(
                      width: width - 340,
                    ),
                    SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                            checkColor: Color(0xFF02519E),
                            value: isCheckedTwo,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedTwo = value!;
                                if(  isCheckedTwo){
                                  debugPrint('check checked');
                                  valueCheck=false;
                                }else{debugPrint('check  Not checked');
                                valueCheck=true;}
                              });
                            })),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Consulting",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000)),
                    ),
                  ]),

                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                              checkColor: Color(0xFF02519E),
                              value: isCheckedthree,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedthree = value!;
                                  if(isCheckedthree){
                                    debugPrint('check checked');
                                    valueCheck=false;
                                  }else{debugPrint('check  Not checked');
                                  valueCheck=true;}
                                });
                              })),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        "Video Pooja",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),

                  valueCheck?

                  Text(
                    "Select Anyone",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.red.shade700),
                  ) : Container(),


              Transform.translate(
                offset: const Offset(-10, 0),
                child:
                CheckboxListTileFormField(
                  controlAffinity: ListTileControlAffinity.leading,
                  errorColor: Colors.red.shade700,
                  title: RichText(
                    text: TextSpan(
                      children:  <TextSpan>[
                        TextSpan(text:"By signing you agree to our ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF000000))),
                        TextSpan(text: "T&C ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF1E2F59),decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>TermsConditions()), (route) => false);
                            }
                        ),
                        TextSpan(text: "and",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF000000))),
                        TextSpan(text: "Privacy Policy",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF1E2F59),decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>PrivacyPolicy()), (route) => false);
                              }
                        ),

                      ]
                    ),
                  ),
                  // const Text(
                  //   "By signing you agree to our T&C and Privacy Policy",
                  //   style: TextStyle(
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w500,
                  //       color: Color(0xFF000000)),
                  // ),
                  onChanged: (bool? value){
                    setState(() {

                      isCheckedAgree=value!;
                      debugPrint('checked  one ${isCheckedAgree}');
                    });
                  },
                  validator: ( bool? isCheckedAgree){
                    if(isCheckedAgree!){
                      debugPrint('checked ${isCheckedAgree}');
                      return null;}
                    else{
                      return "required";
                    }

                  },
                  contentPadding: EdgeInsets.zero,
                  autovalidateMode: AutovalidateMode.always,
                ),
              ),


                      //     Checkbox(
                      //         checkColor: Color(0xFFffffff),
                      //         value: isChecked,
                      //         onChanged: (bool? value) {
                      //           setState(() {
                      //             isChecked = value!;
                      //           });
                      //         })),
                      //
                      //
                      // const SizedBox(
                      //   width: 7,
                      // ),
                      // const Expanded(
                      //   child: Text(
                      //     "By signing you agree to our T&C and Privacy Policy",
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         fontWeight: FontWeight.w400,
                      //         color: Color(0xFF000000)),
                      //   ),
                      // )

                  SizedBox(height: 60,)
                ]),)

            )),
        floatingActionButton: InkWell(
          onTap:  () { try{arr.clear();}catch(e){}
          arr.add(isCheckedOne);arr.add(isCheckedTwo);arr.add(isCheckedthree);
          debugPrint('check  ${arr.length}');debugPrint('check  $isCheckedTwo');debugPrint('check  $isCheckedthree');
         if(isCheckedOne || isCheckedTwo ||  isCheckedthree){
              debugPrint('check checked');
              valueCheck=false;
          }else{debugPrint('check  Not checked');
              valueCheck=true;
         }setState(() {});
          if (_formkey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Processing Data"))
              );
            }
          },
            child: Container(
    padding: const EdgeInsets.only(bottom:40),
    child:ButtonClass("Continue",40,36))
        ),
      resizeToAvoidBottomInset: false,

    );
  }

  // Widget _buildSingleCheckbox(CheckBoxState checkbox) =>
  //
  //     CheckboxListTileFormField(
  //         controlAffinity: ListTileControlAffinity.leading,
  //         checkColor: Colors.white,
  //         title: new Text(checkbox.title),
  //         validator: (bool? value){
  //           if(!checkbox.value) {
  //             return "required";
  //           }else{
  //             return null;
  //           }
  //         },
  //         onChanged: (value) => setState(() => checkbox.value = value!)
  //
  //     );

}


