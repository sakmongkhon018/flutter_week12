import 'package:flutter/material.dart';
class StateFulPage extends StatefulWidget {
  const StateFulPage({Key? key}) : super(key: key);

  @override
  State<StateFulPage> createState() => _StateFulPageState();
}

class _StateFulPageState extends State<StateFulPage> {
  List<String> names = ["Mark Zuckerberg","jeff Bozos"];
  int i = 0;
  Color color = Colors.redAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State full"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            color = Colors.amber;
          });
        },
        child: Icon(Icons.color_lens),
        backgroundColor: color,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Text("MyName is Mark ${names[i]}"),
              ElevatedButton(
                  onPressed: () {
                    if(i<names.length-1)
                setState((){
                  i = i + 1;
                });
              }, child: Text("Next")),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    if(i !=0)
                setState((){
                  i = i - 1;
                });
              }, child: Text("Back"))
       ],
      ),
     ),
    );
  }
}
