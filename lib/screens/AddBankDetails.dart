import 'dart:async';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:samskara_customer/common/ButtonClass.dart';
import 'package:samskara_customer/screens/BankDetails.dart';
import 'package:timer_button/timer_button.dart';

import '../common/ColorConstants.dart';

class AddBankDetails extends StatefulWidget {
  const AddBankDetails({Key? key}) : super(key: key);

  @override
  State<AddBankDetails> createState() => _AddBankDetailsState();
}

class _AddBankDetailsState extends State<AddBankDetails> {
  late Timer timer;
  late bool timerOn=false;
  late Timer PeriodicTimer;
  Duration durationTime=Duration(minutes: 1);
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  late String countryValue = "Country*";
  late String stateValue = "State*";
  late String cityValue = "City*";

  var deviceSize;
  static bool isSelected = false;
  bool _isVisible=false;
  String selectedCountry = "Country*";
  List<DropdownMenuItem<String>> countryItems = [
    DropdownMenuItem(
        child: Text("Country*", style: TextStyle(fontSize:18,color: Color(0xFFA3A3A3),fontWeight: FontWeight.w400,),), value: "Country*"),
    DropdownMenuItem(child: Text("Hindu", style: TextStyle(fontSize:18,color: Color(0xFF000000),fontWeight: FontWeight.w400,)), value: "4"),
    DropdownMenuItem(child: Text("Muslim", style: TextStyle(fontSize:18,color: Color(0xFF000000),fontWeight: FontWeight.w400,)), value: "5"),
    DropdownMenuItem(child: Text("Christian", style: TextStyle(fontSize:18,color: Color(0xFF000000),fontWeight: FontWeight.w400,)), value: "6"),
  ];


