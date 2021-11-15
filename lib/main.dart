import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'travel Kenya',
      theme: ThemeData(
       primaryColor: Colors.amberAccent
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 void initState(){
   super.initState();
   Navigator.of(context).pushReplacement(
     MaterialPageRoute(builder: (context)=>HomeScreen()
     )
   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            
            

             
             SizedBox(height: 100,),
            Text("What's App",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              
            ),
            SizedBox(height: 400,),
            Text("from facebook",style: TextStyle(color: Colors.white),)
            
          ],
        ),
      ),
      
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     appBar: AppBar(
       backgroundColor: Colors.green[900],
       title: Text("whatsApp",style: TextStyle(color: Colors.white),),
     ),
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        
        return Card(
          color: Colors.white,
          child: ListTile(
            title: Text(names[index]),
          ),
        );

      },
      itemCount: 20,
      ),
    );
  }
}
class NamesList extends StatelessWidget {
  
   NamesList({ Key? key }) : super(key: key);
 final List names=[
              "james",
              " jesse",
              " jack",
              " marcus",
              " anita",
              " jose",
              " crush",
              " bro",
              " kamata",
              " justo",
              " kama",
              " nito",
              " orio",
              " njugan",
              " mzae",
              " mokoro",
              " zakayo",
              " peter",
              " nito",
              " msee",

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}