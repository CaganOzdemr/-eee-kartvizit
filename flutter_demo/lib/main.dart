import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Center(
              child: Text("Kartvizit", style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white
              ),),
            ),
          ),
          SizedBox(height: 20),
          CircleAvatar(
            radius: 60,
            backgroundColor: 
            Colors.grey[200],
            backgroundImage: 
            AssetImage('assets/images/ieee_logo.png'),
      ),
          SizedBox(height: 10),
          Text(
            "Ad Soyad",
            style:
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Meslek ve Kısa Açıklama",
            style:
            TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Divider(thickness: 1,
          indent: 40, endIndent: 40),
          SizedBox(height: 10),
          Text(
            "İletişim Kartı",
            style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(padding:
          const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.email),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: "Telefon",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding:
                      EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  ), onPressed: () {}, child: Text("Sil", style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  ), onPressed: () {}, child: Text("Gönder", style: TextStyle(color: Colors.white)),
                  ),
                ],
              )
            ],
          ),),
    ],
    ));

    // TODO: implement build
  }

}

