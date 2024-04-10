import 'package:flutter/material.dart';
class MantraTile extends StatefulWidget {
  const MantraTile({super.key});

  @override
  State<MantraTile> createState() => _MantraTileState();
}

class _MantraTileState extends State<MantraTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.green),
            ),
            title: Text(
              "Navgraha Mantras",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            subtitle: Text(
              '9 mantras',
              style: TextStyle(color: Colors.white),
            ),
          );
  }
}