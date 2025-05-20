import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Widget/Flag Card Widget.dart';

class FinalAssignment extends StatefulWidget {
  const FinalAssignment({super.key});

  @override
  State<FinalAssignment> createState() => _FinalAssignmentState();
}

class _FinalAssignmentState extends State<FinalAssignment> {
  int getCrossAxisCount(double width) {
    if (width > 1024) return 4; // Desktop
    if (width <= 1024 && width > 768) return 3; // Tablet
    return 2; // Mobile
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = getCrossAxisCount(screenWidth);

    List<String> ImageLink = [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/2560px-Flag_of_Italy.svg.png",
      "https://images.unsplash.com/photo-1532375810709-75b1da00537c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmxhZ3xlbnwwfHwwfHx8MA%3D%3D",
      "https://media.istockphoto.com/id/1366452855/vector/bangladesh-national-flag-vektor-illustration.jpg?s=612x612&w=0&k=20&c=SPBIVX6ZwwpL7TELL-BJaL9lgq0e5WNZKooOhNNU9M8=",
"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Flag_of_Afghanistan_%282013%E2%80%932021%29.svg/800px-Flag_of_Afghanistan_%282013%E2%80%932021%29.svg.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1XMzMdyDg8IRUeWxTwackuNH5mU4_ZlZDTg&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZijuE6hj3ALefrHofx6U90sCUMfnoqi6Ug&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp495AMLUOgsvWSAbnj45K7ezeNCjuQxWnAw&s",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/2560px-Flag_of_Italy.svg.png",
      "https://images.unsplash.com/photo-1532375810709-75b1da00537c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmxhZ3xlbnwwfHwwfHx8MA%3D%3D",
      "https://media.istockphoto.com/id/1366452855/vector/bangladesh-national-flag-vektor-illustration.jpg?s=612x612&w=0&k=20&c=SPBIVX6ZwwpL7TELL-BJaL9lgq0e5WNZKooOhNNU9M8=",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Flag_of_Afghanistan_%282013%E2%80%932021%29.svg/800px-Flag_of_Afghanistan_%282013%E2%80%932021%29.svg.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1XMzMdyDg8IRUeWxTwackuNH5mU4_ZlZDTg&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZijuE6hj3ALefrHofx6U90sCUMfnoqi6Ug&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp495AMLUOgsvWSAbnj45K7ezeNCjuQxWnAw&s",
    ];
    List<String> CountryName = [
      "Italy",
      "INDIA",
      "Bangladesh",
      "Afghanistan",
      "America",
      "Germmany",
      "Canada",
      "Italy",
      "INDIA",
      "Bangladesh",
      "Afghanistan",
      "America",
      "Germmany",
      "Canada"
    ];
    List<String> Currency = [
      "Euro",
      "Rupay",
      "Taka",
      "Afgani",
      "Dollar",
      'Euro',
      "Dollar",
      "Euro",
      "Rupay",
      "Taka",
      "Afgani",
      "Dollar",
      'Euro',
      "Dollar"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment of Flag"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: EdgeInsets.all(2.w),
        child: GridView.builder(
          itemCount: ImageLink.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 2.w,
            mainAxisSpacing: 2.h,
          ),
          itemBuilder: (context, index) {
            return Flag_Card(
                ImageLink: ImageLink[index],
                CountryName: CountryName[index],
                Currency: Currency[index]);
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://scontent.fdac149-1.fna.fbcdn.net/v/t39.30808-6/491249020_1086178766969446_7625049937608524228_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHGlV_Jdq_NjhNfX3S71Y7RH1Py8nE6tSUfU_LycTq1JSj5maoCqpYm6BVEEqpuSBhUmm_O0IjTJlj5r4pjTWVK&_nc_ohc=fTWsGC-26pIQ7kNvwGFNre9&_nc_oc=AdlINy5FuG2Uh45hhTchc8hoVzguj41mkXPrMvXld1kki72-oMNlrXllRkkQ9LJ_cKs&_nc_zt=23&_nc_ht=scontent.fdac149-1.fna&_nc_gid=AzoFvMaM5YixnPTbmVxM4A&oh=00_AfLwMq6Ca5Vs66enuGPHBwiqPL6n3YHEhbhiY__rLK_BIQ&oe=683285AC"),
                ),
                    Text("Name: Sadid Ahammed"),
                    Text("Email: saadid.0000@gmail.com")
              ],
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home Menu"),
              subtitle: Text("List of all flags"),
            )
          ],
        ),
      ),
    );
  }
}
