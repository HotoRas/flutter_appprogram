import 'package:material_ui/material_ui.dart';

class LinkLikeTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const new(this.text, {super.key, this.onPressed});

  @override
  Widget build(BuildContext context) => TextButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
    ),
  );
}
