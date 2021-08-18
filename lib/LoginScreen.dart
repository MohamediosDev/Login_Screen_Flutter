import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passControllelr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.2))),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: passControllelr,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'PassWord',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.2))),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.lightBlue,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passControllelr.text);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white),
                    ),
                  ),
                )
              ,SizedBox(height: 10.0)
              , Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Text('Don\'t have account ?',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                  ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('SignUp',
                    ),
                    ),
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
