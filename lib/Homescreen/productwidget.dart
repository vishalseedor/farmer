import 'package:farmers/Homescreen/detailsscreen.dart';
import 'package:farmers/colors/colors.dart';
import 'package:flutter/material.dart';


class AllProductWidget extends StatefulWidget {
 

  const AllProductWidget(
      {super.key,
     });

  @override
  State<AllProductWidget> createState() => _AllProductWidgetState();
}

class _AllProductWidgetState extends State<AllProductWidget> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   
    return InkWell(
      onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemDetailScreen()));
      },
      child: Card( 
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        // height: size.height * 0.25,
        // width: size.width * 0.38,
        // decoration: BoxDecoration(
        //     color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Apple',
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // onTap();
                  },
                  child: Image.asset(
                    'assets/apple.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Qty:${220}',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "₹ ${200}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    //width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        // Container(
                        //   height: 35,
                        //   width: 35,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: greencolor),
                        //     borderRadius: BorderRadius.circular(5),
                        //     shape: BoxShape.rectangle,
                        //   ),
                        //   child: InkWell(
                        //     onTap: () {
                        //       setState(() {
                        //         if (_counter != 0) {
                        //           return setState(() {
                        //             // _counter--;
                        //             // totalCost = int.parse(
                        //             //         widget.price.toString()) *
                        //             //     _counter;
                        //           });
                        //         } else {
                        //           return;
                        //         }
                        //       });
                        //     },
                        //     child: FittedBox(
                        //       child: Text(
                        //         '-',
                        //         style: TextStyle(
                        //             fontSize: 20,
                        //             fontWeight: FontWeight.bold,
                        //             color: greencolor),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 25,
                        // ),
                        // Text(
                        //   '$_counter',
                        //   style: const TextStyle(
                        //     fontSize: 20,
                        //     fontFamily: 'Inter-Medium',
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 25,
                        //),
                        Container(
                          height: 30,
                          width: 35,
                          decoration: BoxDecoration(
                            color: greencolor,
                            //shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: InkWell(
                            onTap: () async {
                             

                            },
                            child: Center(
                              child: Text(
                                'Add',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

//                 Container(
//           height: 30,
//           width: 30,
//           decoration: const BoxDecoration(
//             color: Colors.green,
//             borderRadius: BorderRadius.all(
//             Radius.circular(3)
//             ),
//           ),
//           child: InkWell(
//             onTap: ()async {
// //         final cartProvider = Provider.of<AddtoCartProvider>(context, listen: false);
// // final success = await cartProvider.addItemToCart(productid: ,quanity: ,userid:); // Assuming parameters are required for the addItemToCart method
// // if (success) {
// //   Navigator.push(context, MaterialPageRoute(builder:(context)=>const MyCartScreen()));
// //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //     content: Text('Item added to cart successfully'),

// //   ));
// // } else {
// //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //     content: Text('Failed to add item to cart'),
// //   ));
// // }
//             },

//             // onTap: _toggleVisibility,
//             child: const Icon(Icons.add, color: Colors.white, size: 13),
//           ),
//         ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
