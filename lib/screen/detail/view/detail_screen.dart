import 'package:advance_exam/screen/detail/provider/detail_provider.dart';
import 'package:advance_exam/screen/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  DetailProvider? providerr;
  DetailProvider? providerw;

  @override
  Widget build(BuildContext context) {
    HomeModel? data = ModalRoute.of(context)!.settings.arguments as HomeModel;
    providerw = context.watch<DetailProvider>();
    providerr = context.read<DetailProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Center(
                    child: Image.network(
                      '${data.image}',
                      height: 250,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  " ${data.title}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  '${data.category}',
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Desctiption',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${data.description}',
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const Text("data"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Quantity',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "+     1     -",
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price ${data.price}/-",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        providerw!.addData(data);
                      },
                      child: const Text("Shop Now"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
