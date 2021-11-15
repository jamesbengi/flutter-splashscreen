import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'DREAM TOURS'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName:new Text("JAMES BENGI",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              accountEmail: new Text("jamesbengi21@gmail.com",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              currentAccountPicture: CircleAvatar(
                radius: 90,
                backgroundColor: Colors.black,
              ),
               ),
            ListTile(
              leading: Icon(Icons.person,size: 40,),
              title: Text("profile",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            ListTile(
              leading: Icon(Icons.info,size: 40,),
              title: Text("About us",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            ),ListTile(
              leading: Icon(Icons.password,size: 40,),
              title: Text("password",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(crossAxisCount:2,
        children:<Widget> [
          Card(
            child: InkWell(
              onTap: (){},
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                    Icon(Icons.home,size: 70.0,),
                    Text("image")
                  ],
                ),
              ),
            ),
          ),
           Card(
            child: InkWell(
              onTap: (){},
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                    Icon(Icons.mail,size: 70.0,),
                    Text("email")
                  ],
                ),
              ),
            ),
          ), Card(
            child: InkWell(
              onTap: (){},
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                    Icon(Icons.alt_route,size: 70.0,),
                    Text("route")
                  ],
                ),
              ),
            ),
          ), Card(
            child: InkWell(
              onTap: (){},
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                    Icon(Icons.call,size: 70.0,),
                    Text("call")
                  ],
                ),
              ),
            ),
          ), Card(
            child: InkWell(
              onTap: (){},
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                    Icon(Icons.share_location,size: 70.0,),
                    Text("share location")
                  ],
                ),
              ),
            ),
          ), Card(
            child: InkWell(
              onTap: (){},
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                    Icon(Icons.facebook,size: 70.0,),
                    Text("facebook")
                  ],
                ),
              ),
            ),
          ),
        ],
        ),
      ),
    
    );
  }
}
