import 'package:flutter/material.dart';
import 'package:smile_ai/models/category.dart';
import 'package:smile_ai/models/design.dart';
import 'package:smile_ai/models/prompt.dart';
import 'package:smile_ai/views/components/design_card.dart';
import 'package:smile_ai/views/components/highlight_card.dart';
import 'package:smile_ai/views/pages/create_design.dart';
import 'package:smile_ai/views/pages/setting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.mouse),
        title: Text(
          "Smile.AI",
          style: TextStyle(
            color: colorScheme.onBackground,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingProfilePage()),
                );
              },
              icon: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  "Create stunning images with ready-made prompts",
                  style: TextStyle(color: colorScheme.secondary, fontSize: 14),
                ),
                const SizedBox(height: 24),

                /// Highlights Carousel
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: promptList.length,
                    itemBuilder: (context, index) {
                      Prompt prompt = promptList[index];
                      return HighlightCard(prompt: prompt);
                    },
                  ),
                ),
                const SizedBox(height: 24),

                /// Categories
                Text(
                  "Categories",
                  style: TextStyle(
                    color: colorScheme.onBackground,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      Category category = categories[index];
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: category.bgColor != null
                              ? category.bgColor
                              : colorScheme.secondary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            category.name,
                            style: TextStyle(
                              color: colorScheme.onBackground,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),

                /// Prompt Examples Grid
                Text(
                  "Prompt Examples",
                  style: TextStyle(
                    color: colorScheme.onBackground,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: fakeDesignData.length,
                  itemBuilder: (context, index) {
                    final design = fakeDesignData[index];
                    // design cards hre
                    return DesignCard(design: design);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CreateDesignPage()),
          );
        },
        child: Icon(Icons.draw),
      ),
    );
  }
}
