import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage('images/logo.png'),
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Maintenance",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Box",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffE3B682FF)),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const SafeArea(
                      child: Center(
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 22, fontFamily: 'Rubik Medium'),
                    ),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Seyab Ali BS Computer Science \n Graduate, Flutter Developer',
                    style: TextStyle(fontSize: 16, fontFamily: 'Rubik Regular'),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Colors.blueGrey,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Color(0xffe3b682ff),
                        ),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xffe3b682ff)),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: TextFormField(

                      onChanged: (value) => {print(value)},
                      decoration: InputDecoration(

                        enabledBorder:OutlineInputBorder(

                                borderSide:
                                const BorderSide(color: Color(0xffe3b682ff)),
                                borderRadius: BorderRadius.circular(14)
                        ) ,
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.blueGrey,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xffe3b682ff),
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffe3b682ff)),
                              borderRadius: BorderRadius.circular(14))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Container(
                    height: 40,
                    width: 220,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xffe3b682ff),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: const Text('Login',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: 18, fontFamily: 'Rubik Rugular'),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Rubik Rugular',
                            color: Color(0xffe3b682ff)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
