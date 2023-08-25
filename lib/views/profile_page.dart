import 'package:flutter/material.dart';
import 'package:flutter_assessment/views/profile_edit_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileEditScreen()));
                },
                child: const Text('Edit'),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 6, color: kPrimaryColor)),
                height: 115,
                width: 115,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(imageSrc),
                    ),
                    Positioned(
                        bottom: 0,
                        right: -38,
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          shape: const CircleBorder(),
                          child: SvgPicture.asset("assets/svg/ic_svg.svg", width: 30,height: 30,),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 10.0,),
              Center(
                child: Text(
                  'Darlene Steward',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 20.0,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.17,
                color: kGreyLightColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30.0,),
                  SvgPicture.asset("assets/svg/ic_inbox.svg", width: 40,height: 40,),
                    const SizedBox(height: 20.0,),
                    Text(
                      'darlene.steward7@gmail.com',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                ],),
              ),
              const SizedBox(height: 30.0,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    fixedSize: const Size(300, 55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: const Text('Send Email',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
