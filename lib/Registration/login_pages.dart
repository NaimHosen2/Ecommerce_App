import 'package:ecommerce_app/Registration/sign_up.dart';
import 'package:ecommerce_app/bottomNavigationBar/bnbar.dart';
import 'package:flutter/material.dart';
class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Login pages"),
      ),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Log In ", style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue),),
              SizedBox(height: 15,),
              TextField(
               onChanged: (value){
                 setState(() {

                 });
               },
                controller: mailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: 'Enter your mail',
                  labelText: "Mail",
                  prefixIcon: Icon(Icons.mail),
                  suffixIcon:mailController.text.isEmpty?Text(" "): GestureDetector(
                      onTap: () {
                        mailController.clear();
                      },
                      child: Icon(Icons.clear)),
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                obscureText: isVisible,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  hintText: "Enter your Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: (){
                      isVisible = !isVisible;
                      setState(() {

                      });
                    },
                      child: Icon(isVisible? Icons.visibility:Icons.visibility_off)),

                ),
              ),
              SizedBox(height: 15,),
              MaterialButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Bnbar()));
              },
                child: Text("Submit"),
                color: Colors.blue,
                minWidth: MediaQuery
                    .of(context)
                    .size
                    .width * 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));

                      },
                      child: const Text(
                        'Create one',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.normal),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
