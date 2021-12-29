import 'package:contacts_app/library.dart';
import 'package:contacts_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:contacts_app/contactss.dart';
import 'package:simple_icons/simple_icons.dart';

class Conts extends StatefulWidget {
  final Library library;
  Conts({Key? key, required this.library}) : super(key: key);

  @override
  State<Conts> createState() => _ContsState();
}

class _ContsState extends State<Conts> {
  @override
  Widget build(BuildContext context) {
    final Library library = widget.library;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios_new),
        title: const Text('Contacts'),
        centerTitle: true,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.edit),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.delete),
          ),
           Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(library.name),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(library.image,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 28.0),
                  child: Text(library.email),
                )
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade500,
            width: MediaQuery.of(context).size.width,
            height: 2,
          ),
          ListTile(
            title: const Text('Mobile',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            subtitle: Text(library.number),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      size: 25,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message_sharp,
                      size: 25,
                    ))
              ],
            ),
          ),
          ListTile(
            title: const Text('Video Call',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            // subtitle: Text(library.location),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.video_call_rounded,
                  size: 30,
                )),
          ),
          Container(
            color: white,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Accounts',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade500,
            width: MediaQuery.of(context).size.width,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(onPressed: (){}, 
                icon: const Icon(
                  SimpleIcons.google,
                  color: Color.fromRGBO(66, 133, 244, 1),
                  size: 35)
                ),
                IconButton(onPressed: (){}, 
                icon: const Icon(
                  SimpleIcons.whatsapp,
                  color: Colors.green,
                  size: 35)
                ),
                IconButton(onPressed: (){}, 
                icon: const Icon(
                  SimpleIcons.linkedin,
                  color: Colors.blue,
                  size: 35)
                ),
            ],),
          ),
          // ListTile(
          //   title: Text('Telegram',
          //       style: TextStyle(
          //         fontWeight: FontWeight.w600,
          //       )),
          //   // subtitle: Text('khalijonez777@gmial.com'),
          //   trailing: IconButton(
          //       onPressed: () {},
          //       icon: Icon(
          //         SimpleIcons.telegram,
          //         color: Colors.blue,
          //         size: 17,
          //       )),
          // ),
          // ListTile(
          //   title: Text('WhatsApp',
          //       style: TextStyle(
          //         fontWeight: FontWeight.w600,
          //       )),
          //   // subtitle: Text('khalijonez777@gmial.com'),
          //   trailing: IconButton(
          //       onPressed: () {},
          //       icon: Icon(
          //         SimpleIcons.whatsapp,
          //         color: Colors.green,
          //         size: 17,
          //       )),
          // ),
          Container(
            color: white,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'More',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade500,
            width: MediaQuery.of(context).size.width,
            height: 2,
          ),
          ListTile(
            title: Text(library.location,
                ),
          ),
          const ListTile(
            title: Text('Share Contact',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
          ),
        ],
      ),
    );
  }
}
