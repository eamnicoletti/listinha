import 'package:flutter/material.dart';
import 'package:listinha/src/shared/services/realm/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskBoard board;

  const TaskCard({Key? key, required this.board}) : super(key: key);

  double getProgress(List<Task> tasks) {
    final completes = tasks.where((task) => task.completed).length;
    return completes / tasks.length;
  }

  String getProgressText(List<Task> tasks) {
    final completes = tasks.where((task) => task.completed).length;
    return '$completes/${tasks.length}';
  }

  @override
  Widget build(BuildContext context) {
    final progres = getProgress(board.tasks);
    final progressText = getProgressText(board.tasks);
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
          LinearProgressIndicator(
            value: progres,
            color: color,
          ),
          Text(progressText),
        ],
      ),
    );
  }
}
