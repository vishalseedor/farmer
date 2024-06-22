
import 'package:farmers/colors/colors.dart';
import 'package:flutter/material.dart';




class ItemDetailScreen extends StatefulWidget {

  const ItemDetailScreen({Key? key}) : super(key: key);

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  
  
  @override
  Widget build(BuildContext context) {
     
    final size = MediaQuery.of(context).size;
     

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: greencolor,
        elevation: 0,
        title: const Text('Products Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: GestureDetector(
              onTap: () {
            //   Navigator.push(context,MaterialPageRoute(builder:(context)=> MyCartScreen()));
              },
              child: Image.asset(
                'assets/cart.png',
                height: 35,
                width: 35,
                
              ),
            ),
          )
        ],
      ),
      body: 
         SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/apple.png',
                    height: size.height * 0.3, // Responsive image height
                    width: size.width * 0.8, // Responsive image width
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'Apple',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                 SizedBox(height: size.height * 0.01),
                Text(
                  'Quantity : ${20}',
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                ),
                 SizedBox(height: size.height * 0.01),
                Text('Category : ${'Fruits and Vegtables'}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900,color: Colors.brown),),
                SizedBox(height: size.height * 0.01),
                Text('Farmer : ${'Vishal'}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                 SizedBox(height: size.height * 0.01),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹ ${200}',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  // const DemoScreensss()
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  'About product',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'The apple is one of the pome (fleshy) fruits. Apples at harvest vary widely in size, shape, colour, and acidity, but most are fairly round and some shade of red or yellow. ',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
      
              ],
            ),
          ),
        ),
      
      floatingActionButton: SizedBox(
        height: 60,
        width: 360,
        child: FloatingActionButton(
          backgroundColor: greencolor,
          onPressed: (){
            

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag,color: Colors.white,),
              SizedBox(width: size.width*0.02),
              Text('Add to Cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          ),
          ),
      ),
    );
    
  }
}
