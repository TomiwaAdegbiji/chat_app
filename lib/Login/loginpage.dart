import 'package:chat_app/Dashboard/dashboard.dart';
import 'package:chat_app/Signup/signuppage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text("Login",
        style: TextStyle(),),
      ),
      body: Padding(padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Bodyop(),),
    );
  }
}


class Bodyop extends StatefulWidget {
  const Bodyop({Key? key}) : super(key: key);

  @override
  _BodyopState createState() => _BodyopState();
}

class _BodyopState extends State<Bodyop> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  TextEditingController passwordController = TextEditingController();

  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey,
        child: Center(
          child: ListView(
            children: [
              Image.asset("assets/images/login.png", height: 300, width: 100,fit: BoxFit.contain,),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  suffix: Icon(CupertinoIcons.mail_solid),

                  hintText: "Username or e-Mail",
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
                    ),
                  ),),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  //Validator
                },
                onChanged: (String value){
                  print(value);
                  email = value;
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: _isHidden,
                controller: passwordController,
                decoration: InputDecoration(
                  suffix: InkWell(child: Icon(_isHidden
                      ? Icons.visibility
                      : Icons.visibility_off,),
                  onTap: _togglePasswordView,),
                  hintText: "Password",
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
                    ),
                  ),),
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value) {
                  //Validator
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                    return 'Enter a valid email!';
                  }
                  return null;
                },
              ),
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
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              child: Text("Login", style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold),)),
              SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black,width: 3),
                      fixedSize: Size(500,65),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      )
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signuppage()));
                  },
                  child: Text("Sign Up", style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))),
              SizedBox(height: 5),
              Divider(color: Colors.black45,
              indent: 5,
              thickness: 0.5,),
              Center(child:
              IconButton(onPressed: (){},
                  icon: Icon(CupertinoIcons.add_circled)))
            ],
          ),
        ));
  }


  void submit(){
    print(email);
    print(passwordController.text);
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
