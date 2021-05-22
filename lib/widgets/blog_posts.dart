import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogPosts extends StatelessWidget {
  const BlogPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade100,
            ),
            height: 215,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      height: 45.0,
                      width: 45.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        ),
                      ),
                    ),
                    title: Text(
                      'Nathan Fox',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '4 mins ago',
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                    ),
                  ),
                  Text(
                    'Working on a large project, I was thinking about potential features and tools that could be added to Figma. One of them is Breakpoints.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 12),
                    child: Container(
                      height: 0.5,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFE0E5FF),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 30.0,
                        width: 65.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.heart_fill,
                              color: Color(0xFF2663FF),
                              size: 18,
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              'Like',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2663FF),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 30.0,
                        width: 105.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.grey.shade600,
                              size: 18,
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              'Comment',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade100,
            ),
            height: 235,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      height: 45.0,
                      width: 45.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        ),
                      ),
                    ),
                    title: Text(
                      'Connie Lane',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '15 hours ago',
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                    ),
                  ),
                  Text(
                    'Putting an exact expiry date on Python would be so much speculation, it might as well as Science-Fiction. Instead, I will assess the virtues that are boosting Python\'s popularity right now, and the weak points that will break it in the future.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 12),
                    child: Container(
                      height: 0.5,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFE0E5FF),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 30.0,
                        width: 65.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.heart_fill,
                              color: Colors.grey.shade600,
                              size: 18,
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              'Like',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 30.0,
                        width: 105.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.grey.shade600,
                              size: 18,
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              'Comment',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
