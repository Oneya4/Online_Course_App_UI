import 'package:flutter/material.dart';
import 'package:online_course_app_ui/helpers/box_clipper.dart';

class CourseDetailScreen extends StatelessWidget {
  static const routeName = 'detail-screen';
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              height: dSize.height * .38,
              width: dSize.width,
              child: ClipPath(
                clipper: BoxClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[400],
                    image: const DecorationImage(
                      image: AssetImage('assets/images/finance.png'),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: Theme.of(context).colorScheme.onPrimary,
                        iconSize: 25,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Details',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.bookmark_border_rounded),
                        color: Theme.of(context).colorScheme.onPrimary,
                        iconSize: 25,
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Saved to Bookmarks'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: dSize.height * .32,
              width: dSize.width,
              height: dSize.height - (dSize.height * .38),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.keyboard_arrow_up_rounded, size: 50),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Finance App & \nDashboard Design',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                          softWrap: true,
                        ),
                        Text(
                          '\$ 26.99',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton.icon(
                          icon: const Icon(Icons.star, color: Colors.amber),
                          label: const Text(
                            '4.9',
                            style: TextStyle(color: Colors.black45),
                          ),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 80),
                        const Text('\$ 2.8k enrolled'),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
                      child: Text(
                        'Description',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Text(
                        'Learn complete finance app & dashboard design system, we will show you how to make wireframe, prototype & UI design',
                        style: TextStyle(height: 1.5, fontSize: 15),
                      ),
                    ),
                    const Text('24 Lessons', style: TextStyle(fontSize: 20)),
                    _buildListTile(
                      Colors.deepOrange,
                      'Intro to the design',
                      '02:45',
                    ),
                    _buildListTile(
                      Colors.blueGrey,
                      'Perfect wireframe design',
                      '12:45',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildListTile(Color bgColor, String heading, String time) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      leading: CircleAvatar(
        backgroundColor: bgColor,
        radius: 25,
        child: const Icon(Icons.play_arrow),
      ),
      title: Text(heading),
      trailing: Text(time),
      onTap: () {},
      shape: const StadiumBorder(),
    );
  }
}
