import 'package:code_forces/pages/login_page.dart';
import 'package:code_forces/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CodeForces());
}
 class CodeForces extends StatelessWidget {
  const CodeForces({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => userProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: loginPage(),
      ),
    );
  }
}