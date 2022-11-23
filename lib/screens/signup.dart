import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
   bool _isHidden = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children:  [
            const Text("Create Account",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              color: Colors.white),
              ),
              const SizedBox(height: 20,),
                  Stack(children: [
                    Container(
          height: 612,
          width: double.infinity,
          clipBehavior: Clip.none,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
                    child: Column(
                      children:  [
                        const SizedBox(height: 25),
                      const Text("Let get you started! This will only take a few\n minutes.",
                      style: TextStyle(fontWeight: FontWeight.w300),),
                       const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.account_box),
                  labelText: 'Full Name',
                  hintText: "John Doe",
                  fillColor: const Color.fromARGB(255, 233, 236, 238),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail),
                  labelText: 'Email',
                  hintText: "example@gmail.com",
                  fillColor: const Color.fromARGB(255, 233, 236, 238),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.key),
                  suffixIcon:  IconButton(
                    onPressed: () {
                      setState(() {
                        _isHidden = !_isHidden;
                      });
                    },
                    icon: Icon(
                        _isHidden ? Icons.visibility : Icons.visibility_off),
                  ),
                  labelText: 'Password',
                  fillColor: const Color.fromARGB(255, 233, 236, 238),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
                    ],))
                  ],)
          ]),)),
    );
  }
}
