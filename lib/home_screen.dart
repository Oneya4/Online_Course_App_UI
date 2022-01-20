import 'package:flutter/material.dart';
import 'package:online_course_app_ui/course_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          children: [
            SizedBox(
              height: 350,
              width: dWidth,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 5, 30),
                    width: (dWidth * .5) - 16,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange[400],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.elliptical(690, 170),
                        bottomRight: Radius.elliptical(0, 280),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Hello Dash-er 👋🏾',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Find Your Course',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 100),
                        Text(
                          '25.6k + Courses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 30),
                    width: (dWidth * .5) - 16,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange[400],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.elliptical(690, 170),
                        bottomLeft: Radius.elliptical(0, 40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/images/top-image.png',
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                  height: 220,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(10, 30),
                      topRight: Radius.elliptical(580, 200),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Drawing',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '26 Courses',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'assets/images/painting.png',
                        height: 100,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                  height: 220,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.indigo[400],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(580, 200),
                      topRight: Radius.elliptical(10, 30),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'UI/UX',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '50 Courses',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'assets/images/painting.png',
                        height: 100,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text(
                'Popular Courses',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              tileColor: Colors.grey[100],
              onTap: () {
                Navigator.of(context).pushNamed(CourseDetailScreen.routeName);
              },
              leading: Image.asset('assets/images/finance.png', width: 150),
              title: const Text(
                'Finance App & Dashboard Design',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.video_library_rounded),
                      SizedBox(width: 10),
                      Text('24 Lessons'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                        icon: const Icon(Icons.star, color: Colors.amber),
                        label: const Text(
                          '4.9',
                          style: TextStyle(color: Colors.black45),
                        ),
                        onPressed: () {},
                      ),
                      const Text('\$ 26.99'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks), label: 'Bookmarks'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded), label: 'Shopping'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_rounded), label: 'Timeline'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
          ],
          currentIndex: 2,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
        ),
      ),
    );
  }
}
