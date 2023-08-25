import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constant.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  var _emailController = new TextEditingController();
  var _firstNameController = new TextEditingController();
  var _lastNameController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20); // Image border

    // final imageSrc = ModalRoute.of(context)?.settings.arguments as String;
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
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1, color: kPrimaryColor)),
                height: 125,
                width: 125,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/bg_profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: -30,
                        child: RawMaterialButton(
                          fillColor: kPrimaryColor,

                          onPressed: () {},
                          elevation: 2.0,
                          shape: const CircleBorder(),
                          child: const Icon(Icons.edit, color: Colors.white,),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                    child: Text("First Name",style: TextStyle(color: kPrimaryColor),),
                  ),
                  TextFormField(
                    controller: _firstNameController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    autofocus: false,
                    decoration: const InputDecoration(
                        labelStyle:
                        TextStyle(color: kPrimaryColor),
                        hintText: 'name',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: kPrimaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: kPrimaryColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: kPrimaryColor),
                        )
                    ),
                  ), const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                    child: Text("Last Name",style: TextStyle(color: kPrimaryColor),),
                  ),
                  TextFormField(
                    controller: _lastNameController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    autofocus: false,
                    decoration: const InputDecoration(
                        labelStyle:
                        TextStyle(color: kPrimaryColor),
                        hintText: 'name',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: kPrimaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: kPrimaryColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: kPrimaryColor),
                        )
                    ),
                  ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                      child: Text("Email",style: TextStyle(color: kPrimaryColor),),
                    ),
                    TextFormField(
                      controller: _emailController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      autofocus: false,
                      decoration: const InputDecoration(
                          labelStyle:
                          TextStyle(color: kPrimaryColor),
                          hintText: 'email',
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            borderSide: BorderSide(color: kPrimaryColor),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            borderSide: BorderSide(color: kPrimaryColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            borderSide: BorderSide(color: kPrimaryColor),
                          )
                      ),
                    ),
                ],)
              ),
              const SizedBox(height: 35,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    fixedSize: const Size(300, 55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: const Text('Done',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
