
import 'package:farmers/Farmerscreen/farmerwidget.dart';
import 'package:farmers/colors/colors.dart';
import 'package:flutter/material.dart';


class FamersScreen extends StatefulWidget {
  const FamersScreen({super.key});

  @override
  State<FamersScreen> createState() => _FamersScreenState();
}

class _FamersScreenState extends State<FamersScreen> {
 
  @override
  Widget build(BuildContext context) {
 
     final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text('Farms',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
      ),
      body:
     
                         SizedBox(
                          height: size.height * 0.9,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 4,
                              itemBuilder: (context, intex) {
                                return AllFarmersWidget(
                                 
        
                             
                             
                                 
                                
                                );
                              },
                            ),
                          ),
          
    );
  }
}