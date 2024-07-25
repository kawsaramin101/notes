import 'package:flutter/material.dart';

class SettingsDialog extends StatefulWidget {
  const SettingsDialog({super.key});

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      contentPadding: const EdgeInsets.all(0),
      actionsPadding: const EdgeInsets.fromLTRB(16.0, 12.0, 0.0, 16.0),
      titleTextStyle: const TextStyle(fontSize: 20.0),
      title: const Center(child: Text("Settings")),
      content: SizedBox(
        width: 500.0,
        height: 400.0,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            children: [
              Text("Theme mode"),
              Text("Download Data"),
              Text("Uplaod Data"),
              Text("Delete all data")
            ],
          ),
        ),
      ),
      actionsAlignment: MainAxisAlignment.start,
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Save",
          ),
        ),
        ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Defaults',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey[800],
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
