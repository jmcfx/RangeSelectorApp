import 'package:designp/newscreens/RandomizerPage.dart';
import 'package:designp/newscreens/RangeSelectorForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RangeSelectorPage extends HookWidget {
  final formKey = GlobalKey<FormState>();
  RangeSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final min = useState<int>(0);
    final max = useState<int>(0);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Select Range"),
      ),
      //Drawer Button.......
      drawer: const Drawer(),
      //The Whole Body.....
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (value) => min.value = value,
        maxValueSetter: (value) => max.value = value,
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
                  max: max.value,
                  min: min.value,
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
