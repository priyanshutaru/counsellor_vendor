
import 'package:counsellor_vendor/constraints.dart';
import 'package:flutter/material.dart';
class comment_chat_page extends StatefulWidget {
  const comment_chat_page({Key? key}) : super(key: key);
  @override
  State<comment_chat_page> createState() => _chat_pageState();
}
class _chat_pageState extends State<comment_chat_page> {
  TextEditingController _chat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        leading: Icon(Icons.arrow_back,color: ABConstraints.themeColor,),
        leadingWidth: 25,
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
                      SizedBox(height: 5,),
                      Text("Typing...",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
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
        elevation: 0.0,
        foregroundColor:  ABConstraints.white,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.video_camera_back_outlined,color: Colors.green,)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.add_ic_call_rounded,color: Colors.red)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30,width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(0),border: Border.all(width: 1)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5),
                        child: Row(
                          children: [
                            Text("04:11 mins",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(radius: 5,backgroundColor: Colors.green,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    )
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
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
                                  child: Text("sb thik hai",
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
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
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
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 15,),
              Row(
                children: <Widget>[
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
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
                                  child: Text("sb thik hai adshg jsd hgsdh",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Container(
          // height: 50,
          child: TextFormField(
            controller: _chat,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              contentPadding: EdgeInsets.all(10),
              hintText: "comment here........",
              suffixIcon:  IconButton(
                onPressed: () async{

                },
                icon: Icon(Icons.send,color: Colors.black,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
