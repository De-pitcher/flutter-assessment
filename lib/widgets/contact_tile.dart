import 'package:flutter/material.dart';

import '../models/contact.dart';
import '../views/profile_page.dart';

class ContactTile extends StatelessWidget {
  final Contact contact;
  const ContactTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundImage: const AssetImage('assets/images/loading.jpeg'),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(contact.avatar),
          ),
        ),
        title: Text(
          '${contact.firstName} ${contact.lastName} ⭐',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          contact.email,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: _buildSendIcon(
            // onTap: () => Navigator.pushNamed(context, ProfilePage.id),
            ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fullstack Developer',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    contact.email,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Row(
                children: [
                  _buildDetailsIcon(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: _buildSendIcon(),
                    ),
                    onTap: () => Navigator.pushNamed(
                      context,
                      ProfilePage.id,
                      arguments: contact.avatar,
                    ),
                  ),
                  _buildDetailsIcon(
                    child: const Icon(
                      Icons.edit,
                      color: Color(0xFFF2C94C),
                    ),
                  ),
                  _buildDetailsIcon(
                    child: const Icon(
                      Icons.delete,
                      color: Color(0xFFFA0F0F),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDetailsIcon({
    required Widget child,
    void Function()? onTap,
  }) =>
      GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 20,
          width: 40,
          child: child,
        ),
      );

  Widget _buildSendIcon({void Function()? onTap}) => GestureDetector(
        onTap: onTap,
        child: Image.asset(
          'assets/images/Frame.png',
          width: 27,
        ),
      );
}
