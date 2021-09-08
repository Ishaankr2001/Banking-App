import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              Image.asset(
                'lib/utils/home.png',
                fit: BoxFit.cover,
                height: 320,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 50,
                ),
                child: Column(
                  children: [
                    Material(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100),
                      child: InkWell(
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 70,
                            width: 200,
                            alignment: Alignment.center,
                            child: Text(
                              "Veiw All Customers",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(height: 20),
                    Material(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100),
                      child: InkWell(
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 70,
                            width: 200,
                            alignment: Alignment.center,
                            child: Text(
                              "Transfer Money",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
