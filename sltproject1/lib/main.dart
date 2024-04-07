// import 'package:tflite/tflite.dart' as tflite;
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ETH_SLT',
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   bool _isCameraInitialized = false;
//   late List<String> _labels;
//   String _prediction = '';
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera(); // Initialize camera when the widget is inserted
//     _loadModel(); // Load the TFLite model and labels
//   }
//
//   Future<void> _initializeCamera() async {
//     final cameras = await availableCameras();
//     final firstCamera = cameras.first;
//     _controller = CameraController(
//       firstCamera,
//       ResolutionPreset.medium,
//     );
//     await _controller.initialize();
//     setState(() => _isCameraInitialized = true);
//   }
//
//   Future<void> _loadModel() async {
//     try {
//       String res = await tflite.loadModel(
//         model: "assets/tmodel.tflite", // Replace with your model filename
//         labels: "assets/labels.txt", // Replace with labels filename (optional)
//         numThreads: 1,
//         isAsset: true,
//         useGpuDelegate: false,
//       );
//       print('Model loaded successfully: $res');
//       _labels = await _loadLabels();
//     } catch (e) {
//       print('Error loading model: $e');
//     }
//   }
//
//   Future<List<String>> _loadLabels() async {
//     final labelData = await rootBundle.loadString('assets/labels.txt');
//     return labelData.split('\n');
//   }
//
//   void _predictImage(CameraImage image) async {
//     if (_labels.isEmpty) return;
//
//     final recognitions = await tflite.runModelOnFrame(
//       bytesList: image.planes.map((plane) {
//         return plane.bytes;
//       }).toList(),
//       imageHeight: image.height,
//       imageWidth: image.width,
//       imageMean: 0,
//       imageStd: 255.0,
//       rotation: 90,
//       numResults: 1,
//       threshold: 0.1,
//       asynch: true,
//     );
//
//     setState(() {
//       _prediction = _labels[recognitions.first['index']];
//     });
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   Widget _buildStartPage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage('assets/images/anieth.png'),
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Spacer(),
//           ElevatedButton.icon(
//             onPressed: () async {
//               if (_isCameraInitialized) {
//                 // Start camera logic here
//                 // For example, navigate to a new page with camera preview
//                 // or display the camera feed directly on this page.
//               } else {
//                 print('Camera not initialized yet.');
//               }
//             },
//             icon: Icon(Icons.camera_alt),
//             label: Text('START CAMERA'),
//           ),
//           SizedBox(height: 60),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ETH_SLT'),
//       ),
//       body: _buildStartPage(),
//     );
//   }
// }
//









// import 'package:tflite_flutter/tflite_flutter.dart' as tflite;
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ETH_SLT',
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   bool _isCameraInitialized = false;
//   late List<String> _labels;
//   String _prediction = '';
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera(); // Initialize camera when the widget is inserted
//     _loadModel(); // Load the TFLite model and labels
//   }
//
//   Future<void> _initializeCamera() async {
//     final cameras = await availableCameras();
//     final firstCamera = cameras.first;
//     _controller = CameraController(
//       firstCamera,
//       ResolutionPreset.medium,
//     );
//     await _controller.initialize();
//     setState(() => _isCameraInitialized = true);
//   }
//
//   Future<void> _loadModel() async {
//     try {
//       String res = await tflite.Tflite.loadModel(
//         model: "assets/tmodel.tflite", // Replace with your model filename
//         labels: "assets/labels.txt", // Replace with labels filename (optional)
//         numThreads: 1,
//         isAsset: true,
//         useGpuDelegate: false,
//       );
//       print('Model loaded successfully: $res');
//       _labels = await _loadLabels();
//     } catch (e) {
//       print('Error loading model: $e');
//     }
//   }
//
//   Future<List<String>> _loadLabels() async {
//     final labelData = await rootBundle.loadString('assets/labels.txt');
//     return labelData.split('\n');
//   }
//
//   void _predictImage(CameraImage image) async {
//     if (_labels.isEmpty) return;
//
//     final recognitions = await tflite.Tflite.runModelOnFrame(
//       bytesList: image.planes.map((plane) {
//         return plane.bytes;
//       }).toList(),
//       imageHeight: image.height,
//       imageWidth: image.width,
//       imageMean: 0,
//       imageStd: 255.0,
//       rotation: 90,
//       numResults: 1,
//       threshold: 0.1,
//       asynch: true,
//     );
//
//     setState(() {
//       _prediction = _labels[recognitions.first['index']];
//     });
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   Widget _buildStartPage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage('assets/images/anieth.png'),
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Spacer(),
//           ElevatedButton.icon(
//             onPressed: () async {
//               if (_isCameraInitialized) {
//                 // Start camera logic here
//                 // For example, navigate to a new page with camera preview
//                 // or display the camera feed directly on this page.
//               } else {
//                 print('Camera not initialized yet.');
//               }
//             },
//             icon: Icon(Icons.camera_alt),
//             label: Text('START CAMERA'),
//           ),
//           SizedBox(height: 60),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ETH_SLT'),
//       ),
//       body: _buildStartPage(),
//     );
//   }
// }
//




