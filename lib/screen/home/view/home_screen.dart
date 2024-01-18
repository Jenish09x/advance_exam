import 'package:advance_exam/screen/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flipkart"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "cart");
                },
                icon: const Icon(CupertinoIcons.cart))
          ],
        ),
        body: providerr!.dataList==null?const Center(child: CircularProgressIndicator(),):GridView.builder(
          itemCount: providerw!.dataList!.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, "detail",arguments: providerw!.dataList![index]);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Align(
                    alignment: const Alignment(-0.9, 0),
                    child: Text(
                      '${providerw!.dataList![index].id}',
                      style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.network('${providerw!.dataList![index].image}',height: 100,),
                  const Spacer(),
                  Text(
                    "${providerw!.dataList![index].title}",
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
