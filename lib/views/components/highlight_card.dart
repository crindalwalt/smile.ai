import 'package:flutter/material.dart';
import 'package:smile_ai/models/prompt.dart';

class HighlightCard extends StatelessWidget {
  Prompt prompt;
  HighlightCard({super.key, required this.prompt});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/300/200"),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            prompt.name,
            style: TextStyle(
              color: colorScheme.onPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              prompt.label == null ? "Try now" : prompt.label!,
              style: TextStyle(color: colorScheme.onPrimary, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
