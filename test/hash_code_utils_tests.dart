library hash_code_utils_tests;

import 'package:test/test.dart';
//import 'package:unittest/vm_config.dart';
// ignore: deprecated_member_use
import 'package:tekartik_core/hash_code_utils.dart';

main() {
  group('hash_code', () {
    test('safe_hash', () {
      expect(safeHashCode(null), 0);
      expect(safeHashCode(0), 0);
      expect(safeHashCode(1), 1);
      expect(safeHashCode("hi".hashCode), "hi".hashCode);
    });
  });
}