  String selectedValue = "Account Type";
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child:  Text("Account Type",style: TextStyle(color:  isSelected==true?Color(0xFF000000):Color(0xFFA3A3A3)),), value: "Account Type"),
    DropdownMenuItem(child: Text("Savings",style: TextStyle(color: Color(0xFF000000))), value: "Savings"),
    DropdownMenuItem(child: Text("current", style: TextStyle(color: Color(0xFF000000))), value: "current"),

  ];
  void showToast(){
    setState(() {_isVisible= !_isVisible;});
    // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
    //     (BuildContext context)=> DashboardScreentab(6) ), (route) => false);

  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    return WillPopScope(
        onWillPop: ()async=>false,
        child: SafeArea(
        child: Scaffold(
        appBar: AppBar(
              backgroundColor: Theme.of(context).accentColor,
              leading: Container(
                padding: EdgeInsets.only(left: 10.0),
                child: IconButton(
                    icon: Container(
                        width: 25,
                        height: 15,
                        child:
                        Image.asset("assets/icons/backicon.png")),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>BankDetails()), (route) => false);
                    },
                    iconSize: 32),
              ),
              title: Text("Bank Details",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF131A22),
                  height: 1.08,
                  letterSpacing: 0.50),) ,
            ),
        body: Container(
            width: width,
            height: height,
            padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
            child: SingleChildScrollView(
              child:Form(
                  key: _formkey,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DropdownButtonFormField(
                          validator: (value){
                               if(value=="Country*"){
                                 return "please Select Country";
                               }
                          },
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(14),
                            enabledBorder: OutlineInputBorder(
                              borderSide:  const BorderSide(
                                  color: Color(0xFFF3F5FF), width: 0),
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                            fillColor: const Color(0xFFF3F5FF),
                            filled: true,

                          ),
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          items: countryItems,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCountry = newValue!;
                              isSelected= true;
                            });
                          },
                          value: selectedCountry,
                        ),
                        // CSCPicker(
                        //   ///Enable disable state dropdown [OPTIONAL PARAMETER]
                        //   showStates: false,
                        //
                        //   /// Enable disable city drop down [OPTIONAL PARAMETER]
                        //   showCities: false,
                        //
                        //   ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                        //   flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
                        //
                        //   ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                        //   dropdownDecoration: BoxDecoration(
                        //     borderRadius: BorderRadius.all(Radius.circular(10)),
                        //     color: Color(0xFFF3F5FF),
                        //     // border: Border.all(color: Colors.grey.shade300, width: 1)
                        //   ),
                        //
                        //   ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                        //   disabledDropdownDecoration: BoxDecoration(
                        //       borderRadius: BorderRadius.all(Radius.circular(10)),
                        //       color: Colors.grey.shade300,
                        //       border: Border.all(color: Colors.grey.shade300, width: 1)),
                        //
                        //   ///placeholders for dropdown search field
                        //   countrySearchPlaceholder: "Country",
                        //   stateSearchPlaceholder: "State",
                        //   citySearchPlaceholder: "City",
                        //
                        //   ///labels for dropdown
                        //   countryDropdownLabel:  countryValue,
                        //   stateDropdownLabel: stateValue,
                        //   cityDropdownLabel: cityValue,
                        //
                        //   ///Default Country
                        //   //defaultCountry: DefaultCountry.India,
                        //
                        //   ///Disable country dropdown (Note: use it with default country)
                        //   //disableCountry: true,
                        //
                        //   ///selected item style [OPTIONAL PARAMETER]
                        //   selectedItemStyle: TextStyle(
                        //     color: Colors.black,
                        //     fontSize: 14,
                        //   ),
                        //
                        //   ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                        //   dropdownHeadingStyle: TextStyle(
                        //       color:Colors.black,
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.bold),
                        //
                        //   ///DropdownDialog Item style [OPTIONAL PARAMETER]
                        //   dropdownItemStyle: TextStyle(
                        //     color: Colors.black,
                        //     fontSize: 14,
                        //   ),
                        //
                        //   ///Dialog box radius [OPTIONAL PARAMETER]
                        //   dropdownDialogRadius: 10.0,
                        //
                        //   ///Search bar radius [OPTIONAL PARAMETER]
                        //   searchBarRadius: 10.0,
                        //
                        //   ///triggers once country selected in dropdown
                        //   onCountryChanged: (value) {
                        //     debugPrint('country ${value}');
                        //     setState(() {
                        //       ///store value in country variable
                        //       countryValue = value!;
                        //     });
                        //   },
                        //   ///triggers once state selected in dropdown
                        //   onStateChanged:(value) {
                        //     setState(() {
                        //       stateValue = value!;
                        //     });
                        //   },
                        //   ///triggers once city selected in dropdown
                        //   onCityChanged:(value) {
                        //     setState(() {
                        //       cityValue = value!;
                        //     });
                        //   },
                        // ),

                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onChanged: null,
                        validator:
                            (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter bank name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                          ),
                          fillColor: Color(0xFFF3F5FF),
                          filled: true,
                          hintText: 'Bank Name',
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA3A3A3),
                              decoration: TextDecoration.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onChanged: null,
                        validator:
                            (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter branch name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                          ),
                          fillColor: Color(0xFFF3F5FF),
                          filled: true,
                          hintText: 'Branch',
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA3A3A3),
                              decoration: TextDecoration.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onChanged: null,
                        validator:
                            (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Account Number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                          ),
                          fillColor: Color(0xFFF3F5FF),
                          filled: true,
                          hintText: 'Account Number',
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA3A3A3),
                              decoration: TextDecoration.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                          Container(
                              width: width,
                              height: 60,
                              margin: const EdgeInsets.only(bottom: 5),
                              child:
                              DropdownButtonFormField(
                                validator:
                                    (value) {
                                  if (value == "Account Type") {
                                    return 'Please Enter IFSC Code ';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:  const BorderSide(
                                        color: Color(0xFFF3F5FF), width: 0),
                                    borderRadius: BorderRadius.circular(11.0),
                                  ),
                                  fillColor: const Color(0xFFF3F5FF),
                                  filled: true,

                                ),
                                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                                items: menuItems,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                    isSelected= true;
                                  });
                                },
                                value: selectedValue,
                              )),
                      TextFormField(
                        onChanged: null,
                        validator:
                            (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter IFSC Code ';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(13),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                          ),
                          fillColor: Color(0xFFF3F5FF),
                          filled: true,
                          hintText: 'IFSC Code',
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA3A3A3),
                              decoration: TextDecoration.none),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Color(0xFFF3F5FF)),
                          ),
                        ),
                      ),


                    ],
                  )),
            )),
        floatingActionButton:InkWell(
            onTap: () {
              var duration=Duration(seconds: 5);
              timer= Timer(duration,(){
                showToast();
              });
              // startTimer();


              if (_formkey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Processing Data"))
                );
              }
            },
            child:  ButtonClass("Continue", 40,36)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    )));
  }

}
