import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isteper/provider/i_provider.dart';
import 'package:provider/provider.dart';

class ISteperScreen extends StatefulWidget {
  const ISteperScreen({Key? key}) : super(key: key);

  @override
  State<ISteperScreen> createState() => _ISteperScreenState();
}

class _ISteperScreenState extends State<ISteperScreen> {
  iSOProvider? providerF;
  iSOProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<iSOProvider>(context,listen: false);
    providerT=Provider.of<iSOProvider>(context,listen: true);
    return CupertinoPageScaffold(child: Stepper(
      currentStep: providerT!.i,
      onStepContinue: () {
        providerT!.continu();
      },
      onStepCancel: () {
        providerT!.close();
      },
      steps: [
        Step(title: Text("Signup"), content: Container(
          height: 300,
          width: 240,
          color: CupertinoColors.white,
          child: Column(
            children: [
              ListTile(
                title: Text("Full Name*"),
                leading: Icon(CupertinoIcons.person,color: CupertinoColors.systemGrey3),

              ),
              Divider(color: CupertinoColors.black,height: 5,thickness: 2),
              ListTile(
                title: Text("Email-Id"),
                leading: Icon(CupertinoIcons.mail,color: CupertinoColors.systemGrey3),
              ),
              Divider(color: CupertinoColors.black,height: 5,thickness: 2),
              ListTile(
                title: Text("Password*"),
                leading: Icon(CupertinoIcons.lock,color: CupertinoColors.systemGrey3),
              ),
              Divider(color: CupertinoColors.black,height: 5,thickness: 2),
              ListTile(
                title: Text("Conform Password*"),
                leading: Icon(CupertinoIcons.lock,color: CupertinoColors.systemGrey3),
              ),
              Divider(color: CupertinoColors.black,height: 5,thickness: 2),
            ],
          ),
        )),
        Step(title: Text("Login"), content: Container(
          height: 200,
          width: 240,
          color: CupertinoColors.white,
          child: Column(
            children: [
              ListTile(
                title: Text("User Name*"),
                leading: Icon(CupertinoIcons.person,color: CupertinoColors.systemGrey3),
              ),
              Divider(color: CupertinoColors.black,height: 5,thickness: 2),
              ListTile(
                title: Text("Password"),
                leading: Icon(CupertinoIcons.mail,color: CupertinoColors.systemGrey3),
              ),
            ],
          ),
        )),
        Step(title: Text("Home"),content: Text("Thank you")),
      ],
    ));
  }
}
