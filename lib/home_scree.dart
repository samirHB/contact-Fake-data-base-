import 'package:flutter/material.dart';

class UserInfo {
  final String? name;
  final String? message;

  UserInfo({required this.name, required this.message});
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<UserInfo> users = [
    UserInfo(name: 'Samir Hberra', message: 'message number 1'),
    UserInfo(name: 'Samir Hberra', message: 'message number 2'),
    UserInfo(name: 'Samir Hberra', message: 'message number 3'),
    UserInfo(name: 'Samir Hberra', message: 'message number 4'),
    UserInfo(name: 'Samir Hberra', message: 'message number 5'),
    UserInfo(name: 'Samir Hberra', message: 'message number 6'),
    UserInfo(name: 'Samir Hberra', message: 'message number 7'),
    UserInfo(name: 'Samir Hberra', message: 'message number 7'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => contactbuilder(users[index]),
          separatorBuilder: (context, index) => Container(
                height: 1,
                color: Colors.grey,
              ),
          itemCount: users.length),
    );
  }
}

Widget contactbuilder(UserInfo user) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://avatarfiles.alphacoders.com/310/310097.png',
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${user.name}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                '${user.message}',
              ),
            ],
          )
        ],
      ),
    );
