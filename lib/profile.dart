import 'package:flutter/material.dart';
import 'package:ws2/register.dart';

import 'historypage.dart';

class ProfilePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Профиль',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: const Text('Профиль'),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.deepOrange.shade300],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                     
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        minRadius: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('https://cdn-icons-png.flaticon.com/512/3607/3607444.png'),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red.shade300,
                        minRadius: 35.0,
                        child: IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterFormPage()));
                          }, icon: Icon(Icons.logout),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Введите имя'),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 90,
                      color: Colors.deepOrange.shade300,
                      child: ListTile(
                        title: Text(
                          '0',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          'Заказов',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 90,
                      color: Colors.red,
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryPage()));
                        }, child: Text('История заказов',style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(labelText: 'Email',hintText: 'Введите email'),
                    )
                      
                  ),
                  Divider(),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(labelText: 'Телефон',hintText: 'Введите телефон', ),keyboardType: TextInputType.phone,
                    )
                  ),
                  Divider(),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(labelText: 'Адрес',hintText: 'Введите адрес'),
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}