import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 150)),
            Center(
              child: Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
                width: 150,
                height: 150,
                child: Image(image: AssetImage('images/login.jpeg'))),
            Padding(padding: EdgeInsets.only(top: 30)),

            // container uname & password
            Container(
              width: 250,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 112, 197, 253),
                              width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 104, 104, 104),
                              width: 1.5),
                        ),
                        icon: Icon(Icons.person),
                        hintText: 'Masukkan Username',
                        labelText: 'Username'),
                  ),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  TextFormField(
                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 112, 197, 253),
                              width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 104, 104, 104),
                              width: 1.5),
                        ),
                        icon: Icon(Icons.key),
                        hintText: 'Masukkan Password',
                        labelText: 'Password'),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50)),

            // container login method
            Container(
              width: 250,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 50,
                        height: 50,
                        child: RaisedButton(
                            child:
                                Image(image: AssetImage('images/google.jpeg')),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            color: Colors.transparent,
                            onPressed: () {})),
                    SizedBox(
                        width: 50,
                        height: 50,
                        child:
                            Image(image: AssetImage('images/facebook.jpeg'))),
                    SizedBox(
                        width: 50,
                        height: 50,
                        child: Image(image: AssetImage('images/twitter.jpeg')))
                  ]),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),

            // button Login

            SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                    child: Text('LOGIN'),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)))),
                    onPressed: () {}))
          ],
        ),
      )),
    );
  }
}
