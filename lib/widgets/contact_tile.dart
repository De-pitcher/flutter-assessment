import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String name;
  final String email;
  final String decription;
  const ContactTile({
    super.key,
    required this.name,
    required this.email,
    required this.decription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        leading: const CircleAvatar(),
        title: Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          email,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: _buildSendIcon(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    decription,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    email,
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

  Widget _buildDetailsIcon({required Widget child}) => SizedBox(
        height: 20,
        width: 40,
        child: child,
      );

  Widget _buildSendIcon() => Image.asset(
        'assets/images/Frame.png',
        width: 27,
      );
}
