// import 'package:cetrometrics/Api_Module/api_config.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:country_calling_code_picker/picker.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:samskara_customer/common/ButtonClass.dart';
import 'package:samskara_customer/common/MultiSelect.dart';
import 'package:samskara_customer/common/string_api.dart';

import '../dashboard/DashboardScreentab.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
   Country? _selectedCountry;
  // late String countryValue = "country*";
  // late String stateValue = "State*";
  // late String cityValue = "City*";

  static bool isSelected = false;
  static bool isSelectedNew = false;
  bool show= false;

  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getCountryByCountryCode(context, 'IN');
    setState(() {
      _selectedCountry = country!;
      debugPrint('asfasddas $_selectedCountry');
    });
  }
  // TextEditingController countryName=TextEditingController();
  // TextEditingController state=TextEditingController();
  // TextEditingController city=TextEditingController();

  @override
  Widget build(BuildContext context) {
    String selectedValue = "Experience*";
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text("Experience*", style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: isSelected == true ? Color(0xFFA3A3A3) : Color(0xFFA3A3A3)),), value: "Experience*"),
      DropdownMenuItem(child: Text("1 years", style: TextStyle(color: Color(0xFF000000))), value: "1 years"),
      DropdownMenuItem(child: Text("2 years", style: TextStyle(color: Color(0xFF000000))), value: "2 years"),
      DropdownMenuItem(child: Text("3 years", style: TextStyle(color: Color(0xFF000000))), value: "3 years"),
    ];
    String selected = "Select Ethnicity*";
    List<DropdownMenuItem<String>> religionItems = [
      DropdownMenuItem(
          child: Text("Select Ethnicity*", style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: isSelected == true ? Color(0xFFA3A3A3) : Color(0xFFA3A3A3)),), value: "Select Ethnicity*"),
      DropdownMenuItem(child: Text("Hindu", style: TextStyle(color: Color(0xFF000000))), value: "Hindu"),
      DropdownMenuItem(child: Text("Muslim", style: TextStyle(color: Color(0xFF000000))), value: "Muslim"),
      DropdownMenuItem(child: Text("Christian", style: TextStyle(color: Color(0xFF000000))), value: "Christian"),
    ];
    String selectedCity = "City*";
    List<DropdownMenuItem<String>> cityItems = [
      DropdownMenuItem(child: Text("City*", style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: isSelected == true ? Color(0xFFA3A3A3) : Color(0xFFA3A3A3)),), value: "City*"),
      DropdownMenuItem(child: Text("Hindu", style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Color(0xFF000000))), value: "One"),
      DropdownMenuItem(child: Text("Muslim", style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Color(0xFF000000))), value: "two"),
      DropdownMenuItem(child: Text("Christian", style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Color(0xFF000000))), value: "three"),
    ];
    String selectedState = "State*";
    List<DropdownMenuItem<String>> stateItems = [
      DropdownMenuItem(
          child: Text("State*", style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: isSelected == true ? Color(0xFFA3A3A3) : Color(0xFFA3A3A3)),), value: "State*"),
      DropdownMenuItem(child: Text("Hindu", style: TextStyle(color: Color(0xFF000000))), value: "1"),
      DropdownMenuItem(child: Text("Muslim", style: TextStyle(color: Color(0xFF000000))), value: "2"),
      DropdownMenuItem(child: Text("Christian", style: TextStyle(color: Color(0xFF000000))), value: "3"),
    ];
    String selectedCountry = "Country*";
    List<DropdownMenuItem<String>> countryItems = [
      DropdownMenuItem(
          child: Text("Country*", style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: isSelected == true ? Color(0xFFA3A3A3) : Color(0xFFA3A3A3)),), value: "Country*"),
      DropdownMenuItem(child: Text("Hindu", style: TextStyle(color: Color(0xFF000000))), value: "4"),
      DropdownMenuItem(child: Text("Muslim", style: TextStyle(color: Color(0xFF000000))), value: "5"),
      DropdownMenuItem(child: Text("Christian", style: TextStyle(color: Color(0xFF000000))), value: "6"),
    ];
    var packsize, height, width;
    packsize = MediaQuery.of(context).size;
    height = packsize.height;
    width = packsize.width;
    final country = _selectedCountry;
    return WillPopScope(
      onWillPop: () async=>false,
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
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>DashboardScreentab(3,"Account")), (route) => false);
                      },
                      iconSize: 32),
                ),
                title: Text("Account",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFF131A22),
                    height: 1.08,
                    letterSpacing: 0.50),) ,
              ),
            body: Form(
                key: _formkey,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                    width: width,
                    height: height,
                    child: SingleChildScrollView(
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: Center(
                                child: Container(
                                  // color:  Colors.blue,
                                    padding: const EdgeInsets.all(4),
                                    width: width / 3 - 20,
                                    height: width / 3 - 20,
                                    child: Image.asset("assets/images/profile.png")),
                              ),
                            ),

                            const TextButton(
                              onPressed: null,
                              child: Text(
                                "Change Profile Picture",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Tw Cen MT",
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFD00009),
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              onChanged: null,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter your first name';
                                } else if (!value.isValidFirstName) {
                                  return 'Enter valid first name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                                hintText: "First Name*",
                                hintStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA3A3A3),
                                    decoration: TextDecoration.none),
                                fillColor: Color(0xFFF3F5FF),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              onChanged: null,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter your  last name';
                                } else if (!value.isValidLastName) {
                                  return 'Enter valid last name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                                hintText: "Last Name*",
                                hintStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA3A3A3),
                                    decoration: TextDecoration.none),
                                fillColor: Color(0xFFF3F5FF),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              onChanged: null,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                                hintText: "Email (Optional)",
                                hintStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA3A3A3),
                                    decoration: TextDecoration.none),
                                fillColor: Color(0xFFF3F5FF),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 89,
                                    height: 50,
                                    child: GestureDetector(
                                      onTap: (){
                                        __onPressedShowBottomSheetForMobileListView();
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(width: 10.0),
                                          Image.asset(
                                            country == null ? '' : country.flag,
                                            package: countryCodePackageName,
                                            width: 16,
                                          ),
                                          SizedBox(width: 5.0),
                                          Text(
                                            country == null ? '' : country.callingCode,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13.0,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 5.0),
                                          Icon(Icons.arrow_drop_down, size: 18),
                                          SizedBox(width: 2.0),
                                        ],
                                      ),
                                    )
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                    child: TextFormField(
                                      onChanged: null,
                                      validator: (value){
                                        if(value==null||value.isEmpty){
                                          return "Please Enter Mobile Number";}
                                        else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                                        return null;
                                      },

                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.all(15),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const  BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                          borderRadius: BorderRadius.circular(11.0),
                                        ),
                                        hintText: "Mobile",
                                        hintStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFA3A3A3),
                                            decoration: TextDecoration.none),
                                        fillColor: const Color(0xFFF3F5FF),
                                        filled: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          const   BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                          borderRadius: BorderRadius.circular(11.0),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.multiline,
                              textInputAction: TextInputAction.newline,
                              minLines: 1,
                              maxLines: 5,
                              onChanged: null,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Address";
                                }
                                // else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                                return null;
                              },
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(15),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () => {},
                                  icon: Image.asset("assets/icons/address.png"),
                                ),
                                hintText: "Address*",
                                hintStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA3A3A3),
                                    decoration: TextDecoration.none),
                                fillColor: Color(0xFFF3F5FF),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: width,
                              height: 60,
                              child: Row(
                                children: [
                                  Container(
                                    width: (width-40)/2-15,
                                    height: 60,
                                    margin: const EdgeInsets.only(right: 10),
                                    child: TextFormField(
                                      onChanged: null,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please Enter Pincode";
                                        }
                                        // else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.all(15),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                          borderRadius: BorderRadius.circular(11.0),
                                        ),
                                        hintText: "Pincode*",
                                        hintStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFA3A3A3),
                                            decoration: TextDecoration.none),
                                        fillColor: Color(0xFFF3F5FF),
                                        filled: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                          BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                          borderRadius: BorderRadius.circular(11.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: (width-40)/2-11,
                                      height: 60,
                                      child: DropdownButtonFormField(
                                        validator: (value) {
                                          if (value == "City*") {
                                            return "Please Select City";
                                          }
                                          // else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(12),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xFFF3F5FF), width: 0),
                                            borderRadius: BorderRadius.circular(11.0),
                                          ),
                                          fillColor: const Color(0xFFF3F5FF),
                                          filled: true,
                                        ),
                                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                                        items: cityItems,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                            isSelected = true;
                                          });
                                        },
                                        value: selectedCity,
                                      )
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: width-40,
                              height: 60,
                              child: Row(
                                children: [
                                  Container(
                                      width: (width-40)/2-10,
                                      height: 60,
                                      margin: const EdgeInsets.only(right: 10),
                                      child: DropdownButtonFormField(
                                        validator: (value) {
                                          if (value == "State*") {
                                            return "Please Select State";
                                          }
                                          // else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(12),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(0xFFF3F5FF), width: 0),
                                            borderRadius: BorderRadius.circular(11.0),
                                          ),
                                          fillColor: const Color(0xFFF3F5FF),
                                          filled: true,
                                        ),
                                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                                        items: stateItems,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                            isSelected = true;
                                          });
                                        },
                                        value: selectedState,
                                      )
                                  ),
                                  Container(
                                      width: (width-40)/2-14,
                                      height: 60,
                                      child: DropdownButtonFormField(
                                        validator: (value) {
                                          if (value == "Country*") {
                                            return "Please Select Country";
                                          }
                                          // else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(12),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
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
                                            selectedValue = newValue!;
                                            isSelected = true;
                                          });
                                        },
                                        value: selectedCountry,
                                      )
                                  )
                                ],
                              ),
                            ),

                            // CSCPicker(
                            //   ///Enable disable state dropdown [OPTIONAL PARAMETER]
                            //   showStates: true,
                            //
                            //   /// Enable disable city drop down [OPTIONAL PARAMETER]
                            //   showCities: true,
                            //
                            //   ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                            //   flagState: CountryFlag.ENABLE,
                            //
                            //   ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                            //   dropdownDecoration: BoxDecoration(
                            //       borderRadius: BorderRadius.all(Radius.circular(10)),
                            //       color: Color(0xFFF3F5FF),
                            //      // border: Border.all(color: Colors.grey.shade300, width: 1)
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
                            //   countryDropdownLabel: countryValue,
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
                            //       color: Color(0xFFA3A3A3),
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
                            // CountryStateCityPicker(
                            //   country: countryName,
                            //   state: state,
                            //   city: city,
                            //   textFieldInputBorder:OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(12.0),
                            //   ),
                            //
                            // ),
                            Container(
                                width: width,
                                height: 60,
                                child: DropdownButtonFormField(
                                  validator: (value) {
                                    if (value == "Experience*") {
                                      return "Please Select years of experience";
                                    }
                                    // else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(12),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
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
                                      isSelected = true;
                                    });
                                  },
                                  value: selectedValue,
                                )),
                            MultiSelect(),
                            // InkWell(
                            //   onTap: (){
                            //         showDialog(context: context, builder: (BuildContext context)=>
                            //               MultiSelect()
                            //         );
                            //
                            //   },
                            //   child: Container(
                            //     width: width,
                            //     height: 50,
                            //     padding: const EdgeInsets.only(left:13),
                            //     alignment: Alignment.centerLeft,
                            //     decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(11.0),
                            //         border: Border.all(color: Color(0xFFF3F5FF), width: 0),
                            //         color: Color(0xFFF3F5FF)),
                            //     child:Text(
                            //       "Select Language*",
                            //       style: TextStyle(
                            //         color: Color(0xFFA3A3A3),
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 16,
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            //   Row(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Container(
                            //         width: 53,
                            //         height: 46,
                            //         alignment: Alignment.center,
                            //         decoration: BoxDecoration(
                            //             borderRadius: BorderRadius.circular(8.0),
                            //             //border: Border.all(color: Color(0xFF1E2F59), width: 0),
                            //             color: Color(0xFF1E2F59)),
                            //         child: Text(
                            //           "Select Language*",
                            //           style: TextStyle(
                            //             color: Color(0xFFFFFFFF),
                            //             fontWeight: FontWeight.w400,
                            //             fontSize: 16,
                            //           ),
                            //         ),
                            //       ),
                            //       Container(
                            //         width: 65,
                            //         height: 46,
                            //         alignment: Alignment.center,
                            //         decoration: BoxDecoration(
                            //             borderRadius: BorderRadius.circular(8.0),
                            //             //border: Border.all(color: Color(0xFF1E2F59), width: 0),
                            //             color: Color(0xFF1E2F59)),
                            //         child: Text(
                            //           "English",
                            //           style: TextStyle(
                            //             color: Color(0xFFFFFFFF),
                            //             fontWeight: FontWeight.w400,
                            //             fontSize: 16,
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: width,
                                height: 60,
                                child: DropdownButtonFormField(
                                  validator: (value) {
                                    if (value == "Select Ethnicity*") {
                                      return "Please Select Ethnicity";
                                    }
                                    // else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(12),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFFF3F5FF), width: 0),
                                      borderRadius: BorderRadius.circular(11.0),
                                    ),
                                    fillColor: const Color(0xFFF3F5FF),
                                    filled: true,
                                  ),
                                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                                  items: religionItems,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selected = newValue!;
                                      isSelectedNew = true;
                                    });
                                  },
                                  value: selected,
                                )),
                            Row(
                              children: [
                                const Text(
                                  "Education Info",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      height: 1.53,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF131A22)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              onChanged: null,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(13),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                                hintText: "Institution Name (optional)",
                                hintStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA3A3A3),
                                    decoration: TextDecoration.none),
                                fillColor: Color(0xFFF3F5FF),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              onChanged: null,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(13),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                                hintText: "Upload Degree (Optional)",
                                suffixIcon: IconButton(
                                  onPressed: () async {
                                    final  result = FilePicker.platform.pickFiles();
                                  },
                                  icon: Icon(Icons.file_upload_outlined,color: Color(0xFF000000),),
                                ),
                                hintStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFA3A3A3),
                                    decoration: TextDecoration.none),
                                fillColor: Color(0xFFF3F5FF),
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFF3F5FF), width: 0),
                                  borderRadius: BorderRadius.circular(11.0),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            InkWell(
                              onTap: (){
                                if (_formkey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text("Processing Data"))
                                  );
                                }
                              },
                              child: ButtonClass("Save", 40,40),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        )))
            )
            ,
          ),
        )

      , );

  }

  void __onPressedShowBottomSheetForMobileListView() async {
    final country = await showCountryPickerSheet(context);
    if (country != null) {
      setState(() {
        print('fff---${country.countryCode}');
        _selectedCountry = country;
      });
    }
  }
}
