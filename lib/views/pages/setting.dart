import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smile_ai/providers/authentication_provider.dart';
import 'package:smile_ai/providers/theme_provider.dart';
import 'package:smile_ai/views/pages/login.dart';

// main class
class SettingProfilePage extends StatefulWidget {
  @override
  State<SettingProfilePage> createState() {
    return _SettingProfilePageState();
  }
}

// state class
class _SettingProfilePageState extends State<SettingProfilePage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthenticationProvider>(context);

    final themeProvider = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile & Settings",
          style: TextStyle(color: theme.colorScheme.onBackground),
        ),
        backgroundColor: theme.colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: theme.colorScheme.onBackground),
      ),
      backgroundColor: theme.colorScheme.background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Profile Section
            Row(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
                  child: Icon(
                    Icons.person,
                    color: theme.colorScheme.primary,
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shahzad Farooq",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                      Text(
                        "shahzad@example.com",
                        style: TextStyle(
                          fontSize: 14,
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: theme.colorScheme.primary),
                  onPressed: () {},
                ),
              ],
            ),

            const SizedBox(height: 24),

            /// Settings Section
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onBackground,
              ),
            ),

            const SizedBox(height: 12),

            Card(
              color: theme.colorScheme.background,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 1,
              child: Column(
                children: [
                  SwitchListTile(
                    title: Text(
                      "Dark Mode",
                      style: TextStyle(color: theme.colorScheme.onBackground),
                    ),
                    secondary: Icon(
                      Icons.dark_mode,
                      color: theme.colorScheme.primary,
                    ),
                    value: themeProvider.mode == ThemeMode.light ? false : true,
                    onChanged: (val) {
                      setState(() {
                        print("switch if $val");
                        themeProvider.changeTheme(val);
                      });
                    },
                  ),
                  Divider(color: theme.colorScheme.secondary.withOpacity(0.3)),
                  SwitchListTile(
                    title: Text(
                      "Notifications",
                      style: TextStyle(color: theme.colorScheme.onBackground),
                    ),
                    secondary: Icon(
                      Icons.notifications,
                      color: theme.colorScheme.primary,
                    ),
                    value: true,
                    onChanged: (val) {},
                  ),
                  Divider(color: theme.colorScheme.secondary.withOpacity(0.3)),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: theme.colorScheme.onBackground),
                    ),
                    onTap: () {
                      // logging out

                      auth.logoutFromAccount();

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Logout successfully "),
                          backgroundColor: Colors.green,
                        ),
                      );

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Created Designs Section
            Text(
              "Your Designs",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onBackground,
              ),
            ),

            const SizedBox(height: 12),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemCount: 6, // Example: 6 saved designs
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                            color: theme.colorScheme.primary.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.image,
                            color: theme.colorScheme.primary,
                            size: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Design #${index + 1}",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: theme.colorScheme.onBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
