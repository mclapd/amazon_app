import 'package:amazon_clone_tutorial/common/widgets/loader.dart';
import 'package:amazon_clone_tutorial/constants/global_variables.dart';
// import 'package:amazon_clone_tutorial/features/account/services/account_services.dart';
import 'package:amazon_clone_tutorial/features/account/widgets/single_product.dart';
// import 'package:amazon_clone_tutorial/features/order_details/screens/order_details.dart';
import 'package:amazon_clone_tutorial/models/order.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // List<Order>? orders;

  List list = [
    "https://images.unsplash.com/photo-1682687220499-d9c06b872eee?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1705583864718-71cdbb830c79?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1708297269332-7f14e256b783?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1706383884116-432b3e221558?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8fA%3D%3D",
  ];
  // final AccountServices accountServices = AccountServices();

  @override
  void initState() {
    super.initState();
    // fetchOrders();
  }

  // void fetchOrders() async {
  //   orders = await accountServices.fetchMyOrders(context: context);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return /*orders == null
        ? const Loader()
        :*/
        Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // itemCount: orders!.length,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(image: list[index]);
              // return GestureDetector(
              //   onTap: () {
              //     // Navigator.pushNamed(
              //     //   context,
              //     //   OrderDetailScreen.routeName,
              //     //   arguments: orders![index],
              //     // );
              //   },
              //   child: SingleProduct(
              //     image: orders![index].products[0].images[0],
              //   ),
              // );
            },
          ),
        ),
      ],
    );
  }
}
