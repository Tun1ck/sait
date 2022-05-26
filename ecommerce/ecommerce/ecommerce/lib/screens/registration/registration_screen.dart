import 'package:ecommerce/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                "Регистрация",
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              const Spacer(),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Введите логин',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              ),
              const SizedBox(height: 20.0,),
              TextField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Введите пароль',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Повторите пароль',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              ),
              const SizedBox(height: 10.0),
              OutlinedButton(
                onPressed: () {}, 
                child: const Text(
                  "Зарегистрироваться"
                )
              ),
              const Spacer(flex: 2),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) 
                        => LoginScreen()
                    )
                  );
                }, 
                child: const Text(
                  "Уже есть аккаунт"
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