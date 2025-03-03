import 'package:deliverrr/components/my_drawer_tile.dart';
import 'package:deliverrr/pages.dart/settings_page.dart';
import 'package:deliverrr/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final _authService = AuthService();
    _authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // app logo
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Icon(
                Icons.lock_open,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),

            // home list tile
            MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),

            // settings list tile
            MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),

            // Spacer(),
            const SizedBox(
              height: 400,
            ),
            // logout list tile
            MyDrawerTile(
              text: "L O G O U T",
              icon: Icons.logout,
              onTap: () {},
            ),

            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
