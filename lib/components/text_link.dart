import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextLink extends StatelessWidget {
  final String text;
  final String link;
  final double fontSize;

  const TextLink({Key key, this.text, @required this.link, this.fontSize = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text != null ? text : link,
            style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                fontSize: fontSize,
                fontFamily: 'montserrat',
                fontWeight: FontWeight.w400),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(link);
              },
          )
        ],
      ),
    );
  }
}

// Column(
//           children: <Widget>[
//             TextLink(
//               text: 'Material Design',
//               link: 'https://flutter.dev/docs/development/ui/widgets/material',
//             ),
//             SizedBox(height: 20),
//             TextLink(
//               text: 'Material Design',
//               link: 'https://flutter.dev/docs/development/ui/widgets/cupertino',
//             ),
//           ],
//         ),
