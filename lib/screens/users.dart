import 'dart:convert';
import 'package:bank/utils/userfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var usersjson = await rootBundle.loadString("lib/assets/files/users.json");
    var decode = jsonDecode(usersjson);
    var userdata = decode["users"];
    Usr.person = List.from(userdata)
        .map<Users>((profile) => Users.fromMap(profile))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: Vx.m24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Users".text.xl5.color(Colors.cyan).bold.make(),
              if (Usr.person != null)
                UserList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final profile = Usr.person![index];
        return PersonProfile(
          person: profile,
        );
      },
      itemCount: Usr.person!.length,
    );
  }
}

class PersonProfile extends StatelessWidget {
  final Users person;

  const PersonProfile({Key? key, required this.person}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Image.asset('lib/assets/images/avatar.png')
              .box
              .roundedFull
              .py12
              .make()
              .wOneThird(context),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                person.name.text.color(Colors.cyan).xl.bold.make(),
                "\Balance : ${person.balance}/-".text.make(),
                ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "View Profile".text.white.make(),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ).square(180).make();
  }
}
