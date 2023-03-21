import 'package:flutter/material.dart';

class Latestform extends StatefulWidget {
  const Latestform({super.key});

  @override
  State<Latestform> createState() => _LatestformState();
}

class _LatestformState extends State<Latestform> {
  var _productName;
  final _productController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _productController.addListener(_updateText);
  }

  void _updateText() {
    setState(() {
      _productName = _productController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            //TextForm Field.......
            TextFormField(
              controller: _productController,
              decoration: const InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(),
              ),
            ),
            Text("Product Name ${_productController.text}"),
          ],
        ),
      ),
    );
  }
}
