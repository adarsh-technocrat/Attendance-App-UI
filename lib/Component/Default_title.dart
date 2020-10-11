import 'package:flutter/material.dart';

class DefaultTitle extends StatelessWidget {
  final String title;

  const DefaultTitle({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ]),
              )),
        ],
      ),
    );
  }
}
