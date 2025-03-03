import 'package:flutter/material.dart';
import 'package:project_app/Core/utils/assets_images.dart';
import 'package:project_app/Feuatures/notification/view/widget/app_bar_notification.dart';
import 'package:project_app/Feuatures/notification/view/widget/container_notification.dart';

import '../../profile/view/widget/container_appointment.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
decoration: BoxDecoration(
  image: DecorationImage(image: AssetImage(Assets.background),fit: BoxFit.cover)
),child:SafeArea(
  child: const Column(
  children: [
    AppBarNotification(),
    const SizedBox(height: 45),
    ContainerAppointment(),
    const SizedBox(height: 35),
    ContainerNotification()
  ],
      ),
),
    );
  }
}
