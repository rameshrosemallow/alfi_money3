import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:money3_alfie_plugin/money3_alfie_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('money3_alfie_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Money3AlfiePlugin.platformVersion, '42');
  });
}
