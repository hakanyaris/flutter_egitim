import 'package:flutter/material.dart';

class iconLearnView extends StatelessWidget {
  const iconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Merhaba')),
      body: Column(children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            color: IconColors
                .froly, //aşağıdaki clastan değerini aldık  AYRICA Theme.of(context).primaryColor  ile temadanda alabilirdik.
            size: IconSized.iconSmall, //aşağıdaki clastan değerini aldık
          ),
        )
      ]),
    );
  }
}

class IconSized {
  static final double iconSmall = 40;
}

class IconColors {
  static final Color froly = Color(0xffED6176);
}
