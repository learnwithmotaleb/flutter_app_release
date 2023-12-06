import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App Release"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Flutter App release For Important Step!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Stepper(
              steps: [
                Step(
                    isActive: _currentStep == 0,
                    title: Text("Add App Icon"),
                    content: Column(
                      children: [
                        Text(
                          "Add in project launcher icon package pubspec.yaml?",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "flutter_icons:\nandroid: true\nios: true\nimage_path: " +
                              "assets/icon/icon.png",
                        ),
                      ],
                    )),
                Step(
                    isActive: _currentStep == 1,
                    title: Text("Set App Name"),
                    content: Column(
                      children: [
                        Text(
                          "Add in project rename package pubspec.yaml?",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "android: android/app/src/main/res/AndroidManifest.xml/android:label=" +
                                "AppName\n\n"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "ios:runner/info.plist/\n	<key>CFBundleDisplayName</key>\n" +
                                " <string>App Name</string>"),
                      ],
                    )),
                Step(
                    isActive: _currentStep == 2,
                    title: Text("Set App PackageName"),
                    content: Column(
                      children: [
                        Text(
                          "Add in project change_app_package_name package pubspec.yaml?",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "android: android/app/src/build.gradle/\napplicationId " +
                                "com.companyname.appname"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "ios:runner/info.plist/\n	<key>CFBundleIdentifier</key>\n" +
                                " <string>com.companyname.appname</string>"),
                      ],
                    )),
                Step(
                    isActive: _currentStep == 3,
                    title: Text("Ganarate Play StoreKey or jks File"),
                    content: Column(
                      children: [
                        Text(
                          "Visit The Link for android and ios",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "https://docs.flutter.dev/deployment/android#signing-the-app"),
                      ],
                    )),
                Step(
                    isActive: _currentStep == 4,
                    title: Text("Ganarate PlaystoreKey or jks File"),
                    content: Column(
                      children: [
                        Text(
                          "Visit The Link for android and ios",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "https://docs.flutter.dev/deployment/android#signing-the-app"),
                      ],
                    )),
                Step(
                    isActive: _currentStep == 5,
                    title: Text("Create A Google PlayConsole Account"),
                    content: Column(
                      children: [
                        Text(
                          "Upload Android App",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("https://www.youtube.com/@learnwithmotaleb"),
                      ],
                    )),
              ],
              onStepTapped: (int newIndex) {
                setState(() {
                  _currentStep = newIndex;
                });
              },
              currentStep: _currentStep,
              onStepContinue: () {
                if (_currentStep != 5) {
                  setState(() {
                    _currentStep += 1;
                  });
                }
              },

              onStepCancel: () {
                if (_currentStep != 0) {
                  setState(() {
                    _currentStep -= 1;
                  });
                }
              },

            ),
          ))
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
