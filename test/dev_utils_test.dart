library dev_utils_test;

// ignore: deprecated_member_use
import 'package:tekartik_core/dev_utils.dart';
import 'package:test/test.dart';

void main() => defineTests(true);

void defineTests([bool disableOutput = true]) {
  //useVMConfiguration();
  group('dev_utils', () {
    setUp(() {
      if (disableOutput) {
        // ignore: deprecated_member_use
        tekartikDevPrintEnabled = false;
      }
    });
    tearDown(() {
      if (disableOutput) {
        // ignore: deprecated_member_use
        tekartikDevPrintEnabled = true;
      }
    });

    test('devPrint', () {
      // ignore: deprecated_member_use
      tekartikDevPrint("dev print message");
    });
    test('devError', () {
      if (disableOutput) {
        // ignore: deprecated_member_use
        tekartikDevPrintEnabled = false;
      }
      try {
        // ignore: deprecated_member_use
        tekartikDevError("from test not supported");
        fail('no');
      } catch (e) {}
      if (disableOutput) {
        // ignore: deprecated_member_use
        tekartikDevPrintEnabled = true;
      }
    });
  });
}
