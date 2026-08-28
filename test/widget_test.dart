import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:verdant_frame/app_settings.dart';
import 'package:verdant_frame/main.dart';

void main() {
  testWidgets('shows the local photo editor landing page', (tester) async {
    SharedPreferences.setMockInitialValues({'language_code': 'en'});
    final preferences = await SharedPreferences.getInstance();
    await tester.pumpWidget(
      VerdantFrameApp(settings: AppSettingsController(preferences)),
    );
    expect(find.text('Lunelle'), findsOneWidget);
    expect(find.text('Choose from Photos'), findsOneWidget);
  });
}
