import 'package:contacts_app/library.dart';
import 'package:contacts_app/library.dart';
import 'package:contacts_app/more.dart';
import 'package:flutter/material.dart';

class Recents extends StatelessWidget {
  final Library library;
  final Function ontap;
  const Recents({Key? key, required this.library, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ontap();
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(library.name),
            ),
            title: Text(library.image),
            subtitle: Text(library.number),
            trailing: const Icon(Icons.call),
          ),
        ),
        Divider(color: Colors.black,), 
      ],
    );
  }
}
