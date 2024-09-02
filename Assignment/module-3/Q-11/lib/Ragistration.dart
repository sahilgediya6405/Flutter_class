import 'package:assq11/main.dart';
import 'package:flutter/material.dart';

class Ragistration extends StatefulWidget {
  const Ragistration({super.key});

  @override
  State<Ragistration> createState() => _RagistrationState();
}

class _RagistrationState extends State<Ragistration> {
  bool Swiched = false;
  @override
  Widget build(BuildContext context) {
    void message(bool value) {
      if (Swiched == false) {
        setState(() {
          Swiched = true;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Data is saved Successfully"),
            duration: Duration(seconds: 3),
            backgroundColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ));
        });
      } else {
        setState(() {
          Swiched = false;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Data is not Saved !"),
            duration: Duration(seconds: 3),
            backgroundColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ));
        });
      }
    }

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Center(
                child: Image.asset(
          "assets/Ragistration.gif",
          height: 200,
          width: 300,
        ))),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Register",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Please register to sign in ",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.grey[250],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.person_outline_outlined),
                hintText: "Usrname"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey[250],
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              prefixIcon: Icon(Icons.phone),
              hintText: "Mobail Number",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.grey[250],
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                prefixIcon: Icon(Icons.lock_outline),
                hintText: "Password",
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reminder me nextime ",
                style: TextStyle(color: Colors.blue),
              ),
              Switch(
                value: Swiched,
                onChanged: message,
                activeColor: Colors.blue,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: ButtonStyle(
                elevation: WidgetStateProperty.all(5.0),
                fixedSize: WidgetStateProperty.all(Size(450, 40)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150, top: 20),
          child: Row(
            children: [
              Text(
                "Dont't have account ?",
                style: TextStyle(color: Colors.grey),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  " Sign in",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
