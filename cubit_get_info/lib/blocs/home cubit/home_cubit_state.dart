// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter/material.dart';

part of 'home_cubit.dart';
// part 'home_cubit.freezed.dart';

@freezed
class HomeCubitState with _$HomeCubitState {
  const factory HomeCubitState.init({
    required Map<int, String> productItems,
  }) = InitHomeCubitState;

  // Widget maybeMap({required SizedBox Function() orElse, required Null Function(dynamic initState) init}) {}
}
