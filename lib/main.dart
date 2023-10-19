import 'package:flutter/material.dart';
import 'package:gift/network/api_endpoints.dart';
import 'network/dio_network_service.dart';

void main() async{

  final networkLayerInitialization = DioNetworkModule(
    /*headers: {
    "Authorization": "Bearer ${ApiConstants.apiKey}",
  },*/
    headers: {
      "": "",
    },
  );
  // Make a GET request to the `/users` endpoint.
  final getRequest = GetRequest(networkLayerInitialization, ApiEndPoints.users);
  final response = await getRequest.execute();

  print("status Code : ${response.statusCode}");
  print("status Message : ${response.statusMessage}");
  print("data : ${response.data}");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Gift'),
        ),
      ),
    );
  }
}
