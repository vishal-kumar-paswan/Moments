import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moments/widgets/blog_posts.dart';
import 'package:moments/widgets/stories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stories(),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Blogs',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              Icon(
                Icons.tune,
                color: Color(0xFFF2666FF),
                size: 28.0,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          BlogPosts(),
        ],
      ),
    );
  }
}
