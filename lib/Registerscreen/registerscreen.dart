
import 'package:farmers/Loginscreen/rounbutton.dart';
import 'package:farmers/bottom/bottom.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {




  TextEditingController namecontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passswordcontroller=TextEditingController();
  TextEditingController addresscontroller=TextEditingController();
  TextEditingController statecontroller=TextEditingController();
  TextEditingController usertypecontroller=TextEditingController();
  
  
    bool loading = false;
  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/bg.jpg'),fit: BoxFit.cover)),
       child: SingleChildScrollView
       (
         child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Form(
                   
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                        const Center(
                          child: Text(
                            'REGISTER',
                            style:
                                TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                         const Text(
                          'Name',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          
                           controller: namecontroller,
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                            
                            fillColor: Colors.grey[300],
                            filled: true,
                            prefixIcon: const Icon(Icons.person_outline,color: Colors.black,),
                              // hintText: 'Enter Phone Number/Email ID/BN User Id',
                              hintText: 'Name',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                              validator: (value) {
                                if(value!.isEmpty){
                                  return 'Please enter your name';
                                }
                              },
                        ),
                        SizedBox(height: size.height * 0.02),
                        const Text(
                          'Phone',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          controller: phonecontroller,
                          keyboardType: TextInputType.phone,
                          decoration:  InputDecoration(
                             fillColor: Colors.grey[300],
                            filled: true,
                              prefixIcon: const Icon(Icons.mobile_screen_share_outlined,color:Colors.black),
                              hintText: 'Phone',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                              validator: (value) {
                                if(value!.isEmpty){
                                  return 'Please enter your phone';
                                }
                              },
                        ),
                                   
                          SizedBox(height: size.height * 0.02),
                        const Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                           controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration:  InputDecoration(
                             fillColor: Colors.grey[300],
                            filled: true,
                              prefixIcon: const Icon(Icons.email_outlined,color:Colors.black),
                              // hintText: 'Enter Phone Number/Email ID/BN User Id',
                              hintText: 'Email',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                              validator: (value) {
                                if(value!.isEmpty){
                                  return 'Please enter your email';
                                }
                              },
                        ),
                          SizedBox(height: size.height * 0.02),
                        const Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                         controller: passswordcontroller,
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                             fillColor: Colors.grey[300],
                            filled: true,
                              prefixIcon: const Icon(Icons.lock_outline,color:Colors.black),
                              // hintText: 'Enter Phone Number/Email ID/BN User Id',
                              hintText: 'Password',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                              validator: (value) {
                                if(value!.isEmpty){
                                  return 'Please enter your password';
                                }
                              },
                        ),
                          SizedBox(height: size.height * 0.02),
                        const Text(
                          'Address',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                           controller: addresscontroller,
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                             fillColor: Colors.grey[300],
                            filled: true,
                              prefixIcon: const Icon(Icons.location_history_outlined,color:Colors.black),
                              // hintText: 'Enter Phone Number/Email ID/BN User Id',
                              hintText: 'Address',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                              validator: (value) {
                                if(value!.isEmpty){
                                  return 'Please enter your address';
                                }
                              },
                        ),
                          SizedBox(height: size.height * 0.02),
                        const Text(
                          'State',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          controller: statecontroller,
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                             fillColor: Colors.grey[300],
                            filled: true,
                              prefixIcon: const Icon(Icons.location_city_outlined,color:Colors.black),
                              // hintText: 'Enter Phone Number/Email ID/BN User Id',
                              hintText: 'State',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                              validator: (value) {
                                if(value!.isEmpty){
                                  return 'Please enter your state';
                                }
                              },
                        ),
                          SizedBox(height: size.height * 0.02),
                        const Text(
                          'User type',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          controller: usertypecontroller,
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                             fillColor: Colors.grey[300],
                            filled: true,
                              prefixIcon: const Icon(Icons.person_outline,color:Colors.black),
                              // hintText: 'Enter Phone Number/Email ID/BN User Id',
                              hintText: 'User type',
                              hintStyle: const TextStyle(fontSize: 13),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                              validator: (value) {
                                if(value!.isEmpty){
                                  return 'Please enter your usertype';
                                }
                              },
                        ),
                       
                                    
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                                    
                        RoundButton(
                            title: 'Register',
                            loading: loading,
                            onTap: ()async {
                               Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SideBottomNavigation(),
                      ),
                    );
                         
                            }),
                       
                          
                      
                      ],
                    ),
                  ),
                ),
       ),
      ),
    );
  }
}