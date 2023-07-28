import 'package:counsellor_vendor/constraints.dart';
import 'package:flutter/material.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);
  @override
  State<AddMoney> createState() => _AddMoneyState();
}
class _AddMoneyState extends State<AddMoney> {
  String dropdownvalue = '--Select--';
  var items = [
    '--Select--',
    'Punjab National Bank',
    'Purvanchal Bank',
    'Allahabad Bank',
    'ICICI Bank',
    'Kotak Bank',
    'State Bank of India',
    'Axis Bank',
    'Yas Bank',
    'DhanLaxmi Bank',
  ];
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController validdate = TextEditingController();
  TextEditingController cvv = TextEditingController();
  // bool card = true;
  bool iscard = false;
  bool other = false;
  String ?gender='account';
  var _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        foregroundColor: Colors.white,
        title: Text("Withdrawal Money",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                // RadioListTile(
                //   title: Text("To Card"),
                //   value: "card",
                //   groupValue: gender,
                //   onChanged: (value){
                //     setState(() {
                //       gender = value.toString();
                //       if(value == "card"){
                //         card=true;
                //         iscard=false;
                //         other=false;
                //       }
                //     });
                //   },
                // ),
                RadioListTile(
                  title: Text("To Account"),
                  value: "account",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                      if(value == "account"){
                        // card=false;
                        other=false;
                        iscard=true;
                      }
                    });
                  },
                ),
                RadioListTile(
                  title: Text("To Upi"),
                  value: "upi",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                      if(value == "upi"){
                        // card=false;
                        iscard=false;
                        other=true;
                      }
                    });
                  },
                )
              ],
            ),
            Visibility(
                visible: iscard,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.95,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items,style: TextStyle(fontSize: 15,color: Colors.black54),),
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
                          ),
                          Divider(thickness: 1,),
                          SizedBox(height: 10,),
                          Container(
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Enter Your A/c',
                                  label: Text("A/c number",style: TextStyle(fontSize: 15,color: Colors.black54),),
                                  contentPadding: EdgeInsets.all(10)
                              ),
                            ),
                          ),
                          Divider(thickness: 1,),
                          SizedBox(height: 10,),
                          Container(
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Enter your Re-A/c',
                                  label: Text("Re-A/c number",style: TextStyle(fontSize: 15,color: Colors.black54),),
                                  contentPadding: EdgeInsets.all(10)
                              ),
                            ),
                          ),
                          Divider(thickness: 1,),
                          SizedBox(height: 10,),
                          Container(
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'IFSC Code',
                                  label: Text("IFSC Code",style: TextStyle(fontSize: 15,color: Colors.black54),),
                                  contentPadding: EdgeInsets.all(10)
                              ),
                            ),
                          ),
                          Divider(thickness: 1,),
                          SizedBox(height: 10,),
                          Container(
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Branch',
                                  label: Text("Branch",style: TextStyle(fontSize: 15,color: Colors.black54),),
                                  contentPadding: EdgeInsets.all(10)
                              ),
                            ),
                          ),
                          Divider(thickness: 1,),
                          SizedBox(height: 10,),
                          Container(
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText: 'Account Holder Name',
                                  label: Text("Account Holder",style: TextStyle(fontSize: 15,color: Colors.black54),),
                                  contentPadding: EdgeInsets.all(10)
                              ),
                            ),
                          ),
                          Divider(thickness: 1,),
                          SizedBox(height: 50,),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width*0.95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ABConstraints.themeColor
                            ),
                            child: MaterialButton(onPressed: (){},child: Text("Withdrawal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),),
                          )
                        ],
                      ),
                    ),

                  ],
                )),
            Visibility(
                visible: other,
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: '706854958@axix.ok/8547958554',
                                label: Text("Enter your upi or Mobile No.",style: TextStyle(fontSize: 16,color: Colors.black54),),
                                contentPadding: EdgeInsets.all(10)
                            ),
                          ),
                          Divider(thickness: 1,),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ABConstraints.themeColor
                      ),
                      child: MaterialButton(onPressed: (){},child: Text("Withdrawal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),),
                    )
                  ],
                )),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
