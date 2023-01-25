import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    const green = Color.fromARGB(255, 122, 170, 96);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        const Header(
          text: 'Important Links',
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('Order and payment policy'),
        const SizedBox(
          height: 8,
        ),
        const Text('Shipping policy'),
        const SizedBox(
          height: 8,
        ),
        const Text('Exchange and return policy'),
        const SizedBox(
          height: 8,
        ),
        const Text('Privacy policy'),
        const SizedBox(
          height: 8,
        ),
        const Text('Customer Service'),
        const SizedBox(
          height: 8,
        ),
        const Text('Floriculture table'),
        const SizedBox(
          height: 40,
        ),
        const Header(text: 'About Us'),
        const SizedBox(
          height: 30,
        ),
        const Text('A store that provides the organic farming supplies that every home grower needs'),
        const SizedBox(
          height: 40,
        ),
        const Header(text: 'Contact Us'),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: const [
            Icon(Icons.call_outlined),
            SizedBox(
              width: 8,
            ),
            Text('+966 59 595 9285')
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: const [
            Icon(Icons.textsms_outlined),
            SizedBox(
              width: 8,
            ),
            Text('+966 50 009 7209')
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: const [
            Icon(Icons.email_outlined),
            SizedBox(
              width: 8,
            ),
            Text('Zahraa1994Jz@hotmail.com')
          ],
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  final String text;
  const Header({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const green = Color.fromARGB(255, 122, 170, 96);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
          child: VerticalDivider(
            color: green,
            thickness: 3,
          ),
        ),
        Text(
          text,
          style: const TextStyle(color: green, fontSize: 18),
        ),
      ],
    );
  }
}
