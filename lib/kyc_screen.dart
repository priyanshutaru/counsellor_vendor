import 'package:counsellor_vendor/constraints.dart';
import 'package:flutter/material.dart';
class KYCPage extends StatefulWidget {
  const KYCPage({Key? key}) : super(key: key);

  @override
  State<KYCPage> createState() => _KYCPageState();
}

class _KYCPageState extends State<KYCPage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        foregroundColor: Colors.white,
        title: Text("KYC",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
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
            SizedBox(height: 100,),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width*0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ABConstraints.themeColor
              ),
              child: MaterialButton(onPressed: (){},child: Text("Verify",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),),
            )
        ],),
      ),
    );
  }
}
