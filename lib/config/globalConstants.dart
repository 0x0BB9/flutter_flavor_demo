import 'dart:ui' as ui;

import 'package:package_info_plus/package_info_plus.dart';

class GlobalConstants {
  static Flavor flavor = Flavor.prod;

  static void setFlavor(Flavor value) {
    flavor = value;
  }

  static Flavor getFlavor() {
    var host = const String.fromEnvironment('env');
    switch (host) {
      case "dev":
        return Flavor.dev;
      case "test":
        return Flavor.test;
      case "gray":
        return Flavor.gray;
      default:
        return Flavor.prod;
    }
  }

  static Future<Flavor> getFlavorByPackageName() async {
    var packageInfo = await PackageInfo.fromPlatform();
    var packageName = packageInfo.packageName;
    if (packageName.endsWith(".dev")) {
      return Flavor.dev;
    } else if (packageName.endsWith(".test")) {
      return Flavor.test;
    } else if (packageName.endsWith(".gray")) {
      return Flavor.gray;
    } else {
      return Flavor.prod;
    }
  }

  static bool isZH() {
    final languageCode = ui.window.locale.languageCode;
    return languageCode == 'zh' ||
        languageCode == 'zh_Hans' ||
        languageCode == 'zh_Hant';
  }

  static const String LANGUAGE_ENGLISH = "en";
  static const String LANGUAGE_CHINESE = "zh_Hans";

  static String getCurrentLan() {
    String lan = LANGUAGE_ENGLISH;

    if (isZH()) {
      lan = LANGUAGE_CHINESE;
    }
    return lan;
  }
}

enum Flavor {
  dev(apiHost: 'https://willdev.com'),
  test(apiHost: 'https://willtest.com'),
  gray(apiHost: 'https://willgray.com'),
  prod(apiHost: 'https://will.com');

  const Flavor({
    required this.apiHost,
  });

  final String apiHost;
}
