import 'package:flutter/material.dart';

import 'app.dart';

class home extends StatelessWidget {
  const home({super.key});
  final List<String> imgUrl = const ['assets/img/img.png', 'assets/img/img_two.png','assets/img/img_three.png','assets/img/img.png'];
  final List<String> title = const [
    'Full Stack Web Development with JavaScript',
    'Full Stack Web Development with Python, Django & React',
    'Full Stack Web Development with ASP.Net',
    'SQA: Manual & Automated Testing'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.65, // Adjusted to fit content vertically
          ),
          itemBuilder: (context, index) {
            return CardView(img: imgUrl[index],);
          },
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  final String img;
  const CardView({super.key,required this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Top banner section
          Container(
            decoration: const BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Image.asset(img),
          ),
          // Chips row
          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      'ব্যাচ ১১',
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                  SizedBox(width: 5,),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.event_seat, size: 8),
                        SizedBox(width: 4),
                        Text(
                          '৬ সিট বাকি',
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.watch_later_outlined, size: 8),
                        SizedBox(width: 4),
                        Text(
                          '৬০ মিনিট',
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                ],               ),
            ),
          ),
          // Title
          SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              'Full Stack Web Development with Python, Django & React',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          // Button
          SizedBox(height: 18,),
          Padding(
            // position :bottom
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: ElevatedButton(
              onPressed: () {
                // Add navigation or action here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text('বিস্তারিত দেখুন →'),
            ),
          ),
        ],
      ),
    );
  }
}
