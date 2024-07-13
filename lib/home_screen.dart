import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt_outlined),
            ),
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                itemBuilder: (context) => const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Text('Logout'),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    title: Text('Kashif'),
                    subtitle: Text('where are you Mubashir'),
                    trailing: Text(
                      '3:50 PM',
                      style: TextStyle(fontSize: 14),
                    ),
                  );
                }),
                
 ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {

                  if(index == 0){
                        return  Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                            const  Text('New Updates'),
                              ListTile(
                               leading:Container(
                               decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3
                              )
                          ),
                           child: const CircleAvatar(
                              backgroundImage: NetworkImage('https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                             ),
                           ),
                            title:const Text('Kashif'),
                                                 subtitle: Text(index == 0 ? 'you missed audio call' : 'call time is 4:10 PM' ),
                                                ),
                            ],
                          ),
                        );
                  }else{

                  }

                  return  ListTile(
                    leading:Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3
                        )
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      ),
                    ),
                    title:const Text('Kashif'),
                    subtitle: Text(index == 0 ? 'you missed audio call' : 'call time is 4:10 PM' ),
                  );
                }
                ),     
                  ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return  ListTile(
                    leading:const CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/5384445/pexels-photo-5384445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    title:const Text('Kashif'),
                    subtitle: Text(index == 0 ? 'you missed audio call' : 'call time is 4:10 PM' ),
                    trailing: Icon(index / 2 == 0 ?  Icons.phone : Icons.video_call),
                  );
                }
                ),      
              ],
        ),
      ),
    );
  }
}
