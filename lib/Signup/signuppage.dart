import 'package:chat_app/Login/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text("Sign Up",
          style: TextStyle(),),
      ),
      body: Padding(padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Register(),),
    );
  }
}


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Image.asset("assets/images/contract.png", height: 200, width: 100,fit: BoxFit.contain,),
        SizedBox(height: 40),
    TextFormField(
    decoration: InputDecoration(
    hintText: "username@domain.com",
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          width: 4,
          color: Colors.orange,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
      ),),
    keyboardType: TextInputType.emailAddress,
    onFieldSubmitted: (value) {
    //Validator
    }
    ),
        SizedBox(height: 20),
        TextFormField(
            decoration: InputDecoration(
              hintText: "Firstname",
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.orange,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),),
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (value) {
              //Validator
            }
        ),
        SizedBox(height: 20),
        TextFormField(
            decoration: InputDecoration(
              hintText: "Lastname",
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.orange,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),),
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (value) {
              //Validator
            }
        ),
        SizedBox(height: 20),
        TextFormField(
          enabled: true,
            decoration: InputDecoration(
              hintText: "Date of Birth (DD/MM/YYYY)",
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 4,
                  color: Color(0xffFFA500),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),),
            keyboardType: TextInputType.datetime,
            onFieldSubmitted: (value) {
              //Validator
            }
        ),
        SizedBox(height: 20),
        Passwordconfirmation(),
        SizedBox(height: 20),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                fixedSize: Size(500,65),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                )
            ),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
    );
    },
            child: Text("Register", style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold),)),

      ],
    );
  }
}


class Passwordconfirmation extends StatefulWidget {
  const Passwordconfirmation({Key? key}) : super(key: key);

  @override
  _PasswordconfirmationState createState() => _PasswordconfirmationState();
}

class _PasswordconfirmationState extends State<Passwordconfirmation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Password",
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Re-enter Password",
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),),
        )
      ],
    );
  }
}
