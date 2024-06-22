import 'package:flutter/material.dart';


class AllFarmersWidget extends StatefulWidget {

  

  const AllFarmersWidget(
      {super.key,
 

      });

  @override
  State<AllFarmersWidget > createState() => _AllPetWidgetState();
}

class _AllPetWidgetState extends State<AllFarmersWidget > {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //  final pet = Provider.of<PetModel>(context);
   return GestureDetector(
      onTap: () {
          //     Navigator.of(context).pushNamed(FarmerDetailsScreen.routeName,arguments:widget.id);
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //       builder: (_) => ProductDetailsPage(product: product)),
        // );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Card(
          
          color: Colors.grey[300],
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          elevation: 0.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(                                               
                height: 130,
                alignment: Alignment.topRight,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/farm.png'),
                    fit: BoxFit.cover,
                  ),   
                ),
                // child: SizedBox(
                //   width: 30,
                //   height: 30,
                //   child: IconButton.filledTonal(
                //     padding: EdgeInsets.zero,
                //     onPressed: () {}, 
                //     iconSize: 18,
                //     icon: const Icon(IconlyLight.bookmark),
                //   ),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text(
                        'Farm Name : ${'Vegtables Farm'}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Text(
                        'Email : ${'vishal@gmail.com'}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold,fontSize: 11)
                      ),
                    ),
                   
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    //  return       Padding(
    //                         padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    //                         child: InkWell(
    //                           onTap: (){
    //                              Navigator.of(context).pushNamed(FarmerDetailsScreen.routeName,arguments:widget.id);
    //                           },
    //                           child: Card(
    //                             color:Colors.grey[300],
    //                             child: ListTile(
    //                               leading: ClipRRect(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 child: Image.network(widget.image)),
    //                                        title: Text(widget.farmname,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    //                                          subtitle: Column(
    //                                           crossAxisAlignment: CrossAxisAlignment.start,
    //                                            children: [
    //                                              Text('Address : ${widget.address}',style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 11),),
    //                                              SizedBox(height: 20),
    //                                               Text(widget.email,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
    //                                            ],
    //                                          ),
    //                                          trailing: Container(
    //                                           height: 30,
    //                                           width: 30,
                                            
    //                                           decoration: BoxDecoration(  color: greencolor,borderRadius: BorderRadius.circular(8)),
    //                                           child: Center(child: Text(widget.farmstatus,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),)),
    //                                          ),
    //                             //                 trailing: Icon(
    //                             //     Icons.arrow_forward_ios,
    //                             //     color: Colors.lightBlueAccent,
    //                             // ),
    //                                    ),
                                
                                
                               
    //                             ),
    //                         ),
    //                         );
                        
  }
}
