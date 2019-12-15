// import 'package:flavor/app_config.dart';
import 'package:flavor/app_config.dart';
import 'package:flavor/main_common.dart';
import 'package:flutter/material.dart';

// void main() {
//   var configuredApp = AppConfig(
//     appDisplayName: "App 1",
//     appInternalId: 1,
//     child: MyApp(),
//   );

//   mainCommon();

//   runApp(configuredApp);
// }

// import 'package:flavorsexample/app_config.dart';
// import 'package:flavorsexample/main_common.dart';
// import 'package:flutter/material.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: "App 1",
    appInternalId: 1,
    child: MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}
