import 'package:flutter/material.dart';

class CateoGoryWidget extends StatefulWidget {


  const CateoGoryWidget({
    super.key,

   
  });

  @override
  State<CateoGoryWidget> createState() => _CateoGoryWidgetState();
}

class _CateoGoryWidgetState extends State<CateoGoryWidget> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
      
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 35,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/cate.png')),borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(width: size.width*0.02),
              Text('Fruits & Vegtables',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),)
            ],
          ),
        ),
      ),
    );
  }
}
