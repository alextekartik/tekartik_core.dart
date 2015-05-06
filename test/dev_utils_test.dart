library dev_utils_test;

import 'package:tekartik_core/dev_utils.dart';
import 'package:test/test.dart';

void main() => defineTests(true);

void defineTests([bool disableOutput = true]) {
  //useVMConfiguration();
  group('dev_utils', () {
    setUp(() {
      if (disableOutput) {
        tekartikDevPrintEnabled = false;
      }
    });
    tearDown(() {
      if (disableOutput) {
        tekartikDevPrintEnabled = true;
      }
    });
    
    test('devPrint', () {
      tekartikDevPrint("dev print message");
    });
    test('devError', () {
      if (disableOutput) {
        tekartikDevPrintEnabled = false;
      }
      try {
        tekartikDevError("from test not supported");
        fail('no');
      } catch (e) {}
      if (disableOutput) {
        tekartikDevPrintEnabled = true;
      }
    });
  });
}
