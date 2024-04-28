import 'package:code_forces/providers/user_provider.dart';
import 'package:code_forces/widgets/rank.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class userPage extends StatelessWidget {
  // const userPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    Provider.of<userProvider>(context).user!.image),
                radius: 80,
              ),
              Text(Provider.of<userProvider>(context).user!.handle!),
              Rank(),
            ],
          ),
          Divider(
            indent: 40,
            endIndent: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'First Name : ${Provider.of<userProvider>(context).user!.fname}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Last Name : ${Provider.of<userProvider>(context).user!.lname}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Organization : ${Provider.of<userProvider>(context).user!.organization}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Country : ${Provider.of<userProvider>(context).user!.country}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'City : ${Provider.of<userProvider>(context).user!.city}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Contribution : ${Provider.of<userProvider>(context).user!.contribution}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Rating : ${Provider.of<userProvider>(context).user!.rating}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Max Rating : ${Provider.of<userProvider>(context).user!.maxRating}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Max Rank : ${Provider.of<userProvider>(context).user!.maxrank}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Divider(
            indent: 40,
            endIndent: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 110,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  'Friends : ${Provider.of<userProvider>(context).user!.friendOfCount}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 110,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  'Contests',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 110,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  'Blogs',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


