import 'package:counsellor_vendor/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ChatHistory extends StatefulWidget {
  const ChatHistory({Key? key}) : super(key: key);

  @override
  State<ChatHistory> createState() => _ChatHistoryState();
}

class _ChatHistoryState extends State<ChatHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
        title: Text("Chats History",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
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
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetails()));
                        },
                        child: Card(
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
                                    Text("₹ 15 / min",
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
                                        Text("₹ 307.50",
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
class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        foregroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bg.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(
                  width: 21,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sardar Patel",
                        style: TextStyle(
                            fontSize: 16,
                            color: ABConstraints.blackshade,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                      SizedBox(height: 1,),
                      Text("seen 10 min ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white38,
                            fontWeight: FontWeight.w700
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Container(
                height: 20,width: 80,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("Today",style: TextStyle(fontSize: 15),))),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width*0.98,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width:MediaQuery.of(context).size.width*0.6,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    )
                                ),
                                color: Colors.grey,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Text("Hii Kaise ho kya kr rhe ho",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: Text("10:10 am",style: TextStyle(color: Colors.white),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,foregroundColor: Colors.blue,
                                            radius: 10,child: Icon(Icons.check,size: 15,),),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width:MediaQuery.of(context).size.width*0.6,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        )
                                    ),
                                    color: Colors.lightGreen.shade500,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: Text("sb theek hai , tell me how are u ?",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),

                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ],
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
