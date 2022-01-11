import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/constants/app_strings.dart';
import 'package:weather_test/Utilities/constants/colors.dart';
import 'package:weather_test/Utilities/constants/sizes_helpers.dart';
import 'package:weather_test/Utilities/constants/text_styles.dart';
import 'package:weather_test/Utilities/constants/ui_helpers.dart';
import 'package:weather_test/models/locations_search_models.dart';
import 'package:weather_test/ui/shared/bottom_sheets/locations_serch_bottomsheet/locations_search_bottomsheet_view.form.dart';
import 'package:weather_test/ui/shared/bottom_sheets/locations_serch_bottomsheet/locations_search_bottomsheet_viewmodel.dart';
import 'package:weather_test/ui/shared/widgets/app_loader.dart';

@FormView(
  fields: [
    FormTextField(name: 'locationSearch'),
  ],
)
class LocationSearchBottomSheetView extends StatelessWidget
    with $LocationSearchBottomSheetView {
  final SheetRequest request;
  final Function(SheetResponse) completer;
  LocationSearchBottomSheetView({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LocationSearchBottomSheetViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => model.isBusy
          ? const AppLoader()
          : DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.8,
              minChildSize: 0.3,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          UIHelper.width30(context),
                        ),
                        topRight: Radius.circular(
                          UIHelper.width30(context),
                        ),
                      ),
                    ),
                    height: displayHeight(context) * 0.7672,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: UIHelper.width21(context),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UIHelper.sizedBoxSpace22(context),
                          Center(
                            child: SizedBox(
                              child: Divider(
                                thickness: UIHelper.width2(context),
                              ),
                              width: UIHelper.width100(context),
                            ),
                          ),
                          UIHelper.sizedBoxSpace19(context),
                          SizedBox(
                            height: UIHelper.height60(context),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              controller: locationSearchController,
                              keyboardType: TextInputType.text,
                              maxLines: 1,
                              cursorColor: AppColors.appMainColor,
                              // onChanged: ,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      UIHelper.width4(context),
                                    ),
                                  ),
                                  borderSide: BorderSide(
                                      color: AppColors.borderColor,
                                      width: UIHelper.borderwidth(context),
                                      style: BorderStyle.solid),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      UIHelper.width4(context),
                                    ),
                                  ),
                                  borderSide: BorderSide(
                                      color: AppColors.borderColor,
                                      width: UIHelper.borderwidth(context),
                                      style: BorderStyle.solid),
                                ),
                                prefixIcon: IconButton(
                                  onPressed: () {
                                    model.navigateToLocationSearchView();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios_outlined,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                  ),
                                  iconSize: UIHelper.width18(context),
                                ),
                                hintText: hintText,
                                hintStyle:
                                    AppTextStyles.blackNormalSize14InterFont(
                                        context),
                              ),
                            ),
                          ),
                          UIHelper.sizedBoxSpace19(context),
                          Center(
                            child: Text(
                              suggestions,
                              style: AppTextStyles.greyNormalSize16InterFont(
                                  context,),
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  if (!model.hasAutoCompleteResults)
                                  // if (!model.hasAutoCompleteResults)
                                    const Text(
                                      typeForSuggestions,
                                    ),
                                  if (model.hasAutoCompleteResults)
                                  // if (model.hasAutoCompleteResults)
                                    ...model.autoCompleteResults.map(
                                      (e) => ListTile(
                                        onTap: () {
                                          completer(
                                            SheetResponse(
                                              data: e,
                                              confirmed: true,
                                            ),
                                          );
                                        },
                                        title: Text(e.state ?? ''),
                                        subtitle: Text(e.country ?? ''),
                                      ),
                                    ),
                                    // ...model.autoCompleteResults.map(
                                    //   (e) => ListTile(
                                    //     onTap: () {
                                    //       completer(
                                    //         SheetResponse(
                                    //           data: e,
                                    //           confirmed: true,
                                    //         ),
                                    //       );
                                    //     },
                                    //     title: Text(e.mainText ?? ''),
                                    //     subtitle: Text(e.secondaryText ?? ''),
                                    //   ),
                                    // ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
      viewModelBuilder: () => LocationSearchBottomSheetViewModel(),
    );
  }
}
