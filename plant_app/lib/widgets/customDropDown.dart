import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  List<String>? items;
  Function(String?)? onChanged;
  String? Function(String?)? validator;
  String? labelText;
  CustomDropDown({super.key, this.items,this.onChanged,this.validator,   this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.0),
      child: DropdownButtonFormField(
        validator: validator,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
          items: items?.map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              )).toList(),
          onChanged: onChanged),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class CustomDropdown extends StatelessWidget {
//   List<String>? items;
//   String? labelText;
//   Function(String?)? onChanged;
//   String? Function(String?)? validator;
//   CustomDropdown({
//     super.key,
//     this.items,
//     this.onChanged,
//     this.labelText,
//     this.validator,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField(
//       validator: validator,
//       decoration: InputDecoration(
//         labelText: labelText,
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//       ),

//       items: items
//           ?.map((e) => DropdownMenuItem(child: Text(e), value: e))
//           .toList(),
//       onChanged: onChanged,
//     );
//   }
// }
