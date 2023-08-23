import 'package:flutter/material.dart';

import '../widgets/contact_tile.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/filter_button.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  bool _isFav = false;

  void _toggleFav() => setState(() => _isFav = !_isFav);

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
          const ContactTile(
            name: 'Darlene Steward',
            email: 'darlene.steward7@gmail.com',
            decription: 'Fullstack Developer',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
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
