import 'package:flutter/material.dart';
class WithdrawalHistory extends StatefulWidget {
  const WithdrawalHistory({Key? key}) : super(key: key);
  @override
  State<WithdrawalHistory> createState() => _WithdrawalHistoryState();
}
class _WithdrawalHistoryState extends State<WithdrawalHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Withdrawal History",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
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
                                  Text("Debited :",
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
                                  Row(
                                    children: [
                                      Text("Transaction_id :",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text("qgdwted_er555_hds57w",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 13
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Withdrawal :",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14
                                        ),
                                      ),
                                      SizedBox(width: 40,),
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.5,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("+ ₹ 2000",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14
                                              ),
                                            ),
                                          ],
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
