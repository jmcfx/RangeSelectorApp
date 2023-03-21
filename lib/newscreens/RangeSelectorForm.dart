import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm(
      {super.key,
      required this.formKey,
      required this.minValueSetter,
      required this.maxValueSetter});

  final GlobalKey<FormState> formKey;

  final IntValueSetter minValueSetter;
  final IntValueSetter maxValueSetter;

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
                intValueSetter: minValueSetter,
              ),
              const SizedBox(
                height: 12,
              ),
              //RangeSelectorTextForm Constructor|| Maximum
              RangeSelectorTextFormField(
                labelText: "Maximum",
                intValueSetter: maxValueSetter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//RangeSelectorTextFormFieldClass.......
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



