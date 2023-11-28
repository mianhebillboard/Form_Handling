import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage()
    );
  }
}

class FirstPage extends StatelessWidget {

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Login"),
            backgroundColor: Colors.blue,
            leading: const Icon(Icons.code)
        ),
        body: Form(
            child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                      labelText: "Email address",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    decoration: const InputDecoration(
                      labelText: "Password",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){
                      print(emailcontroller.text);
                      print(passwordcontroller.text);

                      emailcontroller.text = "";
                      passwordcontroller.text = "";
                    },
                    child: const Text("Login"),
                  )
                ]
            )
        )
    );
  }
}