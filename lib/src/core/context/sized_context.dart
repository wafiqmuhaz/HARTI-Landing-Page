import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_builder/responsive_builder.dart';

extension SizedContext on BuildContext {
  DeviceScreenType get devices => getDeviceType(MediaQuery.of(this).size);

  bool get isDevicesSmallPhone => DeviceScreenType.watch == devices;
  bool get isDevicesPhone => DeviceScreenType.mobile == devices;
  bool get isDevicesTablet => DeviceScreenType.tablet == devices;
  bool get isDevicesDekstop => DeviceScreenType.desktop == devices;

  double get padding => getValueForScreenType<double>(
        context: this,
        watch: 5,
        mobile: 15,
        tablet: 30,
        desktop: 60,
      );

  double get paddingMobile => getValueForScreenType<double>(
        context: this,
        watch: 20,
        mobile: 20,
        tablet: 50,
        desktop: 200,
      );
}
