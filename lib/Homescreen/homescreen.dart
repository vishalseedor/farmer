
import 'package:farmers/Homescreen/cate.dart';
import 'package:farmers/Homescreen/productwidget.dart';
import 'package:farmers/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchText = TextEditingController();
bool isVisible=false;
 
 
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   
    return Scaffold(
   backgroundColor: backgroundcolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
       backgroundColor: Colors.white,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  const Text(
                    'Local Farmers Market',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const AddressScreen()));
                      },
                      child: const Icon(
                        Icons.expand_more,
                        size: 20,
                      ))
                ],
              ),
              Text('Trivandrum,India',style: TextStyle(fontSize: 11),)
              // Consumer<UserProvider>(builder: (context, value, child) {
              //   String userAddress = "";
              //   for (var i = 0; i < value.users.length; i++) {
              //     userAddress = value.users[i].address;
              //   }
              //   return Text(
              //     '$userAddress , India',
              //     style: const TextStyle(
              //         color: Colors.black,
              //         fontSize: 10,
              //         fontWeight: FontWeight.w900),
              //   );
              // }),
            ],
          ),
          GestureDetector(
            onTap: () {
            // Navigator.push(context,MaterialPageRoute(builder:(context)=> MyCartScreen()));
            },
            child: Image.asset(
              'assets/cart.png',
              height: 35,
              width: 35,
              
            ),
          )
        ]),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        // final Size size = constraints.biggest;
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.01,
                ),
                ImageSlideshow(
                  //  indicatorRadius: ,
                  width: double.infinity,
                  height: size.height * 0.26,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  children: [
                  
                    Container(
                      //  width: 500,
                      // margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image(
                          image: AssetImage('assets/banner2.png'),
                        ),
                      ),
                    ),
                    Container(
                      //  width: 300,
                      //  margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image(
                          image: AssetImage('assets/banner3.png'),
                        ),
                      ),
                    ),
                      Container(
                      // width: 300,
                      // margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image(
                          image: AssetImage('assets/banner1.png'),
                        ),
                      ),
                    ),
                  ],
                  onPageChanged: (value) {},
                  autoPlayInterval: 3000,
                  isLoop: false,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                TextFormField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),borderSide: BorderSide.none
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                     // size: 17,
                    ),
                    hintText: "Search a Products",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                       fontSize: 14,
                        fontWeight: FontWeight.w600),
                 
                 
                  ),
                  style: const TextStyle(color: Colors.black),
                 
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                 SizedBox(
                            height: size.height * 0.07,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, intex) {
                                return CateoGoryWidget(
                                 
                                );
                              },
                            ),
                          ),
                      
                SizedBox(
                  height: size.height * 0.01,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Popular Near You',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
              SizedBox(
                                      height: size.height * 0.6,
                                      child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                crossAxisSpacing: 10,
                                                mainAxisSpacing: 10,
                                                childAspectRatio: 0.78),
                                        scrollDirection: Axis.vertical,
                                        itemCount: 6,
                                        itemBuilder: (context, intex) {
                                          return AllProductWidget(
                                          
                                          );
                                        },
                                      ),
                                    ),
                
              ],
            ),
          ),
        );
      }),
    );
  }
}
