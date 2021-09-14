import 'package:bank/utils/userfile.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Details extends StatelessWidget {
  final Users profile;

  const Details({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.all(25),
        children: [
          "Balance : ${profile.balance}/-".text.xl.semiBold.red800.make(),
          ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Transfer Money".text.xl.white.bold.make())
              .wh(180, 60)
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          width: context.screenWidth,
          child: Column(
            children: [
              Hero(
                tag: Key(profile.id.toString()),
                child: Image.asset("lib/assets/images/avatar.png"),
              ).h40(context),
              Expanded(
                  child: Column(
                children: [
                  profile.name.text.xl3.color(Colors.cyan).bold.make().p2(),
                  "Account No : ${profile.accountno}".text.lg.make().py4(),
                  "Email : ${profile.email}".text.lg.make().py4(),
                  "Contact No : ${profile.contact}".text.lg.make().py4(),
                  "IFSC Code : ${profile.ifsc}".text.lg.make().py4(),
                ],
              ).py12())
            ],
          ),
        ),
      ),
    );
  }
}
