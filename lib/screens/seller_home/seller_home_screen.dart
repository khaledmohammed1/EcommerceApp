import 'package:customer_ecommerce_app/screens/seller_add_product/sellerAddProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens.dart';

class SellerHomeScreen extends StatelessWidget {
  static const String routeName = "/sellerHome";

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const SellerHomeScreen());
  }

  const SellerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/sellerProduct', page: ()=>  SellerProductScreen()),
        GetPage(name: '/newProduct', page: ()=>  SellerAddProductScreen())
      ],
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text("Seller Home"),
          backgroundColor: Colors.black,
        ),
        body: SizedBox(
          child: Column(
            children: [
              Container(width: double.infinity,
                height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child
                : InkWell(
                  onTap: (){
                    Get.to(() => SellerProductScreen());
                  },
                  child: const Card(
                    child: Center(child: Text("Go To Products"),),
                  ),
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
