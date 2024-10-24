import 'package:flutter/material.dart';
import 'package:myapp/widgets/custom-appbar.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Your Progress'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Course Progress',
            ),
            SizedBox(height: 20),
            _buildProgressItem(context, 'Design Art', 0.7),
            _buildProgressItem(context, 'Programming', 0.5),
            _buildProgressItem(context, 'Mathematics', 0.3),
            _buildProgressItem(context, 'Physics', 0.8),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressItem(BuildContext context, String courseName, double progress) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(courseName, ),
        SizedBox(height: 8),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        SizedBox(height: 8),
        Text('${(progress * 100).toInt()}% Complete'),
        SizedBox(height: 16),
      ],
    );
  }
}