import 'package:ecommerce_app/Registration/login_pages.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController mailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Registration",style: TextStyle(fontSize:25,fontWeight: FontWeight.normal,color: Colors.blue),),
              SizedBox(height: 15,),
              TextField(
                onChanged: (value){
                  setState(() {

                  });
                },
                controller:mailController,
                decoration:InputDecoration(
                  hintText: "Enter your mail",
                  prefixIcon: Icon(Icons.mail),
                    suffixIcon:mailController.text.isEmpty?Text( ""): GestureDetector(
                        onTap: (){
                          mailController.clear();
                        },
                        child: Icon(Icons.clear)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                )
              ),
              SizedBox(height: 15,),
              TextField(
                controller: nameController,
                onChanged: (value){
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: nameController.text.isEmpty?Text( ""):GestureDetector(
                      onTap: (){
                        nameController.clear();
                      },
                      child: Icon(Icons.clear)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller:phoneController,
                 onChanged: (value){
                  setState(() {

                  });
                 },
                decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon:phoneController.text.isEmpty?Text( ""): GestureDetector(
                      onTap: (){
                        phoneController.clear();
                      },
                        child: Icon(Icons.clear)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: passwordController,
                obscureText: isVisible,

                decoration: InputDecoration(
                  isDense: true,
                    hintText: "Enter your password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                        onTap: (){
                          isVisible = !isVisible;
                          setState(() {

                          });
                        },
                        child: Icon( isVisible ? Icons.visibility:Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
              SizedBox(height: 15,),
              MaterialButton(
                color: Colors.blue,
                height:50,
                minWidth:20,
                child: Text("Login ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPages()));
              }),
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

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPages()));

                      },
                      child: const Text(
                        'Sign in',
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
