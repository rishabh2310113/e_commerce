import 'package:flutter/material.dart';

void main() => runApp(ProfilePage());

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ECommerceProfilePage(),
    );
  }
}

class ECommerceProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Account"),
        backgroundColor: Colors.amber,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30.0),
                ),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/Port.jpeg'),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Rishabh Ranjan',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'rishabhranjan379@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            ProfileMenuItem(
              icon: Icons.shopping_bag_outlined,
              title: "My Orders",
              onPressed: () {},
            ),
            ProfileMenuItem(
              icon: Icons.location_on_outlined,
              title: "My Addresses",
              onPressed: () {},
            ),
            ProfileMenuItem(
              icon: Icons.payment_outlined,
              title: "Payment Methods",
              onPressed: () {},
            ),
            ProfileMenuItem(
              icon: Icons.favorite_border,
              title: "Wishlist",
              onPressed: () { },
            ),
            ProfileMenuItem(
              icon: Icons.notifications_outlined,
              title: "Notifications",
              onPressed: () {},
            ),
            ProfileMenuItem(
              icon: Icons.settings_outlined,
              title: "Account Settings",
              onPressed: () {},
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const ProfileMenuItem({
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepOrange, size: 28.0),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 18.0),
      onTap: onPressed,
    );
  }
}