import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final double breakpoint = 1000;
  bool isChecked = false;
  final int paneProportion = 50;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (breakpoint < size.width) {
      return Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            flex: paneProportion,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Welcome back",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Welcome back! Please enter your details.",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 32,
                        ),
                        SizedBox(
                          width: 400,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              hintText: 'Email',
                              labelText: 'Email',
                              suffixIcon: Icon(
                                Icons.mail_outline,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        SizedBox(
                          width: 400,
                          child: TextField(
                            obscureText: true,


                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                              ),
                              
                              hintText: 'Password',
                              labelText: 'Password',
                              suffixIcon: Icon(
                                Icons.lock,
                              ),
                            ),
                          ),
                        ),

                        
                        
                      ]),
                )),
          ),
          Flexible(
            flex: 100 - paneProportion,
            child: Container(
              color: Colors.grey[300],
              child: const Center(
                child: Text('Hier könnte Ihre Werbung stehen!'),
              ),
            ),
          ),
        ],
      );
    }
    return Flex(
      direction: Axis.horizontal,
      children: [
        Flexible(
          flex: 100,
          child: Container(
            color: Colors.green[200],
            child: const Center(
              child: Text('Pane 3'),
            ),
          ),
        ),
      ],
    );
  }
}
