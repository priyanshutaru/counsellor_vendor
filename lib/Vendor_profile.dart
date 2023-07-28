import 'package:counsellor_vendor/constraints.dart';
import 'package:counsellor_vendor/drawer_page.dart';
import 'package:counsellor_vendor/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Vendor_Profile extends StatefulWidget {
  const Vendor_Profile({Key? key}) : super(key: key);
  @override
  State<Vendor_Profile> createState() => _Vendor_ProfileState();
}
class _Vendor_ProfileState extends State<Vendor_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer_page(),
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        foregroundColor: Colors.white,
        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>home_page()));
          }, icon: Icon(Icons.notification_add))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Card(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,color: Colors.blue[50],
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                      // border:Border.all(width: 1,color: ABConstraints.themeColor)
                  // ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 20,bottom: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 100,width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1,color: ABConstraints.themeColor),
                                image: DecorationImage(image: AssetImage("images/back.jpg"),fit: BoxFit.fill),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:const [
                                  Text("Rishabh Shrivastava",style: TextStyle(fontSize: 16),),
                                  SizedBox(height: 6,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2,bottom: 2),
                                    child: Text("Motivational Speakers,& Advisor",style: TextStyle(fontSize: 14),),
                                  ),
                                  SizedBox(height: 2,),
                                  Text("(Goldmedlist in Doctorate)",style: TextStyle(fontSize: 14),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text("DOB : 16-08-1984",style: TextStyle(fontSize: 14),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              // width: MediaQuery.of(context).size.width,
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 20,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100,width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      // decoration: BoxDecoration(border: Border.all(width: 1,color:Colors.red)),
                      child: Column(
                        children: [
                          SizedBox(height: 7,),
                          Icon(Icons.people_outline_sharp,color: Colors.blue,size: 35,),
                          Text("1000+",style: TextStyle(fontSize: 14),),
                          Text("Peoples",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(vertical: 7),
                            child: RatingBar.builder(
                              initialRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 1,
                              itemSize: 40.0,
                              itemPadding: EdgeInsets.symmetric(horizontal: 1),
                              itemBuilder: (context, _) =>
                                  Icon(Icons.star, size: 35, color: Colors.amber,),
                              onRatingUpdate: (rating) async{
                              },
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("4.9",style: TextStyle(fontSize: 14),),
                          Text("Rating",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(height: 7,),
                          Icon(Icons.thermostat_auto,color: Colors.red,size: 35,),
                          Text("5+ Year",style: TextStyle(fontSize: 14),),
                          Text("Experience",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 20,bottom: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 70,width: MediaQuery.of(context).size.width*0.44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              // border: Border.all(width: 1,color: ABConstraints.themeColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Column(
                            children: [
                              SizedBox(height: 15,),
                              Text("Todays Earning",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.currency_rupee_outlined,size: 16,color: Colors.black,),
                                  Text("583",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                                ],
                              ),

                            ],
                          )),
                        ),
                        Container(
                          height: 70,width: MediaQuery.of(context).size.width*0.44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              // border: Border.all(width: 1,color: ABConstraints.themeColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Column(
                            children: [
                              SizedBox(height: 15,),
                              Text("Monthly Earning",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.currency_rupee_outlined,size: 16,color: Colors.black,),
                                  Text("983",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                                ],
                              ),

                            ],
                          )),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 70,width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border.all(width: 1,color: ABConstraints.themeColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Text("Total Earned",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.currency_rupee_outlined,size: 15,color: Colors.black,),
                              Text("6983",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                            ],
                          ),

                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.blue[50],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20,right: 20),
                    child: Text("Scheduled User is :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: ABConstraints.themeColor),),
                  ),
                  Text("20",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: ABConstraints.themeColor))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
