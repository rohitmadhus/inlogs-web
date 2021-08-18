import 'package:flutter/material.dart';
import 'package:inlogsweb/models/blog.dart';
import 'package:inlogsweb/styles/textstyle.dart';

class BlogWidget extends StatelessWidget {
  final Blog blog;
  const BlogWidget({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  blog.getImageLink,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 12.0, right: 12.0),
              child: headingText(blog.getTitle),
            )),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 12.0, right: 12.0),
              child: bodyTextWidget(blog.getContent),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    child: GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 12.0, right: 12.0),
                          child: linkTextWidget(),
                        ))),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
