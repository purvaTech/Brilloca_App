import 'package:flutter/cupertino.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  const BackgroundImage({Key? key,required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage('assets/image/background.png'),
          )),
      child: child,
    );
  }
}
