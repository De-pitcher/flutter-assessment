import 'package:flutter/material.dart';

import '../utils/constant.dart';

class ProfilePage extends StatelessWidget {
  static const id = 'profile';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomHeight = MediaQuery.sizeOf(context).height * .2;
    final imageSrc = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        bottom: PreferredSize(
          preferredSize: Size(100, bottomHeight),
          child: Container(
            height: bottomHeight,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Edit'),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: kPrimaryColor,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(imageSrc),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
