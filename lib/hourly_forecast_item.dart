import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final String temperature;
  final IconData icon;
  final Color iconColor;

  const HourlyForecastItem({
    Key? key,
    required this.time,
    required this.temperature,
    required this.icon,
    this.iconColor = const Color.fromARGB(255, 12, 52, 233),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 165, 185, 66),
          ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                color: Color.fromARGB(255, 64, 9, 230),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Icon(
              icon,
              size: 32,
              color: iconColor,
            ),
            const SizedBox(height: 8),
            Text(temperature,
            style: const TextStyle(
                color: Color.fromARGB(255, 173, 213, 11),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
      ),
    );
  }
}
