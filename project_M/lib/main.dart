import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Project-M', home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _selectedIndex = 0;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SizedBox(
                  height: 35,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      
                      hintText: 'Search...', //TODO 추후에 고치자.
                      suffixIcon: IconButton(
                        icon:const Icon(Icons.clear, color: Colors.black, ),
                        onPressed: () => _searchController.clear(),
                      ),
                      prefixIcon: IconButton(
                        icon:const Icon(Icons.search, color: Colors.black,),
                        onPressed: () {
                          // 유저 프로필을 클릭 했을 때 동작..
                        },
                      )
                    )
                  ),
                ),
              ),
            ),
            IconButton(
                  iconSize: 35,
                  icon:const Icon(Icons.person_pin, color: Colors.black,),
                  onPressed: () {
                    // perform the search here.
                  },
            )
          ],
        ),
      ),
      body: Column(
        children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("날씨 정보 UI Widget "),
              Text("오늘 날짜"),
            ],
          ),
           const Text("dddd"),
           const Text("dddd")
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex, // 현재 선택 된 Index
        onTap: (int index) => {
          setState(() {
            _selectedIndex = index;
          })
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Today',
            icon: Icon(Icons.newspaper_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Showping',
            icon: Icon(Icons.store_mall_directory_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Contents',
            icon: Icon(Icons.menu_book_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.star),
          ),
        ],
      ),
    );
  }
}