// import 'package:tflite_flutter/tflite_flutter.dart' as tflite;
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ETH_SLT',
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   bool _isCameraInitialized = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera(); // Initialize camera when the widget is inserted
//     _loadModel(); // Load the TFLite model and labels
//   }
//
//   Future<void> _initializeCamera() async {
//     final cameras = await availableCameras();
//     final firstCamera = cameras.first;
//     _controller = CameraController(
//       firstCamera,
//       ResolutionPreset.medium,
//     );
//     await _controller.initialize();
//     setState(() => _isCameraInitialized = true);
//   }
//
//   Future<void> _loadModel() async {
//     try {
//       String res = await tflite.loadModel(
//         model: "assets/tmodel.tflite", // Replace with your model filename
//         labels: "assets/labels.txt", // Replace with labels filename (optional)
//         numThreads: 1,
//         isAsset: true,
//         useGpuDelegate: false,
//       );
//       print('Model loaded successfully: $res');
//     } catch (e) {
//       print('Error loading model: $e');
//     }
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   Widget _buildStartPage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage('assets/images/anieth.png'),
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Spacer(),
//           ElevatedButton.icon(
//             onPressed: () async {
//               if (_isCameraInitialized) {
//                 // Start camera logic here
//                 // For example, navigate to a new page with camera preview
//                 // or display the camera feed directly on this page.
//               } else {
//                 print('Camera not initialized yet.');
//               }
//             },
//             icon: Icon(Icons.camera_alt),
//             label: Text('START CAMERA'),
//           ),
//           SizedBox(height: 60),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ETH_SLT'),
//       ),
//       body: _buildStartPage(),
//     );
//   }
// }
//










import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ETH_SLT',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _loadModel();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    _controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
    setState(() {
      _isCameraInitialized = true;
    });
  }

  Future<void> _loadModel() async {
    try {
      String? res = await Tflite.loadModel(
        model: "assets/tmodel.tflite",
        labels: "assets/labels.txt",
        numThreads: 1,
        isAsset: true,
        useGpuDelegate: false,
      );
      print('Model loaded successfully: $res');
    } catch (e) {
      print('Error loading model: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildStartPage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/anieth.png'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(),
          ElevatedButton.icon(
            onPressed: () async {
              if (!_isCameraInitialized) return;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CameraPreviewPage(controller: _controller),
                ),
              );
            },
            icon: Icon(Icons.camera_alt),
            label: Text('START CAMERA'),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ETH_SLT'),
      ),
      body: _isCameraInitialized ? CameraPreview(_controller) : _buildStartPage(),
    );
  }
}

class CameraPreviewPage extends StatelessWidget {
  final CameraController controller;

  const CameraPreviewPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Preview'),
      ),
      body: CameraPreview(controller),
    );
  }
}





// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ETH_SLT',
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   bool _isCameraInitialized = false;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   Widget _buildStartPage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage('assets/images/anieth.png'),
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Spacer(), // Push button towards the bottom
//           ElevatedButton.icon(
//             onPressed: () async {
//               final cameras = await availableCameras();
//               final firstCamera = cameras.first;
//               _controller = CameraController(
//                 firstCamera,
//                 ResolutionPreset.medium,
//               );
//               await _controller.initialize();
//               setState(() => _isCameraInitialized = true);
//             },
//             icon: Icon(Icons.camera_alt),
//             label: Text('START CAMERA'),
//           ),
//           SizedBox(height: 60), // Add some vertical spacing
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('SIGN LANGUAGE TRANSLATOR'),
//       ),
//       body:
//           _isCameraInitialized ? CameraPreview(_controller) : _buildStartPage(),
//       floatingActionButton: _isCameraInitialized
//           ? Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 FloatingActionButton.extended(
//                   onPressed: () {
//                     _controller.dispose(); // Stop the camera
//                     setState(() => _isCameraInitialized = false); // Update flag
//                   },
//                   label: Text('STOP'),
//                   icon: Icon(Icons.stop),
//                 ),
//                 SizedBox(width: 16),
//                 FloatingActionButton.extended(
//                   onPressed: () async {
//                     try {
//                       // Ensure that the camera is initialized before capturing pictures
//                       await _initializeControllerFuture;
//                       // Perform translation or other action here
//                       // This could include processing the camera image
//                       // or sending it to a translation service
//                       print('Translation started');
//                     } catch (e) {
//                       // Handle any errors that occur during translation
//                       print('Error: $e');
//                     }
//                   },
//                   label: Text('START TRANSLATION'),
//                   icon: Icon(Icons.g_translate),
//                 ),
//               ],
//             )
//           : null,
//     );
//   }
// }
