import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_uas22/componen/rounded_button.dart';
import 'package:app_uas22/componen/constants.dart';
import 'package:app_uas22/homescreen.dart';


class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("About"),
        centerTitle: true,
      ),
      body:
      Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2),
              child: ClipOval(
                child: Image.asset(
                  'images/user.jpg',
                  height: 140,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch,
              mainAxisAlignment: MainAxisAlignment
                  .start,
              children: <Widget>[
                SizedBox(height: size.height * 0.10),
                RoundedInputField(
                  hintText: "Han Hani", ),
                RoundedInputField(
                  hintText: "Hani",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "hani22@gmail.com",
                  onChanged: (value) {
                    return HomeScreen();
                  },
                ),
                RoundedButton(
                  text: "Log Out",
                  color: Colors.brown,
                  textColor: Colors.white,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: size.height * 0.10),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.brown.shade200,
    );
  }
}
class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      // Here i can use size.width but use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
        ],
      ),
    );
  }
}

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}