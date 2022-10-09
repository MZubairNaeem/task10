import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  showOverlay(BuildContext context) async{
    OverlayState? overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (context) => Positioned(
      top: 54,right: 12,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.red,
        child: Text('1'),
      ),
    ));

    overlayState?.insert(overlayEntry);
    await Future.delayed(Duration(seconds: 2));
    overlayEntry.remove();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: Colors.purple,
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: Icon(Icons.notifications,size: 35),
              )
            ],
            title: Text('Hi! Enter Credentials'),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
                child: Center(
              child: Column(
                children: [
                  //hello again!//////////////////////////////////////////////////
                  //const SizedBox(height: 85),
                  Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                    child: const Icon(
                      Icons.android,
                      size: 99,
                      color: Colors.purple,
                    ),
                  ),
                  //const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: const Text(
                      "Hello Again!",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontFamily: 'RB',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //Sconst SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: const Text(
                      "Sign In To Continue!",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'RB',
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //const SizedBox(height: 30),
                  //email textField///////////////////////////////////////////////
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 12),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                            ),
                          ),
                        ),
                      )),
                  //password textField/////////////////////////////////////////////////
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                            ),
                          ),
                        ),
                      )),
                  //sign in button///////////////////////////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                    child: GestureDetector(
                      onTap: () {
                        showOverlay(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        )),
                      ),
                    ),
                  ),
                  //not have an account create one
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "New here? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Join us.',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          )),
    );
  }
}
