import 'package:flutter/material.dart';

class Folder extends StatelessWidget {
  final String folderTitle;
  final Color folderColor;
  Folder(this.folderTitle, this.folderColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Icon(
              Icons.folder,
              color: folderColor,
              size: MediaQuery.of(context).size.width * 0.32,
            ),
            Text(
              folderTitle,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 16,
                color: Color(0xff6E7274),
              ),
            )
          ],
        ),
      ),
    );
  }
}
