import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moments/utils/routes.dart';
import 'package:moments/widgets/custom_clipper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                child: Container(
                  height: 260,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF009FFD),
                        Color(0xFF2A2A72),
                      ],
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(
                      'Hello there,\nWelcome back.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                clipper: MyCustomClipper(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.at,
                      color: Color(0xFF009FFD),
                    ),
                    hintText: 'Username',
                  ),
                  // onChanged: (value) {
                  //   setState(() {
                  //     _name = value;
                  //   });
                  // },
                  validator: (value) {
                    if (value.isEmpty) return "Username cannot be empty";

                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      CupertinoIcons.lock_fill,
                      color: Color(0xFF009FFD),
                    ),
                    hintText: 'Password',
                  ),
                  // onChanged: (value) {
                  //   setState(() {
                  //     _name = value;
                  //   });
                  // },
                  validator: (value) {
                    if (value.isEmpty)
                      return "Password cannot be empty";
                    else if (value.length < 8)
                      return "Password cannot be less than 8 characters";
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                ),
                child: InkWell(
                  onTap: () => print('Logged in'),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Color(0xFF009FFD),
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF009FFD),
                          Color(0xFF126cc0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Or, login with',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF009FFD),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/google.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Google',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () => print('google login'),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF009FFD),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/facebook.png',
                                height: 35,
                                width: 35,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () => print('facebook login'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New to Moments?'),
                  TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, MomentsRoutes.signUpRoute),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xFF126cc0),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
