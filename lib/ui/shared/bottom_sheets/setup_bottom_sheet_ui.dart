import 'package:stacked_services/stacked_services.dart';
import 'package:weather_test/Utilities/enums.dart';
import 'package:weather_test/app/app.locator.dart';
import 'package:weather_test/ui/shared/bottom_sheets/forecast_report_bottomsheet/forecast_report_botttom_sheet_view.dart';
import 'package:weather_test/ui/shared/bottom_sheets/notification_bottomsheet/notification_bottom_sheet_view.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.forcastReport: (context, sheetRequest, completer) =>
        ForecastReportSheet(request: sheetRequest, completer: completer),
    BottomSheetType.notification: (context, sheetRequest, completer) =>
        NotificationBottomSheetView(request: sheetRequest, completer: completer)
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
