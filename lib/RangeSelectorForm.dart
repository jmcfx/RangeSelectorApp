import 'package:designp/RandomizerChangeNotifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef IntValueSetter = void Function(int value);
//RangeSelectorForm Class...
class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm(
      {super.key,
      required this.formKey,
     });
final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //RangeSelectorTextForm Constructor || Minimum
              RangeSelectorTextFormField(
                labelText: "Minimum",
                intValueSetter: (value)=>context.read<RandomizerChangeNotifier>().min = value,
              ),
              // SizedBox Space .....
              const SizedBox(
                height: 12,
              ),
              //RangeSelectorTextForm Constructor|| Maximum
              RangeSelectorTextFormField(
                labelText: "Maximum",
                intValueSetter: (value)=>context.read<RandomizerChangeNotifier>().max = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//RangeSelectorTextFormField Class.......
class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField(
      {required this.intValueSetter, this.labelText, super.key});
  final String? labelText;
  final IntValueSetter
      intValueSetter; // Void function That takes an INT as  Params
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return "This must be an Interger";
        } else {
          return null;
        }
      },
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
    );
  }
}



