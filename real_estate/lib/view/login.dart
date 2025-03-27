import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/login_illustration.png', height: 150), // Add your image asset
            SizedBox(height: 20),
            Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Welcome back! Please log in to your account.'),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            //password field
            TextField(
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility, color: Colors.grey),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      value: _rememberMe , onChanged: (value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                    ),
                    Text('Remember me'),
                  ],
                ),
                Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.black,
              ),
              onPressed: () {},
              child: Text('Login', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text('Sign Up'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 12.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
                    ),
                Text('Or login with'),
                Expanded(child: Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
                    ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/facebook.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Image.asset('assets/google.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Image.asset('assets/apple.png'),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
