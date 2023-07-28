import 'package:counsellor_vendor/constraints.dart';
import 'package:flutter/material.dart';
class dashboard_page extends StatefulWidget {
   dashboard_page({Key? key,this.mobile,this.name,this.email,this.userid}) : super(key: key);
  String ?name;
  String ?mobile;
  String ?email;
  String ?userid;
  @override
  State<dashboard_page> createState() => _dashboard_pageState();
}
class _dashboard_pageState extends State<dashboard_page> {
  @override
  int currentindex=0;
  List allScreen=[
    // home_page(),
    // chat_page(),
    // Call_page(),
    // History_page(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
        ),
        selectedIconTheme: IconThemeData(
            color: ABConstraints.themeColor,
        ),
        selectedItemColor: ABConstraints.themeColor,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState((){
            currentindex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: 'Call',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_file_outlined),
            label: 'History',
          ),
        ],
      ),
      body: allScreen[currentindex],
    );
  }
}
