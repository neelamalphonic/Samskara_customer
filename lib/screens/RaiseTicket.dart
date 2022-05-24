import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:samskara_customer/screens/HelpDesk.dart';

import '../common/ButtonClass.dart';

class RaiseTicket extends StatefulWidget {
  const RaiseTicket({Key? key}) : super(key: key);

  @override
  State<RaiseTicket> createState() => _RaiseTicketState();
}

class _RaiseTicketState extends State<RaiseTicket> {
  var deviceSize;
  static bool isSelected = false;
  GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    String selectedValue = "Subject";
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child:  Text("Subject",style: TextStyle(color: Color(0xFFA3A3A3)),), value: "Subject"),
    ];
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
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>HelpDesk()), (route) => false);
              },
              iconSize: 32),
        ),
        title: Text("Raise Ticket",style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFF131A22),
            height: 1.08,
            letterSpacing: 0.50),) ,
      ),
      body: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  onChanged: null,
                  validator:
                      (value) {
                    if(value==null||value.isEmpty){
                      return "Please Enter Booking ID";
                    }
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
                    hintText: 'Booking ID',
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
                SizedBox(height: 10,),
                TextFormField(
                  onChanged: null,
                  validator:
                      (value) {
                    if(value==null||value.isEmpty){
                      return "Please Enter Booking ID";
                    }
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
                    hintText: 'Enter Title',
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
                SizedBox(height: 10,),
                DropdownButtonFormField(
                  validator: (value) {
                    if(value=="Subject"){
                      return "Please Enter Booking ID";
                    }
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.all(13),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  const BorderSide(
                          color: Color(0xFFF3F5FF), width: 0),
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    fillColor: const Color(0xFFF3F5FF),
                    filled: true,

                  ),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xFF000000),),
                  items: menuItems,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                      isSelected= true;
                    });
                  },
                  value: selectedValue,
                ),
                SizedBox(height: 10,),
                TextFormField(
                  maxLines: 8,
                  onChanged: null,
                  validator:
                      (value) {
                    if(value==null||value.isEmpty){
                      return "Please Enter Description";
                    }
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
                    hintText: 'Description',
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
                SizedBox(height: 10,),
                TextFormField(
                  onChanged: null,
                  validator:
                      (value) {
                    if(value==null||value.isEmpty){
                      return "Please Upload Files";
                    }
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
                    hintText: 'Upload',
                    suffixIcon: IconButton(
                      onPressed: () async {
                        final  result = FilePicker.platform.pickFiles();
                      },
                      icon: Icon(Icons.file_upload_outlined,color: Color(0xFF000000),),
                    ),
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
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Processing Data"))
                      );
                    }
                  },
                  child: ButtonClass("Submit",40,40),
                )
              ],
            ),
          )

      ),
    )
    ))
      ;
  }
}
