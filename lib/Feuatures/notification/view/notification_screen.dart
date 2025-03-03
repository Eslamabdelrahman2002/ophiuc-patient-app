import 'package:flutter/material.dart';
import 'package:project_app/Feuatures/notification/view/notification_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotificationBody(),
    );
  }
}
