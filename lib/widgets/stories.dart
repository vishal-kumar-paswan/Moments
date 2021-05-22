import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: double.infinity,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Ink(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFE0E5FF),
              ),
              child: Icon(
                Icons.add,
                color: Color(0xFFF2633FF),
                size: 30,
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Ink(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFE0E5FF),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Ink(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFE0E5FF),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Ink(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFE0E5FF),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Ink(
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFE0E5FF),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Ink(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFE0E5FF),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
