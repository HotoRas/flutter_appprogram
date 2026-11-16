import 'package:material_ui/material_ui.dart';

class LoginInput extends StatelessWidget {
  final String inputHint;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType? kbdType;
  const new(this.inputHint, {super.key, this.isPassword = false, required this.controller, this.kbdType});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 25),
    child: TextField(
      keyboardType: kbdType,
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200)),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: inputHint,
        hintStyle: TextStyle(color: Colors.grey[500]),
      ),
    ),
  );
}

class LoginContainer extends StatelessWidget {
  final double width, radius;
  final double? height;
  final Color? bgColor;
  final String? imagePath;
  final Icon? icon;
  const new({super.key, required this.width, this.height, this.bgColor, this.imagePath, this.radius = 6, this.icon});

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    height: height ?? width,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(radius),
      color: bgColor,
      image: imagePath != null ? DecorationImage(image: AssetImage(imagePath!), fit: BoxFit.fill) : null,
    ),
    child: icon,
  );
}

class GreyText extends StatelessWidget {
  final String content;
  final double? size;
  final FontWeight? weight;
  const new(this.content, {super.key, this.size, this.weight});

  @override
  Widget build(BuildContext context) => Text(
    content,
    style: TextStyle(color: Colors.grey[700], fontSize: size, fontWeight: weight),
  );
}
