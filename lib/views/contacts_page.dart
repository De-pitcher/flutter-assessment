import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_assessment/view_model/contacts.dart';

import '../models/contact.dart';
import '../widgets/contact_tile.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/filter_button.dart';

class ContactsPage extends StatefulWidget {
  static const id = '/';

  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  bool _isFav = false;

  void _toggleFav() => setState(() => _isFav = !_isFav);

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await Contacts().fetchUsers().then((value) {
        for (var e in value) {
          print('--->${e.firstName}');
        }
      });
      await Contacts()
          .createUser('firstName', 'lastName')
          .then((value) => print(value.firstName));
      await Contacts()
          .updateUser('firstName', 'job')
          .then((value) => print(value.firstName));
      await Contacts().deleteUser().then((value) => print('Success'));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Contacts',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.sync),
          ),
        ],
      ),
      body: Column(
        children: [
          const CustomTextfield(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                FilterButton(
                  text: 'All',
                  width: 64,
                  selected: !_isFav,
                  onPressed: _toggleFav,
                ),
                const SizedBox(width: 16),
                FilterButton(
                  text: 'Favorites',
                  width: 100,
                  selected: _isFav,
                  onPressed: _toggleFav,
                ),
              ],
            ),
          ),
          // EmptyWidget(),
          Consumer(
            builder: (_, ref, __) {
              return FutureBuilder<List<Contact>>(
                //TODO: Use the format in FutureBuilder to implement the 
                //endpoints in your codes
                // ref.watch(createUserProvider(param1, param2))
                // ref.watch(updateUserProvider(param1, param2))
                // ref.watch(deleteUserProvider())
                future: ref.watch(fetchUsersProvider.future),
                builder: (_, snapshot) => snapshot.hasData
                    ? Expanded(
                        child: ListView.builder(
                          itemBuilder: (_, i) => ContactTile(
                            contact: snapshot.data![i],
                          ),
                          itemCount: snapshot.data?.length,
                        ),
                      )
                    : const LoadingWidget(),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * .3),
      child: const CircularProgressIndicator(),
    );
  }
}

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * .1),
      child: Image.asset(
        'assets/images/amico.png',
        width: 264.5,
      ),
    );
  }
}
