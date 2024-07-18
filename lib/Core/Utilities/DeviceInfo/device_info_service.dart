import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoServices {
  // Private constructor
  DeviceInfoServices._privateConstructor();

  // Singleton instance
  static final DeviceInfoServices _instance =
      DeviceInfoServices._privateConstructor();

  // Method to access the singleton instance
  static DeviceInfoServices get instance => _instance;

  final _deviceInfo = DeviceInfoPlugin();

  // Method to get the device ID

  Future<String?> getDeviceId() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.product; // Unique ID on Android
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.identifierForVendor; // Unique ID on iOS
    } else {
      return null; // Handle other platforms if needed
    }
  }
}
