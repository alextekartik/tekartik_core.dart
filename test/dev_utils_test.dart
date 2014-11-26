library dev_utils_test;

import 'package:tekartik_core/dev_utils.dart';
import 'package:unittest/unittest.dart';

void main() => defineTests(false);

void defineTests([bool disableOutput = true]) {
  //useVMConfiguration();
  group('dev_utils', () {
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
      } catch (e) {

      }
      if (disableOutput) {
        tekartikDevPrintEnabled = true;
      }

    });
  });
}
