import 'package:counsellor_vendor/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class CallsHistory extends StatefulWidget {
  const CallsHistory({Key? key}) : super(key: key);

  @override
  State<CallsHistory> createState() => _CallsHistoryState();
}

class _CallsHistoryState extends State<CallsHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
        title: Text("Calls History",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width*0.95,
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (BuildContext context, index){
                      return Card(
                        elevation: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 23,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text("Sardar Patel",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(width: 120,),
                                      Container(
                                        height: 30,
                                        padding: EdgeInsets.symmetric(vertical: 8),
                                        child: RatingBar.builder(
                                          initialRating: 4.5,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15.0,
                                          itemPadding: EdgeInsets.symmetric(horizontal: 1),
                                          itemBuilder: (context, _) =>
                                              Icon(Icons.star, size: 50, color: Colors.amber,),
                                          onRatingUpdate: (rating) async{
                                          },
                                        ),
                                      ),
                                    ],
                                  ),

                                  Text("Tarot life Coach",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13
                                    ),
                                  ),
                                  Text("English",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13
                                    ),
                                  ),
                                  Text("Date: 12-08-2022 10:20 AM",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13
                                    ),
                                  ),
                                  Text("Duration : 20 min 30 sec",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13
                                    ),
                                  ),
                                  Text("₹ 10 / min",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Total Earning :",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14
                                        ),
                                      ),
                                      SizedBox(width: 40,),
                                      Text("₹ 205",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}