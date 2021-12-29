import 'package:flutter/material.dart';
import 'package:flutter_magura/pages/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButtor = false;

  moveToHome(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Image.asset("assets/images/login.png"),
          ),
          const Text(
            "Login Page",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Your Used ID",
                    labelText: "User ID",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "UserName is Empty";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Your Password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(changeButtor? 25:8),
            color: Colors.blue,
            child: InkWell(
              borderRadius: BorderRadius.circular(changeButtor? 25:8),
              splashColor: Colors.red,
              onTap: () async {
                setState(() {
                  changeButtor=true;
                });
                await Future.delayed( Duration(seconds: 1 ));
                await Navigator.pushNamed(context, MyRoute.homeRoute);
                setState(() {
                  changeButtor=false;
                });
              },
              child: AnimatedContainer(
                  alignment: Alignment.center,
                  width:changeButtor?50: 120,
                  height: 50,
                  duration: Duration(seconds: 1),
                  child: changeButtor?
                      Icon(Icons.done,color: Colors.white,
                      )
                :Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoute.homeRoute);
            //   },
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(
            //       minimumSize: Size(100, 50), backgroundColor: Colors.blue),
            // )
          )
        ],
      ),
    );
  }
}
