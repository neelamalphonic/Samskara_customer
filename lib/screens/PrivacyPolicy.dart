import 'package:flutter/material.dart';

import '../dashboard/DashboardScreentab.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  var deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    var height = deviceSize.height;
    var width = deviceSize.width;
    return
      WillPopScope(
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
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context)=>DashboardScreentab(3,"Account")), (route) => false);
              },
              iconSize: 32),
        ),
        title: Text("Privacy Policy",style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFF131A22),
            height: 1.08,
            letterSpacing: 0.50),) ,
      ),
      body: Container(
        width: width,
        height: height,
        child:  SingleChildScrollView(
            child:  Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Lorem ipsum', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
                    SizedBox(height: 14,),

                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu volutpat "
                        "adipiscing arcu quam eu, tortor, quis. Sem tortor in massa amet lobortis sit. "
                        "Urna, eget enim ut vivamus nulla amet. Mauris tellus eget lectus blandit."
                        "                                                                       "
                        "                                                                         "
                        "                                                                          "
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu volutpat adipiscing arcu quam eu, tortor, quis. Sem tortor "
                        "in massa amet lobortis sit. Urna, eget enim ut vivamus nulla amet. Mauris tellus eget lectus blandit.Lorem ipsum dolor "
                        "sit amet, consectetur adipiscing elit. Arcu volutpat adipiscing arcu quam eu, tortor, quis. Sem tortor in massa amet lobortis sit. "
                        "Urna, eget enim ut vivamus nulla amet. Mauris tellus eget lectus blandit."
                        "                                                                       "
                        "                                                                         "
                        "                                                                             "
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu "
                        "volutpat adipiscing arcu quam eu, tortor, quis. Sem tortor in massa amet lobortis sit. Urna, eget enim ut vivamus nulla amet. Mauris tellus "
                        "eget lectus blandit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu volutpat adipiscing arcu quam eu, tortor, quis. Sem tortor in "
                        "massa amet lobortis sit. Urna, eget enim ut vivamus nulla amet. Mauris tellus eget lectus blandit.",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,
                          letterSpacing: 1.08,
                          height: 1.4
                      ),
                    ),
                    SizedBox(height: 14,),
                    Text('Lorem ipsum', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
                    SizedBox(height: 14,),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu volutpat "
                        "adipiscing arcu quam eu, tortor, quis. Sem tortor in massa amet lobortis sit. "
                        "Urna, eget enim ut vivamus nulla amet. Mauris tellus eget lectus blandit."
                        "                                                                       "
                        "                                                                         "
                        "                                                                          "
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu volutpat adipiscing arcu quam eu, tortor, quis. Sem tortor "
                        "in massa amet lobortis sit. Urna, eget enim ut vivamus nulla amet. Mauris tellus eget lectus blandit.Lorem ipsum dolor "
                        "sit amet, consectetur adipiscing elit. Arcu volutpat adipiscing arcu quam eu, tortor, quis. Sem tortor in massa amet lobortis sit. "
                        "Urna, eget enim ut vivamus nulla amet. Mauris tellus eget lectus blandit."
                        "                                                                       "
                        "                                                                         "
                        "                                                                             "
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu "
                        "volutpat adipiscing arcu quam eu, tortor, quis. Sem tortor in massa amet lobortis sit. Urna, eget enim ut vivamus nulla amet. Mauris tellus "
                        "eget lectus blandit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu volutpat adipiscing arcu quam eu, tortor, quis. Sem tortor in "
                        "massa amet lobortis sit. Urna, eget enim ut vivamus nulla amet. Mauris tellus eget lectus blandit.",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,
                          letterSpacing: 1.08,
                          height: 1.4
                      ),
                    ),
                  ],
                )
            )
        ),

      ),
    )
    ))
      ;
  }
}
