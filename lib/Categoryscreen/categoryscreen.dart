
import 'package:farmers/Categoryscreen/category.dart';
import 'package:farmers/colors/colors.dart';
import 'package:flutter/material.dart';





class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
 
   TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 85,
          elevation: 0,
          backgroundColor: backgroundcolor,
          automaticallyImplyLeading: false,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
             
            ],
          ),
        ),
        backgroundColor: backgroundcolor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height*0.07,
                  child: TextFormField(
                    controller: searchController,
                   decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),fillColor: Colors.white,filled: true,suffixIcon: Icon(Icons.search,color: greencolor),hintText: 'Search'),
                  
                   
                  ),
                ),
                SizedBox(height: size.height*0.02,),
              
                                  SizedBox(
                                      height: size.height * 0.6,
                                      child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount:5,
                                        itemBuilder: (context, intex) {
                                          return AllCategoryWidget(
                                           
                                          );
                                        },
                                      ),
                                    ),
               
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
