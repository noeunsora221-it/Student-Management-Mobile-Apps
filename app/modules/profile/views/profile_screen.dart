import 'package:flutter/material.dart';
import '/app/modules/dashboard/views/dashboard_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active_rounded,
              size: 30,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardScreen(),
                ),
              );
            },
            icon: Icon(Icons.assignment, size: 30, color: Colors.red),
          ),
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/736x/6c/bf/24/6cbf243664a534a2098934ccf1f2bf51.jpg",
            ),
          ),
        ],
        title: Text(
          "Profile Screen",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // cover Backgrounds

            // User Name

            // Information Cards

            // Edit Buttons
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 260,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/b9/48/f7/b948f789ddfb04a66870dc96ca646dae.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const Positioned(
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 66,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        "https://i.pinimg.com/736x/10/d3/88/10d388147e504490249e897c6c914b21.jpg",
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // USER NAME
            const SizedBox(height: 25),
            const Text(
              "SAM SOPHAL",
              style: TextStyle(
                fontSize: 37,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Software development",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),
            // Information card
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          size: 30,
                          color: Colors.blue,
                        ),
                        title: Text("Email"),
                        subtitle: Text("sophalsam04@gmail.com"),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.phone,
                          size: 30,
                          color: Colors.blue,
                        ),
                        title: Text("Phone"),
                        subtitle: Text("015975701 / 066916708"),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: Colors.blue,
                        ),

                        title: Text("Locations"),
                        subtitle: Text(
                          "Sonkat Tlek Thla, Khan 7Makara, Phnom Penh",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),

                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.description,
                          size: 30,
                          color: Colors.blue,
                        ),
                        title: Text("Descriptions"),
                        subtitle: Text(
                          "He's a students of Norton University Department Software development Year 3. I Love Mobile Apps developments",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
