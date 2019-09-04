import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:appdynamics_mobilesdk/appdynamics_mobilesdk.dart';

void main() {
  const MethodChannel channel = MethodChannel('appdynamics_mobilesdk');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AppdynamicsMobilesdk.platformVersion, '42');
  });
}
