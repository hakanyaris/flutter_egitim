import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});
  final _title = "Create Your First Name";
  final _descraption = "Add a note ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.backGrandColor,
      appBar: AppBar(
        backgroundColor: ProjectColors.backGrandColor,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Padding(
        padding: ProjectPadding.horizontalPadding,
        child: Column(children: [
          SizedBox(
            height: 250,
            child: Image.asset(
              "images/kisspng-watercolor-painting-illustration-apple-and-books.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          TitleWidget(title: _title),
          Padding(
            padding: ProjectPadding.verticalPadding,
            child: _SubTitleWidget(title: _descraption),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: SizedBox(
                height: ButtonHeight.buttonNormalHeight,
                child: Center(
                    child: Text(
                  "Create a Note",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: ProjectColors.backGrandColor),
                ))),
          ),
          TextButton(onPressed: () {}, child: Text("Import Notes")),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {super.key, this.textAling = TextAlign.center, required this.title});

  final TextAlign textAling;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title * 10,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(),
      textAlign: textAling,
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(fontWeight: FontWeight.w600),
    );
  }
}

class ProjectPadding {
  static final EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);

  static final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeight {
  static final double buttonNormalHeight = 50;
}

class ProjectColors {
  static Color? backGrandColor = Colors.grey[200];
}
