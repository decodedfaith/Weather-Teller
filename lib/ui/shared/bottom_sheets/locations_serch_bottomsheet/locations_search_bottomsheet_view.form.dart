// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String LocationSearchValueKey = 'locationSearch';

mixin $LocationSearchBottomSheetView on StatelessWidget {
  final TextEditingController locationSearchController =
      TextEditingController();
  final FocusNode locationSearchFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    locationSearchController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            LocationSearchValueKey: locationSearchController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    locationSearchController.dispose();
    locationSearchFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get locationSearchValue => this.formValueMap[LocationSearchValueKey];

  bool get hasLocationSearch =>
      this.formValueMap.containsKey(LocationSearchValueKey);
}

extension Methods on FormViewModel {}
