import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Projectofgridviewbuild3()),
  );
}
class Projectofgridviewbuild3 extends StatefulWidget {
  const Projectofgridviewbuild3({Key? key}) : super(key: key);

  @override
  State<Projectofgridviewbuild3> createState() => _Projectofgridviewbuild3State();
}

class _Projectofgridviewbuild3State extends State<Projectofgridviewbuild3> {
  List images=["world/chaina.jpg","world/dulhi.jpg","world/london.jpg",
    "world/newyork.jpg","world/rassia.jpg","world/vancouver.jpg"];
  List t1=["Great wall of china","Delhi","London","Newyork","Moscow","Vancouver"];
  List t2=["China","India","Britain","US","Russia","Canada"];
  List t3=["Population:4.3 mill","Population:19 mill","Population:8 mill","Population:84.7 million","Population:4.8 million","Population:2.4 million"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.teal,
        title: Center(child: Text("Cites around world",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ),
    ),
      body: GridView.builder(
        itemCount:images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30,
          ),
          itemBuilder: (BuildContext,int index){
          return
              Column(children: [
                Expanded(child: Image.asset(images[index],fit: BoxFit.cover,)),
                SizedBox(height: 12,),
                Text(t1[index],style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 12,),
                Text(t2[index]),
                Text(t3[index]),
              ],);

          }
    ),
    );
  }
}
