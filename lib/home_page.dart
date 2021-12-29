import 'package:contacts_app/contactss.dart';
import 'package:contacts_app/library.dart';
import 'package:contacts_app/more.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';

class CallLogs extends StatelessWidget {
  const CallLogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor:Colors.grey.shade200,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 9.0),
          child: Text(
            'Contacts',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
          ),
        ),
        actions: [
           IconButton(
          onPressed: (){},
             icon: const Icon(Icons.add, size: 25,)),
             
             IconButton(
          onPressed: (){},
             icon: const Icon(Icons.more_vert, size: 25,)),
        ]
            ),
           
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          scrollDirection: Axis.vertical,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search contacts & call logs', 
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: const [
                  Text(
                    'Favorites',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:8.0),
                    child: Icon(Icons.star, color: Colors.amber,),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(3, (index) {
                  return Recents(
                      library: librarylist[index],
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conts(
                                      library: librarylist[index],
                                    )));
                      });
                }),
              ),
            ),
            const Text('Contacts',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200)),
           const Text(
              '#',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.end,
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(librarylist.length, (index) {
                  return Recents(
                      library: librarylist[index],
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conts(
                                      library: librarylist[index],
                                    )));
                      });
                }),
              ),
            ),
            // const Text(
            //   'B',
            //   style: TextStyle(
            //     fontWeight: FontWeight.w300,
            //   ),
            //   textAlign: TextAlign.end,
            // ),
            // SingleChildScrollView(
            //   child: Column(
            //     children: List.generate(4, (index) {
                 
            //       return Recents(
            //           library: librarylist[index],
            //           ontap: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => Conts(
            //                           library: librarylist[index],
            //                         )
            //                         )
            //                         );
            //           });
            //     }),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
