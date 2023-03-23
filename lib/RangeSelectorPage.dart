import 'package:designp/RandomizerPage.dart';
import 'package:designp/RangeSelectorForm.dart';
import 'package:flutter/material.dart';


class RangeSelectorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  RangeSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Select Range"),
      ),
      //Drawer Button......
      drawer: const Drawer(),
      //The Body is The RangeSelectorForm Default Constructor
      body: RangeSelectorForm(
        formKey: formKey,
      ),
      //Floating action Button.....
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            //Pushing to The Context to the Next Page Using The Material Pager Route||.......
            Navigator.of(context).push(
              MaterialPageRoute(
                // Then Pushing The Value in min and max to Randomizer Max and Min required Constructor.......
                builder: (context) => RandomizerPage(
                
                ),
              ),
            );
          }
        },
        backgroundColor: Colors.black87,  
        child: const Icon(Icons.ads_click),
      ),
    );
  }
}
