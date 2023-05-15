// main.dart
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';



class cooperatives extends StatefulWidget {
  const cooperatives({Key? key}) : super(key: key);

  @override
  State<cooperatives> createState() => _cooperativesState();
}

class _cooperativesState extends State<cooperatives> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "CoopA", "age": 29},
    {"id": 2, "name": "CoopB", "age": 40},
    {"id": 3, "name": "CoopC", "age": 5},
    {"id": 4, "name": "CoopD", "age": 35},
    {"id": 5, "name": "CoopE", "age": 21},
    {"id": 6, "name": "CoopF", "age": 55},
    {"id": 7, "name": "CoopG", "age": 30},
    {"id": 8, "name": "CoopH", "age": 14},
    {"id": 9, "name": "CoopI", "age": 100},
    {"id": 10, "name": "CoopJ", "age": 32},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0XFF00B686),
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.search),
            label: 'Search',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),
            label: 'Personal',
          ),
        ],
        onTap: (index) {
          // Handle button tap
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Color(0XFF00B686),
                    shape: BoxShape.rectangle),

                child:Row(children: [
                  Column(
                    children: [Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(top: 15, left: 20),
                      child: Image.asset("assets/logo.png", width: 100, height: 100,),
                    )],
                  ),
                  Column(children: [
                    Center(child:  Container(
                      width: 100,
                      height: 50,
                      margin: EdgeInsets.only(top: 45, left: 58),
                      child: Text('USAN',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

                    ),

                    )
                  ],
                  ),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.only(top: 30, left: 70),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.notifications_outlined),

                    )
                  ],)

                ],)

              //appbar

            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                onChanged: (value) => _runFilter(value),
                decoration: const InputDecoration(
                  
                    labelText: 'Rechercher une cooperative', suffixIcon: Icon(Icons.search)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Container(
              child: Expanded(
                child: _foundUsers.isNotEmpty
                    ? ListView.builder(
                  itemCount: _foundUsers.length,
                  itemBuilder: (context, index) => Card(
                    key: ValueKey(_foundUsers[index]["id"]),
                    color: Color(0XFF00B686).withOpacity(0.25),
                    elevation: 8,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Text(
                        _foundUsers[index]["id"].toString(),
                        style: const TextStyle(fontSize: 24),
                      ),
                      title: Text(_foundUsers[index]['name'], style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text( ' nombre de transactions:   '
                          '${_foundUsers[index]["age"].toString()}',style: TextStyle(fontStyle: FontStyle.italic),),

                    ),
                  ),
                )
                    : const Text(
                  'Aucun résultat trouvé',
                  style: TextStyle(fontSize: 24, color: Color(0XFF00B686)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

