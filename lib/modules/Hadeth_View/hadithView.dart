import 'package:flutter/material.dart';

class hadithView extends StatelessWidget {
  const hadithView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Hadith_View",
        style: theme.textTheme.titleLarge
      ),
    );
  }
}
