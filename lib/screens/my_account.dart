import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 10.0,
      ),
      child: Column(
        children: [
          Container(
            height: 110,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1614204424926-196a80bf0be8?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ilona Pyanch',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'San Francisco, CA',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Software Engineer at Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                )
              ],
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
            height: 70.0,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '2',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    Text(
                      'Blogs',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '96',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '71',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100,
                  ),
                  height: 218,
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
                                'https://images.unsplash.com/photo-1614204424926-196a80bf0be8?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                              ),
                            ),
                          ),
                          title: Text(
                            'Ilona Pyanch',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            '16 mins ago',
                          ),
                          trailing: Icon(
                            Icons.more_horiz,
                          ),
                        ),
                        Text(
                          'While this method does work everywhere for TypeScript, it won\'t work for JavaScript without a bundler (especially NodeJS). For NodeJS one could use NODE_PATH=./src node index.js to achieve similar results.',
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
                  height: 200,
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
                                'https://images.unsplash.com/photo-1614204424926-196a80bf0be8?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                              ),
                            ),
                          ),
                          title: Text(
                            'Ilona Pyanch',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            '23 hours ago',
                          ),
                          trailing: Icon(
                            Icons.more_horiz,
                          ),
                        ),
                        Text(
                          'console.trace() is also nice for debugging, clue is in the name, it outputs the stack trace to console. :)',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
