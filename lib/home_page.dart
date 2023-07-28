import 'dart:convert';
import 'package:counsellor_vendor/comment_chat_page.dart';
import 'package:counsellor_vendor/constraints.dart';
import 'package:counsellor_vendor/drawer_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);
  @override
  State<home_page> createState() => _home_pageState();
}
class _home_pageState extends State<home_page> {
  bool isloading = true;
  bool bannerloading = true;
  String msg = '';
  List imageList = [];
  List banner1_list = [];
  bool imageloading = false;
  //
  // Future GetBanner() async {
  //   var api = Uri.parse("https://gwala.creditmywallet.in.net/api/getbanner");
  //   final response = await http.get(
  //     api,
  //   );
  //   var res = await json.decode(response.body);
  //   msg = res['message'].toString();
  //   if (msg == "Record found") {
  //     setState(() {
  //       bannerloading = true;
  //       imageList = res['data'];
  //       isloading = true;
  //     });
  //   }
  // }
  Future getBannerList2() async {
    var api = Uri.parse("https://leoon.in/Api/get_sub_banner");
    final response = await http.get(
      api,
    );
    var res = await json.decode(response.body);
    msg = res['message'].toString();
    if (msg == "Record found") {
      setState(() {
        banner1_list = res['data'];
        imageloading = true;
      });
    }
  }
  // final int appId = '';
  final formKey = GlobalKey();
  final String appSign = '';
  final RoomIdController = TextEditingController();

  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      // GetBanner();
      getBannerList2();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ABConstraints.themeColor,
          title: Text("Notifications",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
          ),
          elevation: 0.0,
          foregroundColor:  ABConstraints.white,
        ),
        body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Center(child: Text("Today",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.98,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
                            child: Text("Dear Counsellor , someone calling you from +91-8695485685 .The Last missed call was at 12:45 PM",style: TextStyle(fontSize: 15),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                onPressed: (){},child: CircleAvatar(child: Icon(Icons.clear,color: Colors.white,),radius: 18
                                ,backgroundColor: Colors.red[300]
                                ,),),
                              MaterialButton(onPressed: (){},child: CircleAvatar(child: Icon(Icons.check,color: Colors.white,),radius: 18
                                ,backgroundColor: Colors.green[300]
                                ,),),
                            ],
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.98,
                      decoration: BoxDecoration(
                          color: Colors.brown[50],
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
                            child: Text("Dear Counsellor , someone send some messages 'Hii....' at 12:45 PM",style: TextStyle(fontSize: 15),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                onPressed: (){},child: CircleAvatar(child: Icon(Icons.clear,color: Colors.white,),radius: 18
                                ,backgroundColor: Colors.red[300]
                                ,),),
                              MaterialButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>comment_chat_page()));
                              },child: CircleAvatar(child: Icon(Icons.chat_outlined,color: Colors.white,),radius: 18
                                ,backgroundColor: Colors.green[300]
                                ,),),
                            ],
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.98,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20,right: 20),
                            child: Text("Dear Counsellor , someone calling you from +91-8695485685 .The Last missed call was at 12:45 PM",style: TextStyle(fontSize: 15),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                onPressed: (){},child: CircleAvatar(child: Icon(Icons.clear,color: Colors.white,),radius: 18
                                ,backgroundColor: Colors.red[300]
                                ,),),
                              MaterialButton(onPressed: (){},child: CircleAvatar(child: Icon(Icons.check,color: Colors.white,),radius: 18
                                ,backgroundColor: Colors.green[300]
                                ,),),
                            ],
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}
