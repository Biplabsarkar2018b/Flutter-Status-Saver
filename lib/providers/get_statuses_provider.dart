import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class GetStatusesProvider extends ChangeNotifier {
  void getStatuses() async {
    final status = await Permission.manageExternalStorage.request();

    Directory? directory = await getExternalStorageDirectory();

    if (status.isDenied) {
      Permission.storage.request();
      log("Permission Denied");
      return;
    }

    if (status.isGranted) {
      log(directory!.path);
    }
  }
}
