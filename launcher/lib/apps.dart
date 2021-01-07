import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class MyApps extends StatefulWidget {
  static const route = '/apps';
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  String data;
  bool _showSystemApps = true;
  bool _onlyLaunchableApps = true;

  Future<List<Application>> getAppInfos() async {
    List<Application> apps = await DeviceApps.getInstalledApplications(
        includeAppIcons: true,
        includeSystemApps: true,
        onlyAppsWithLaunchIntent: true);
    print(apps);
    print(apps.runtimeType);
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    // For your reference print the AppDoc directory
    print("Path :");
    print(directory.path);
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/data.txt');
  }

  Future<File> writeContent() async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString('Hello Folks');
  }

  Future<String> readContent() async {
    try {
      final file = await _localFile;
      // Read the file
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      // If there is an error reading, return a default String
      return 'Error';
    }
  }

  @override
  void initState() {
    super.initState();
    writeContent();
    readContent().then((String value) {
      setState(() {
        data = value;
        print('data');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Installed App'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: getAppInfos),
          IconButton(
              icon: Icon(Icons.pregnant_woman), onPressed: () => _localPath),
        ],
        // actions: <Widget>[
        //   PopupMenuButton<String>(
        //     itemBuilder: (BuildContext context) {
        //       return <PopupMenuItem<String>>[
        //         PopupMenuItem<String>(
        //             value: 'system_apps', child: Text('Toggle system apps')),
        //         PopupMenuItem<String>(
        //           value: 'launchable_apps',
        //           child: Text('Toggle launchable apps only'),
        //         )
        //       ];
        //     },
        //     onSelected: (String key) {
        //       if (key == 'system_apps') {
        //         setState(() {
        //           _showSystemApps = !_showSystemApps;
        //         });
        //       }
        //       if (key == 'launchable_apps') {
        //         setState(() {
        //           _onlyLaunchableApps = !_onlyLaunchableApps;
        //         });
        //       }
        //     },
        //   )
        // ],
      ),
      body: _ListAppsPagesContent(
          includeSystemApps: _showSystemApps,
          onlyAppsWithLaunchIntent: _onlyLaunchableApps,
          key: GlobalKey()),
    );
  }
}

class _ListAppsPagesContent extends StatelessWidget {
  final bool includeSystemApps;
  final bool onlyAppsWithLaunchIntent;

  const _ListAppsPagesContent({
    Key key,
    this.includeSystemApps: false,
    this.onlyAppsWithLaunchIntent: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Application>>(
      future: DeviceApps.getInstalledApplications(
          includeAppIcons: true,
          includeSystemApps: includeSystemApps,
          onlyAppsWithLaunchIntent: onlyAppsWithLaunchIntent),
      builder: (BuildContext context, AsyncSnapshot<List<Application>> data) {
        if (data.data == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          List<Application> apps = data.data;
          // print(apps);
          return Scrollbar(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int position) {
                  Application app = apps[position];
                  return GestureDetector(
                    onTap: () => DeviceApps.openApp(app.packageName),
                    child: GridTile(
                      child: app is ApplicationWithIcon
                          ? Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: CircleAvatar(
                                      backgroundImage: MemoryImage(app.icon),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    app.appName,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            )
                          : null,
                    ),
                  );
                },
                itemCount: apps.length),
          );
        }
      },
    );
  }
}
