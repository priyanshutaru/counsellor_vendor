import 'dart:convert';
import 'package:counsellor_vendor/Login_page.dart';
import 'package:counsellor_vendor/constraints.dart';
import 'package:counsellor_vendor/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
class Name_page extends StatefulWidget {
  const Name_page({Key? key}) : super(key: key);

  @override
  State<Name_page> createState() => _Name_pageState();
}

class _Name_pageState extends State<Name_page> {
  bool select = false;
  String dropdownvalue = '--Select--';
  var items = [
    '--Select--',
    'Male',
    'Female',
    'Other',
  ];
  String dropdownvalue1 = '--Select--';
  var items1 = [
    '--Select--',
    'Hindi',
    'English',
    'Tamil',
    'French',
    'Japanies',
  ];
  String? dob;
  late DateTime _myDateTime;
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _primarySkill = TextEditingController();
  TextEditingController _expetience = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _o1 = TextEditingController();
  TextEditingController _o2 = TextEditingController();
  TextEditingController _o3 = TextEditingController();
  TextEditingController _a1 = TextEditingController();
  TextEditingController _a2 = TextEditingController();
  TextEditingController _a3 = TextEditingController();
  var _formKey = GlobalKey();
  
  // Future signUpScreen() async{
  //   var api = Uri.parse('https://counsellor.creditmywallet.in.net/api/register');
  //   Map map = {
  //     'name':_name.text.toString(),
  //     'email':_email.text.toString(),
  //     'mobile':_mobile.text.toString(),
  //     'dob':_myDateTime.toString()
  //   };
  //   final response = await http.post(api, body: map,);
  //   String msg = '';
  //   var res = await json.decode(response.body);
  //   print("response"+ response.body);
  //   msg = res['status_message'].toString();
  //   print(msg);
  //   try{
  //     if(response.statusCode==200){
  //       if(msg == 'Successful');
  //       Navigator.push(context, MaterialPageRoute(builder: (context)=>home_page(
  //         // name:_name.text.toString(),email: _email.text.toString(),mobile: _mobile.text.toString(),
  //       )));
  //     }
  //   }catch(e){
  //     print(e);
  //   }
  // }
  @override
  void initState() {
    // print(signUpScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
        // appBar: AppBar(
        //   backgroundColor: ABConstraints.themeColor,
        //   elevation: 0.0,
        //   leading: IconButton(
        //     onPressed: (){
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(Icons.arrow_back_ios,color: ABConstraints.blackshade,),
        //   ),
        //   centerTitle: true,
        //   title: Text("Your Profile",
        //     style: TextStyle(
        //       color: ABConstraints.blackshade,
        //     ),
        //   ),
        // ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"),
                  fit: BoxFit.fill
              )
          ),
          child: SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.2,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(child: Row(
                    children: [
                      Text("Registration Now",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.white70),),
                    ],
                  )),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                // SizedBox(height: MediaQuery.of(context).size.height*0.35,),
                Container(
                  // height: MediaQuery.of(context).size.height*0.75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue.shade400,
                          Color(0xff0096bb),
                          Color(0xff0096bb),
                        ]),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 10),
                          child: Text("Basic Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                        Divider(endIndent: 200,thickness: 2,color: Colors.white,indent: 10,),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("What is your name ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _name,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "Enter Your Name",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("What is your email ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _email,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "Enter Your Email",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("What is your mobile Number ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _mobile,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "Enter Your Mobile Number",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Enter your gender ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width*0.92,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownvalue,
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: const Icon(Icons.keyboard_arrow_down),
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(items,style: TextStyle(color: Colors.black54,fontSize: 15),),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("What is your dob ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () async{
                            _myDateTime= (await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2050),
                            ))!;
                            setState(() {
                              dob=DateFormat('yyyy-MM-dd').format(_myDateTime);
                            });
                          },
                          child: Padding(
                            padding:  EdgeInsets.only(top: 3, bottom: 3),
                            child: Container(
                                height: 45,
                                width:MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    dob!=null?
                                    Text(dob.toString()):
                                    Text("Select DOB"),
                                  ],
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Enter Your Primary Skills ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _primarySkill,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "Enter Your Primary Skill",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Enter Your All Skills ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                             select=!select;
                            });
                          },
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width*0.92,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                            child:Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Text('Enter your all skills',style: TextStyle(color: Colors.black54),),
                                ],
                              ),
                            )
                          ),
                        ),
                        SizedBox(height: 10,),
                        Visibility(
                            visible: select,
                            child: MultiSelectContainer(items: [
                              MultiSelectCard(value: 'Dart', label: 'Dart'),
                              MultiSelectCard(value: 'Python', label: 'Python'),
                              MultiSelectCard(value: 'JavaScript', label: 'JavaScript'),
                              MultiSelectCard(value: 'Java', label: 'Java'),
                              MultiSelectCard(value: 'C#', label: 'C#'),
                              MultiSelectCard(value: 'C++', label: 'C++'),
                              MultiSelectCard(value: 'Go Lang', label: 'Go Lang'),
                              MultiSelectCard(value: 'Swift', label: 'Swift'),
                              MultiSelectCard(value: 'PHP', label: 'PHP'),
                              MultiSelectCard(value: 'Kotlin', label: 'Kotlin'),
                              MultiSelectCard(value: Icon(Icons.add),label: '+'),
                              MultiSelectCard(value: 'Swift', label: 'Swift'),
                              MultiSelectCard(value: 'PHP', label: 'PHP'),
                              MultiSelectCard(value: 'Kotlin', label: 'Kotlin'),
                              MultiSelectCard(value: Icon(Icons.add),label: '+')
                            ], onChange: (allSelectedItems, selectedItem) {}),
                        ),

                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Enter your Language ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width*0.92,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownvalue1,
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: const Icon(Icons.keyboard_arrow_down),
                              ),
                              items: items1.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(items,style: TextStyle(color: Colors.black54,fontSize: 15),),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue1 = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Enter Your Experience ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _expetience,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "Enter Your Experience",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Enter Your Address ?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _address,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "Enter Your Address",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 10),
                          child: Text("Other Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                        Divider(endIndent: 200,thickness: 2,color: Colors.white,indent: 10,),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("What is a suitable time for verification contact?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _o1,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "I got the answer........",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Which city do you currently live in?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _o2,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "I got the answer........",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Your Main source of Business?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _o3,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "I got the answer........",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 10),
                          child: Text("Assignment Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                        Divider(endIndent: 130,thickness: 2,color: Colors.white,indent: 10,),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Write some good quality of Counsellor",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _a1,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "I got the answer........",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("How do you solve your biggest problem of your life and What was the problem?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _a2,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "I got the answer........",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Write some Good Qualities as Counsellors.",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 45,
                          width:MediaQuery.of(context).size.width,
                          child: TextFormField(
                            controller: _a3,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "I got the answer........",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff878383),
                                  fontSize: 14
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: MaterialButton(
                            color: ABConstraints.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.black54)
                            ),
                            onPressed: (){
                              // signUpScreen();
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>Login_page1()));
                            },
                            child: Center(
                              child: Text("Submit",
                                style: TextStyle(
                                    color: ABConstraints.white,
                                    fontSize: 16
                                ),
                              ),
                            ),

                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      )
    );
  }
}
