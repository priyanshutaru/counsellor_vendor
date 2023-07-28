import 'dart:convert';
import 'package:counsellor_vendor/Vendor_profile.dart';
import 'package:counsellor_vendor/add_money.dart';
import 'package:counsellor_vendor/calls_history.dart';
import 'package:counsellor_vendor/chat_history.dart';
import 'package:counsellor_vendor/constraints.dart';
import 'package:counsellor_vendor/kyc_screen.dart';
import 'package:counsellor_vendor/withdrawal_history.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class drawer_page extends StatefulWidget {
  const drawer_page({Key? key}) : super(key: key);
  @override
  State<drawer_page> createState() => _drawer_pageState();
}
class _drawer_pageState extends State<drawer_page> {
  var getData ;
  Future getProfile() async{
    var api = Uri.parse("https://counsellor.creditmywallet.in.net/api/getuserprofile");
    Map map = {
      'user_id':"CNS4446"
    };
    final response = await http.post(
      api,
      body: map,
    );
    String msg='';
    var res = await json.decode(response.body);
    getData = res['response'];
    print("response"+ response.body);
    msg = res['status_message'].toString();
    print(msg);
    try{
      if(response.statusCode==200){
        if(msg =="Get Profile"){
          setState((){
            var name=getData['name'];
                print("name===>>>>>"+name.toString());
          });
        }
      }
    }catch(e){
      print(e);
    }
  }
  initState(){
    getProfile();
  }
  TextEditingController userid = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width/1.4,
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.25,
                color: ABConstraints.themeColor,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 80,width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white38,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1.5)),
                        child:Image.asset("images/pro.png",fit: BoxFit.fill,),
                      ),
                     ),

                   Container(
                      width: MediaQuery.of(context).size.width*0.45,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50,),
                            Text(getData['name'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white70),),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,bottom: 5),
                              child: Text(getData['mobile'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white70),),
                            ),
                            Text(getData['email'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white70),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 35,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Vendor_Profile()));
                },child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 10,),
                    Text("Vendor Profile",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),),
              ),
              Divider(),
              Container(
                height: 35,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatHistory()));
                },child: Row(
                  children: [
                    Icon(Icons.chat_outlined),
                    SizedBox(width: 10,),
                    Text("Chats History",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),),
              ),
              Divider(),
              Container(
                height: 35,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CallsHistory()));
                },child: Row(
                  children: [
                    Icon(Icons.call),
                    SizedBox(width: 10,),
                    Text("Calling History",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),),
              ),
              Divider(),
              Container(
                height: 35,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WithdrawalHistory()));
                },child: Row(
                  children: [
                    Icon(Icons.history_sharp),
                    SizedBox(width: 10,),
                    Text("Withdrawal History",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),),
              ),
              Divider(),
              Container(
                height: 35,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CallsHistory()));
                },child: Row(
                  children: [
                    Icon(Icons.account_balance_wallet_outlined),
                    SizedBox(width: 10,),
                    Text("Wallet",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
                        child: Row(
                          children: [
                            Icon(Icons.currency_rupee,size: 15,),
                            Text("57295"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ),
              ),
              Divider(),
              Container(
                height: 35,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>KYCPage()));
                },child: Row(
                  children: [
                    Icon(Icons.account_balance),
                    SizedBox(width: 10,),
                    Text("Account ",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                    Spacer(),
                    Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(width: 0.5)),
                        child: MaterialButton(onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMoney()));
                        },child: Text("Verified"),)),
                  ],
                ),),
              ),
              Divider(),
              Container(
                height: 35,
                child: MaterialButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>KYCPage()));
                },child: Row(
                  children: [
                    Icon(Icons.account_balance_wallet_outlined),
                    SizedBox(width: 10,),
                    Text("Money",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                    Spacer(),
                    Container(
                      height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(width: 0.5)),
                        child: MaterialButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMoney()));
                        },child: Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
                          child: Text("Withdrawal"),
                        ),)),
                  ],
                ),),
              ),
              Divider(thickness: 2,),
              Container(
                height: 60,
                child: MaterialButton(onPressed: (){},child: Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(width: 10,),
                    Text("Share",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),),
              ),
              Container(
                height: 60,
                child: MaterialButton(onPressed: (){},child: Row(
                  children: [
                    Icon(Icons.logout_sharp),
                    SizedBox(width: 10,),
                    Text("Log Out",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),),
              ),
            ],
          ),
        )
    );
  }
}
