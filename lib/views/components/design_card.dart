import 'package:flutter/material.dart';
import 'package:smile_ai/models/design.dart';
import 'package:smile_ai/views/pages/design_detail.dart';

class DesignCard extends StatelessWidget {
  final Design design;
  const DesignCard({super.key, required this.design});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => DesignPage()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorScheme.secondary.withOpacity(0.05),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: colorScheme.secondary.withOpacity(0.2),
                  image: DecorationImage(
                    image: AssetImage(design.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Image.asset(design.imageUrl),
                // child: const Center(child: Icon(Icons.image, size: 48)),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              design.name,
              style: TextStyle(
                color: colorScheme.onBackground,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
