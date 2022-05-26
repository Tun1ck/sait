import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/registration/registration_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void login() {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (BuildContext context) 
          => HomeScreen()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 146, 148, 149),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height * .6,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                spreadRadius: 7.0,
                blurRadius: 7.0,
                color: Colors.black54.withOpacity(.1),
                offset: const Offset(0, 3)
              )
            ]
          ),
          child: Column(
            children: [
              const Text(
                "Вход",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              const Spacer(),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Логин',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              ),
              const SizedBox(height: 20.0,),
              TextField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Пароль',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              ),
              OutlinedButton(
                onPressed: login, 
                child: const Text(
                  "Войти"
                )
              ),
              const Spacer(flex: 2),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) 
                        => RegistrationScreen()
                    )
                  );
                }, 
                child: const Text(
                  "Загегистрироваться"
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black87
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}