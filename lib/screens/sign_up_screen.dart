import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moments/utils/routes.dart';
import 'package:moments/widgets/custom_clipper.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      Navigator.pushNamed(
        context,
        MomentsRoutes.mainScreenRoute,
      );

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipPath(
                  child: Container(
                    height: 240,
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
                        'Welcome to\nMoments.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  clipper: MyCustomClipper(),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        CupertinoIcons.person_fill,
                        color: Color(0xFF009FFD),
                      ),
                      hintText: 'Name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) return "Name cannot be empty";

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        CupertinoIcons.at,
                        color: Color(0xFF009FFD),
                      ),
                      hintText: 'Email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) return "Username cannot be empty";

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 18,
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
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      child: Center(
                        child: changeButton
                            ? Container(
                                height: 25,
                                width: 25,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            : Text(
                                'Sign up',
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
                  height: 18,
                ),
                Center(
                  child: Text(
                    'Or, sign up with',
                  ),
                ),
                SizedBox(
                  height: 18,
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
                      SizedBox(
                        width: 10.0,
                      ),
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
                    Text('Already have an account?'),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(
                          context, MomentsRoutes.loginRoute),
                      child: Text(
                        'Login',
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
      ),
    );
  }
}
