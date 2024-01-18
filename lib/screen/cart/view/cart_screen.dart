import 'package:advance_exam/screen/detail/provider/detail_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  DetailProvider? providerr;
  DetailProvider? providerw;
  @override
  Widget build(BuildContext context) {
    providerw=context.watch<DetailProvider>();
    providerr=context.read<DetailProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Find it Love it Buy it"),
          centerTitle: true,
        ),
        body: providerr!.cartList == null?const Center(child: CircularProgressIndicator(),):ListView.builder(
          itemCount: providerw!.cartList.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'detail');
            },
            title:  Text("${providerw!.cartList[index].title}"),
            leading: Padding(
              padding: const EdgeInsets.all(3),
              child: Image.network(
                '${providerw!.cartList[index].image}',
                height: 100,
              ),
            ),
            trailing:
                IconButton(onPressed: () {

                }, icon: const Icon(Icons.delete)),
          ),
        ),
      ),
    );
  }
}
