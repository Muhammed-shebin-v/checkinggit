import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController _name=TextEditingController();
  final TextEditingController _dob=TextEditingController();
  final TextEditingController _address=TextEditingController();
  final TextEditingController _phone=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create\nAccount',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 245, 245, 1),
                  border: Border.all(width: 1.5),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('lib/assets/icons/user.png'),
                            backgroundColor: Color.fromRGBO(194, 246, 58, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: _name,
                           validator: (value) {
                            if (value == null || value.isEmpty||num.tryParse(value) != null||value.length<3) {
                              return 'enter valid name';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fillColor: const Color.fromRGBO(245, 255, 210, 1),
                              labelText: 'Username',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 137, 136, 136)),
                              filled: true),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _address,
                           validator: (value) {
                            if (value == null || value.isEmpty||num.tryParse(value) != null) {
                              return 'enter valid Address';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fillColor: const Color.fromRGBO(245, 255, 210, 1),
                              labelText: 'Address',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 137, 136, 136)),
                              filled: true),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.datetime,
                          
                           validator: (value) {
                            if (value == null || value.isEmpty||num.tryParse(value) == null) {
                              return 'enter valid Date of Birth';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _dob,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fillColor: const Color.fromRGBO(245, 255, 210, 1),
                              labelText: 'Date of Birth',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 137, 136, 136)),
                              filled: true),
                        ),
                        const SizedBox(height: 20),
                       TextFormField(
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                           validator: (value) {
                            if (value == null || value.isEmpty||num.tryParse(value) == null||value.length!=10) {
                              return 'enter valid Number';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _phone,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              fillColor: const Color.fromRGBO(245, 255, 210, 1),
                              labelText: 'Phone',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 137, 136, 136)),
                              filled: true,
                              focusColor: Colors.black),
                        ),






                        const SizedBox(height: 30),
                        Container(
                          width: 260,
                          height: 60,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(30)),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(194, 246, 58, 1)),
                            onPressed: () {
                              
                            
                    
                            
                               },
                              
                            
                            child: const Text('Create',
                                style:
                                    TextStyle(color: Colors.black, fontSize: 25)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
