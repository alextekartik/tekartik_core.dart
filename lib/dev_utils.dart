/**
 * Development helpers to generate warning in code
 */
@deprecated
library tekartik_dev_utils_deprecated;

import 'package:tekartik_common_utils/dev_utils.dart';
export 'package:tekartik_common_utils/dev_utils.dart';

@deprecated
void tekartikDevPrint(Object object) => debugDevPrint(object);

@deprecated
void tekartikDevError(Object object) => debugDevError(object);

@deprecated
set tekartikDevPrintEnabled(bool enabled) => debugDevPrintEnabled = enabled;
