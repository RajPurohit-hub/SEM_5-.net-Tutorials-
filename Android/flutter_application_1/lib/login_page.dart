import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = true;
  String msg = "";
  TextEditingController usrTxtCtr = TextEditingController();
  TextEditingController pwdTxtCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('build method called');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 50, color: Colors.deepPurple),
            ),
            // Text('Username'),
            TextField(
              controller: usrTxtCtr,
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Enter username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            // Text('Password'),
            TextField(
              controller: pwdTxtCtr,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter password',
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    isHidden = !isHidden;
                    print(isHidden);
                    setState(() {});
                  },
                  icon: Icon(
                    isHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
              ),
              obscureText: isHidden,
            ),
            ElevatedButton(
              onPressed: () {
                print("Button clicked");
                if (usrTxtCtr.text == pwdTxtCtr.text)
                  msg = 'Welcome ' + usrTxtCtr.text;
                else
                  msg = "Invalid credentials";

                setState(() {});
              },
              child: Text('Login'),
            ),
            Text(msg),
          ],
        ),
      ),
    );
  }
}
