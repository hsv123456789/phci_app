import 'package:flutter/material.dart';
import 'package:phci/page/people_page.dart';
import 'package:phci/page/user_page.dart';

class AppDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Beluga';
    final email = 'Beluga@begula.com';
    final UrlImage =
        'https://i.pinimg.com/474x/2a/d5/f8/2ad5f8a792483e7f4524b35847477160.jpg';
    return Drawer(
      child: Material(
        color: Color.fromRGBO(29, 191, 193, 1),
        child: ListView(
          padding: padding,
          children: [
            buildHeader(
                urlImage: UrlImage,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UserPage(
                          name: name,
                          urlImage: UrlImage,
                        )))),
            const SizedBox(height: 48),
            buildSearchField(),
            const SizedBox(height: 24),
            buildMenuItem(
                text: 'People',
                icon: Icons.people,
                onclicked: () => selectedItem(context, 0)),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Favourites',
              icon: Icons.favorite_border,
              onclicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Workflow',
              icon: Icons.workspaces_outline,
              onclicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Updates',
              icon: Icons.update,
              onclicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Upcoming features',
              icon: Icons.upcoming,
              onclicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'About app',
              icon: Icons.menu_book_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    String urlImage,
    String name,
    String email,
    VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onclicked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: onclicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
    }
  }
}
