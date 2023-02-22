import 'package:flutter/material.dart';

class UserImageButton extends StatelessWidget {
  const UserImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Colors.white,
        child: const Text('A'),
      ),
    );
  }
}
