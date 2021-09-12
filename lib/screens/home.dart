import 'package:bank/utils/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool changebutton = false;

  moveToUserScreen(BuildContext context) async {
    setState(() {
      changebutton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.usersRoute);
    setState(() {
      changebutton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset(
                "lib/assets/images/home1.png",
                height: 150,
              ),
              Image.asset(
                'lib/assets/images/home.png',
                fit: BoxFit.cover,
                height: 320,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 50,
                ),
                child: Column(
                  children: [
                    Material(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(100),
                      child: InkWell(
                        onTap: () => moveToUserScreen(context),
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 70,
                            width: changebutton ? 70 : 180,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "All Users",
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
