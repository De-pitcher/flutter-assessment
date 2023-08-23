import 'package:flutter/material.dart';
import 'package:flutter_assessment/utils/constant.dart';

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
        collapsedBackgroundColor: kPrimaryColor.withOpacity(.1),
        // collapsedBackgroundColor: Colors.white,
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
                children: [
                  Text(
                    decription,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    email,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Row(
                children: [
                  _buildDetailsIcon(child: _buildSendIcon()),
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
        height: 26,
        width: 51,
        child: child,
      );

  Widget _buildSendIcon() => Image.asset(
        'assets/images/Frame.png',
        width: 27,
      );
}
