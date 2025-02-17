import 'package:flutter/material.dart';

InputDecoration textInputDecoration = InputDecoration(
  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))
  ,
  // OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(10)),
  labelText: "Confirm Password",
  hintText: "Confirm Password",
);

// to use we call textInputDecoration in decoration property
// to add another property we use .copyWith(hintText: "Confirm Password")