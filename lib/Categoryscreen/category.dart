import 'package:flutter/material.dart';




class AllCategoryWidget extends StatefulWidget {

  

  const AllCategoryWidget(
      {super.key,
  
    
      });

  @override
  State<AllCategoryWidget > createState() => _AllCategoryWidgetState ();
}

class _AllCategoryWidgetState extends State<AllCategoryWidget > {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //  final pet = Provider.of<PetModel>(context);

     return   GestureDetector(
                  onTap: () {
                  
                   
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:5),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          CircleAvatar(
                            radius: 55,
                            backgroundImage: AssetImage('assets/cate.png'),
                          ),
                          // Image.network(
                          //   widget.image,
                          //   scale: 4,
                          // ),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                           Text(
                            'Fruits and Vegtables',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                );
  }
}
