import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cool_alert/cool_alert.dart';
import 'mainpage.dart';

void main() {
  runApp(register());
}

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: Column(
                    // container register dan logo
                    children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Text('REGISTER',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  SizedBox(
                      width: 120,
                      height: 120,
                      child: Image(image: AssetImage('images/signup.jpeg')))
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
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
                      icon: Icon(Icons.phone),
                      hintText: 'Masukkan Nomor Telepon',
                      labelText: 'Telepon'),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                      icon: Icon(Icons.mail),
                      hintText: 'Masukkan Email',
                      labelText: 'Email'),
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
                      hintText: 'Masukkan password',
                      labelText: 'Password'),
                  obscureText: true,
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 25)),
          SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  child: Text('REGISTER'),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
                  onPressed: () {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.success,
                      text: "Pendaftaran Berhasil!",
                    );
                  })),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text('OR',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Padding(padding: EdgeInsets.only(top: 20)),

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
                          child: Image(image: AssetImage('images/google.jpeg')),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          color: Colors.transparent,
                          onPressed: () {})),
                  SizedBox(
                      width: 50,
                      height: 50,
                      child: Image(image: AssetImage('images/facebook.jpeg'))),
                  SizedBox(
                      width: 50,
                      height: 50,
                      child: Image(image: AssetImage('images/twitter.jpeg')))
                ]),
          ),
          Padding(padding: EdgeInsets.only(top: 25)),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("don't have an account?")),
                Padding(padding: EdgeInsets.only(left: 5)),
                InkWell(
                    child: Text('Sign In',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainPage();
                          }))
                        })
              ],
            ),
          ),
        ]))));
  }
}
