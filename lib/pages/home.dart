import 'package:desafio_insta_clone/widgets/post.dart';
import 'package:desafio_insta_clone/widgets/status.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Image.asset(
          'assets/images/Instagram-Logo.png',
          height: 100,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.messenger)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AvatarStatus(
                    'Seu Story',
                    'https://avatars.githubusercontent.com/u/53386801?v=4',
                    false,
                    myStories: true,
                  ),
                  AvatarStatus(
                      'rodrigorahman',
                      'https://avatars.githubusercontent.com/u/20157178?v=4',
                      true),
                  AvatarStatus(
                      'diego3g',
                      'https://avatars.githubusercontent.com/u/2254731?v=4',
                      false),
                  AvatarStatus(
                      'renatomota',
                      'https://avatars.githubusercontent.com/u/23418948?v=4',
                      false),
                  AvatarStatus(
                      'gabuldev',
                      'https://avatars.githubusercontent.com/u/32063378?v=4',
                      false),
                  AvatarStatus(
                      'jacobaraujo7',
                      'https://avatars.githubusercontent.com/u/4047813?v=4',
                      false),
                  AvatarStatus(
                      'davidsdearaujo',
                      'https://avatars.githubusercontent.com/u/16373553?v=4',
                      false),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Post();
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(size: 28),
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video_outlined), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/53386801?v=4'),
                    maxRadius: 14,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: 3,
                    height: 3,
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  )
                ],
              ),
              label: '')
        ],
      ),
    );
  }
}
