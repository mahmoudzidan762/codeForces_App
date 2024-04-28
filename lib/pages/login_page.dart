import 'package:code_forces/models/user_info_model.dart';
import 'package:code_forces/pages/user_page.dart';
import 'package:code_forces/providers/user_provider.dart';
import 'package:code_forces/services/user_info_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class loginPage extends StatelessWidget {
  // const loginPage({super.key});
  String? handle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 420,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2B2B2B),
              // Color(0xff313131),
              Color(0xff424242),
              Color(0xff636363),
              Color(0xff757575),
              Color(0xff8D8D8D),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            Image.asset(
              'assets/ranking-list-11-512.png',
              width: 300,
              height: 250,
            ),
            Text(
              'Code Forces',
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Carattere',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            Spacer(),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Enter your handle',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                      fontFamily: 'Carattere',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff424242),
                              Color(0xff757575),
                              Color(0xff424242),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        onSubmitted: (name) async {
                          handle = name;
                          userInfoService getinfo = userInfoService();
                          userInfo userData = userInfo();
                          userData = await getinfo.getService(name: handle!);
                          Provider.of<userProvider>(context, listen: false)
                              .user = userData;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return userPage();
                          }));
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 24),
                          label: Text(
                            'Here...',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
