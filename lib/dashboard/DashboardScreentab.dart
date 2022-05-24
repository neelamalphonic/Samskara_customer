import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:http/http.dart' as http;
import 'package:samskara_customer/common/Confirm_dialog.dart';
import 'package:samskara_customer/login/SignIn.dart';
import 'package:samskara_customer/login/SignUp.dart';
import 'package:samskara_customer/screens/Account.dart';
import 'package:samskara_customer/screens/AccountsHistory.dart';
import 'package:samskara_customer/screens/AccountsTransaction.dart';
import 'package:samskara_customer/screens/AddBankDetails.dart';
import 'package:samskara_customer/screens/BankDetails.dart';
import 'package:samskara_customer/screens/Booking.dart';
import 'package:samskara_customer/screens/HelpDesk.dart';
import 'package:samskara_customer/screens/HomeScreen.dart';
import 'package:samskara_customer/screens/HowCanWeHelp.dart';
import 'package:samskara_customer/screens/PrivacyPolicy.dart';
import 'package:samskara_customer/screens/Profile.dart';
import 'package:samskara_customer/screens/RaiseTicket.dart';
import 'package:samskara_customer/screens/ReferralEarnings.dart';
import 'package:samskara_customer/screens/TermsConditions.dart';
import 'package:samskara_customer/screens/TimeAvail.dart';
import '../screens/EventSelect.dart';

class DashboardScreentab extends StatefulWidget {
  late int _selectedTabIndex;
  late  String title;
  DashboardScreentab(this._selectedTabIndex,  this.title);
  @override
  _DashboardScreentabtate createState() => _DashboardScreentabtate();
}

class _DashboardScreentabtate extends State<DashboardScreentab> {
  var is_data_loaded = false;

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  PageController _pageController = PageController();
  late int _selectedIndex;
  final List<Widget> _screens = [
    HomeScreen(), //0
    //Request_Booking("Request Booking"),
    Booking(),  //1
    //Validation(),
    AccountsTransaction(), //2
   // Booking_Detail(),   //3
    Account(),  //3
    Confirm_dialog(), //4
    SignUp(), //5
    SignIn(), //6
    Profile(), //7
    //MultiSelect(),
    //CSC(),
    //FilePickerDemo(),
    //TimeAvail(), //9
    TimeAvail(),//8
    BankDetails(), //9
    AddBankDetails(), //10
    HelpDesk(), //11
    RaiseTicket(), //12
    HowCanWeHelp(), //13
    ReferralEarnings(), //14
    EventSelect(), //16
    AccountsHistory(), //17
    TermsConditions(), //18
    PrivacyPolicy(), //19
  ];
  ListQueue<int> _navigationQueue = ListQueue();

  @override
  void initState() {
    _getPrefData();

    super.initState();
    setState(() {
      _selectedIndex = widget._selectedTabIndex;
      // if (_selectedIndex == 0) {
      //   widget.title = "Indra Bazar, Jaipur";
      // } else if (_selectedIndex == 1) {
      //   widget.title = "Bookings";
      // } else if (_selectedIndex == 2) {
      //   widget.title = "Accounts";
      // } else if (_selectedIndex == 3) {
      //   widget.title = "Account";
      // }
    });

    debugPrint('selectedIndex  ${widget._selectedTabIndex}');
    debugPrint('selectedIndex  ${_selectedIndex}');
    SchedulerBinding.instance!.addPostFrameCallback((_) => {
          _onItemTapped(_selectedIndex,widget.title),
        });
  }

  _getPrefData() async {
    super.initState();
  }

  void _onItemTapped(int selectedIndex, String newtitle) {
    _navigationQueue.addLast(_selectedIndex);
    //   setState(() => _selectedIndex = selectedIndex);
    print(selectedIndex);
    _pageController.jumpToPage(selectedIndex);
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color(0xFF131A22),
        height: 1.08,
        letterSpacing: 0.50);
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 60),
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Theme.of(context).accentColor,
                  leading: _selectedIndex == 0
                      ? Container(
                    padding: const EdgeInsets.only(left: 10),
                          child: GestureDetector(
                              child: Image.asset("assets/icons/location.png",),
                              onTap: () {
                                // _scaffoldKey.currentState!.openDrawer();
                              },
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: IconButton(
                              icon: Container(
                                  width: 25,
                                  height: 15,
                                  child:
                                      Image.asset("assets/icons/backicon.png")),
                              color: Theme.of(context).primaryColor,
                              onPressed: () {
                                _selectedIndex = _navigationQueue.last;
                                String newtitle=widget.title;

                                debugPrint('debugindex+title ${_selectedIndex}${newtitle}');

                                setState(() {});

                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          DashboardScreentab(_selectedIndex,widget.title),
                                    ),
                                    (route) => false);
                              },
                              iconSize: 32),
                        ),
                title: Text(widget.title,
                            style: style, ),
                actions: [
                    // isLogin == false ? Container() :
                    Container(
                      padding: EdgeInsets.only(right: 12),
                      child: _selectedIndex == 3
                          ? null
                          : IconButton(
                              icon: Image.asset(
                                'assets/icons/bell.png',
                                width: 20.4,
                                height: 24,
                              ),
                              color: Theme.of(context).primaryColor,
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=> SignUp()), (route) => false);
                              },
                              iconSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
          body: PageView(
            controller: _pageController,
            children: _screens,
            onPageChanged: _onPageChanged,
            physics: NeverScrollableScrollPhysics(),
          ),
          bottomNavigationBar: _createBottomNavigationBarTabBar(),
        ),
      ),
    );
  }

  Widget _createBottomNavigationBarTabBar() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 4,
          spreadRadius: 4,
          offset: Offset(-1, -0.8,),
        )
      ]),
      height: 60,
      child: Column(
        children: [
          //Container(height: 1.0, color: Colors.grey.shade100, width: MediaQuery.of(context).size.width,),

          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildNavBarTabItems('assets/icons/vector.png', "", 0,),
                _buildNavBarTabItems('assets/icons/union.png', "", 1,),
                _buildNavBarTabItems('assets/icons/subtract.png', "", 2,),
                _buildNavBarTabItems('assets/icons/vector1.png', "", 3,),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildNavBarTabItems(
    String imageName,
    String title,
    int index,
  ) {
    double opacity = 0.0;
    return InkWell(
        onTap: () {
          if (index != _selectedIndex) {
            debugPrint('debug-index ${index}');
            if (index == 0) {
              widget.title = "Indra Bazar, Jaipur";
            } else if (index == 1) {
              widget.title = "Bookings";
            } else if (index == 2) {
              widget.title = "Accounts";
            } else if (index == 3) {
              widget.title = "Account";
            }
            _onItemTapped(index,widget.title);
            setState(() {

            });
            opacity = 1;
          }
        },
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),

            Container(
              alignment: Alignment.center,
              height: 25.0,
              width: 25.0,
              child: Image(
                image: AssetImage(imageName),
                color: _selectedIndex == index
                    ? Color(0xFF122D72)
                    : Colors.grey.shade400,
                // width: 25, height: 25,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            _selectedIndex == index
                ? Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  )
                : Container(),
            // AnimatedOpacity(
            //     opacity: opacity,
            //     duration: const Duration(seconds: 2),
            //     child: Text(icon,style: TextStyle(color: Colors.black),),
            //   )),
            Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w700,
                      color: index == _selectedIndex
                          ? Colors.white
                          : Colors.grey.shade400),
                )),
          ],
        ));
  }
}
