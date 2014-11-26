// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library all_tests;

import 'log_utils_test.dart' as log_utils_test;
import 'dev_utils_test.dart' as dev_utils_test;
import 'test_utils_test.dart' as test_utils_test;

void main() {
  log_utils_test.defineTests();
  dev_utils_test.defineTests();
  test_utils_test.defineTests();
}
