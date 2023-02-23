import 'package:flutter/material.dart';
import 'package:listinha/src/shared/services/realm/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskBoard board;

  const TaskCard({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const progres = 0.5;
    const progressText = '1/5';
    final title = board.title;
    const statusText = 'Pendente';
    const iconData = Icons.access_alarm;

    final backgroundColor = Colors.red[50];
    const color = Colors.redAccent;

    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(iconData),
              Spacer(),
              Text(statusText),
            ],
          ),
          const Spacer(),
          Text(title),
          const LinearProgressIndicator(
            value: progres,
            color: color,
          ),
          const Text(progressText),
        ],
      ),
    );
  }
}
