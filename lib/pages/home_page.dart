import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:parvezfolio/models/catelog.dart';
import 'package:parvezfolio/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catelogJson =
        await rootBundle.loadString("assets/files/catelog.json");
    final decodedData = jsonDecode(catelogJson);
    var productsData = decodedData["products"];
    CatelogModel.items = List.from(productsData)
        .map<Item>((Item) => Item.fromMap(Item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Tech Solutions"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatelogModel.items != null && CatelogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final Item = CatelogModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                          header: Container(
                            // ignore: sort_child_properties_last
                            child: Text(
                              Item.name,
                              // ignore: prefer_const_constructors
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: const EdgeInsets.all(12),
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                            ),
                          ),
                          // ignore: sort_child_properties_last
                          child: Image.network(
                            Item.image,
                          ),
                          footer: Container(
                            // ignore: sort_child_properties_last
                            child: Text(
                              Item.price.toString(),
                              // ignore: prefer_const_constructors
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: const EdgeInsets.all(12),
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          )));
                },
                itemCount: CatelogModel.items.length,
              )
            // ignore: prefer_const_constructors
            : Center(
                // ignore: prefer_const_constructors
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
