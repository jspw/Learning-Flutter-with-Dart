import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:device_apps/device_apps.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      home: MyApp(),
    ),
  );
}

const String dataFile = 'data1.json';

class MyApp extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  String data;

  File _filePath;
  bool _fileExists = false;
  String jsonString;

  List<dynamic> _json = [];
  List<dynamic> _jsonshow = [];

  List<Application> appsDetail;

  void checkFile() async {
    // chek if file exists
    String dir = (await getApplicationDocumentsDirectory()).path;
    String savePath = '$dir/$dataFile';

//for a directory: await Directory(savePath).exists();
    if (await File(savePath).exists()) {
      print("File exists");
    } else {
      print("File don't exists");
    }
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/$dataFile');
  }

  void appDetail() async {
    print("Getting app informations using 'device_apps' : ");
    List<Application> apps = await DeviceApps.getInstalledApplications(
      includeSystemApps: true,
      includeAppIcons: true,
      onlyAppsWithLaunchIntent: true,
    );
    print("Printing apps detail from appDetail() Funtion  apps : ");
    // for (int i = 0; i < apps.length; i++) print(apps[i]);

    print(apps);

    appsDetail = apps;

    for (int i = 0; i < apps.length; i++) {
      ApplicationWithIcon icon = apps[i] as ApplicationWithIcon;

      print(icon.icon.runtimeType);

      // print(apps[i]);
      _json.add({
        "totalApps": apps.length,
        "appName": apps[i].appName,
        "apkFilePath": apps[i].apkFilePath,
        "packageName": apps[i].packageName,
        "versionName": apps[i].versionName,
        "versionCode": apps[i].versionCode,
        "dataDir": apps[i].dataDir,
        "systemApp": apps[i].systemApp,
        "installTimeMillis": apps[i].installTimeMillis,
        "updateTimeMillis": apps[i].updateTimeMillis,
        "icon": icon.icon,

        // "category": apps[i].category
      });
    }

    print(_json);
  }

  void writeJsonfile() async {
    print("Writing json file : ");

    _filePath = await _localFile;

    print("json before encoding : ");
    print("$_json");

    jsonString = jsonEncode(_json);

    print("jsonString after encoding : ");

    print(jsonString);
    _filePath.writeAsString(
      jsonEncode(jsonString),
    );
  }

  Future<List<Object>> Apps() async {
    print("Reading Json file");

    _filePath = await _localFile;
    _fileExists = await _filePath.exists();
    print('0. File exists? $_fileExists');

    if (_fileExists) {
      try {
        String jsonString = await _filePath.readAsString();
        _json = jsonDecode(jsonString);
        print('printing json file after reading : ');
        print(_json);
        return _json;
      } catch (e) {
        // Print exception errors
        print('Tried reading _file error: $e');
        // If encountering an error, return null
      }
    } else {}
  }

  @override
  void initState() {
    super.initState();
    appDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Reading and Writing data')),
        body: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.ac_unit), onPressed: Apps),
            _json.length > 0 
                ? GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: _json.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5, childAspectRatio: 2.0),
                    itemBuilder: (BuildContext context, int index) {
                      print("Checking");
                      print(_json[index]["icon"].runtimeType);
                      var icon = _json[index]["icon"];
                      return Column(
                        children: <Widget>[
                          Expanded(child: Text(_json[index]["appName"])),
                          Expanded(child: Image.memory(icon)),
                        ],
                      );
                    })
                : Text("No Data Found"),
          ],
        ));
  }
}

class AppInfo {
  String icon;
  String appName;
  String apkFilePath;
  String packageName;
  String versionName;
  String versionCode;
  String dataDir;
  bool systemApp;
  int installTimeMillis;
  int updateTimeMillis;
  String category;
}
