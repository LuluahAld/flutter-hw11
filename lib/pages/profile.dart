import 'package:flutter/material.dart';
import 'package:hw_11/pages/info.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 40, 32, 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Color.fromARGB(255, 122, 170, 96),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello,',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Luluah Aldakhil',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 32,
              ),
              const Options(
                text: 'Notifications',
                icon: Icons.notifications_outlined,
              ),
              const Options(
                text: 'Orders',
                icon: Icons.card_giftcard,
              ),
              const Options(
                text: 'Pending Payments',
                icon: Icons.shopping_cart_outlined,
              ),
              const Options(
                text: 'Wishlist',
                icon: Icons.star_border,
              ),
              const Options(
                text: 'My account',
                icon: Icons.account_circle_outlined,
              ),
              const Options(
                text: 'My ratings',
                icon: Icons.star_outlined,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 40, 36, 12),
                child: Row(
                  children: const [
                    Icon(
                      Icons.logout,
                      color: Colors.red,
                      size: 30,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
            child: Info(),
          )
        ],
      ),
    );
  }
}

class Options extends StatelessWidget {
  final icon;
  final text;
  const Options({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(36, 20, 36, 12),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color.fromARGB(255, 183, 183, 184),
            size: 30,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
