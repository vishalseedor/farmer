import 'dart:convert';
import 'package:farmers/Loginscreen/rounbutton.dart';
import 'package:farmers/Registerscreen/registerscreen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();


 
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   
    return SafeArea(
      child: Scaffold(
       
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg.jpg'),
                    fit: BoxFit.cover)),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Form(
               
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/login_page.webp',
                            height: 280,
                            width: 3500,
                          ),
                        ),
                        const Center(
                          child: Text(
                            'LOGIN ',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        const Text(
                          'Phone',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          controller: phonecontroller,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              fillColor: Colors.grey[300],
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.phone_android_outlined,
                                color: Colors.black,
                              ),
                              // hintText: 'Enter Phone Number/Email ID/BN User Id',
                              hintText: 'Phone',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            else{
                              return null;
                            }
                          },
                        ),
                        SizedBox(height: size.height * 0.03),
                        const Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                        //  obscureText: _passwordVisible,
                          controller: passwordcontroller,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              fillColor: Colors.grey[300],
                              filled: true,
                              prefixIcon:
                              const Icon(Icons.lock_outline, color: Colors.black),
            //                   suffixIcon: IconButton(
            // icon: Icon(
             
            //    _passwordVisible
            //    ? Icons.visibility
            //    : Icons.visibility_off,
            //    color: Colors.black
            //    ),
            // onPressed: () {
           
            //    setState(() {
            //        _passwordVisible = !_passwordVisible;
            //    });
            //  },
            // ),
                          
                              hintText: 'Password',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            else{
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Row(
                              //   children: [
                              //     GestureDetector(
                              //       onTap: () {
                              //         rememberMe = !rememberMe;
                              //         setState(() {});
                              //       },
                              //       child: Container(
                              //         //margin: const EdgeInsets.only(left: 7),
                              //         width: size.width * 0.05,
                              //         height: size.height * 0.025,
                              //         decoration: BoxDecoration(
                              //             color: Colors.white,
                              //             borderRadius: BorderRadius.circular(2),
                              //             border: Border.all(
                              //                 color: rememberMe
                              //                     ? Colors.blue
                              //                     : Colors.black)),
                              //         child: Center(
                              //             child: rememberMe
                              //                 ? const Icon(
                              //                     Icons.done,
                              //                     size: 15,
                              //                     color: Colors.black,
                              //                   )
                              //                 : Container()),
                              //       ),
                              //     ),
                              //     const SizedBox(
                              //       width: 15,
                              //     ),
                              //     // const Text(
                              //     //   'Remember me',
                              //     //   style: TextStyle(color: Colors.white),
                              //     // )
                              //   ],
                              // ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: size.height * 0.02,
                        // ),
                        RoundButton(
                            title: 'Login',
                           // loading: loading,
                            onTap: () async {
                              // if (_formKey.currentState!.validate()) {
                              //   loginAdopter(
                              //     phonecontroller.text.toString(),
                              //     passwordcontroller.text.toString(),
                              //   );
                              // }
                            }),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account ?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen()));
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
