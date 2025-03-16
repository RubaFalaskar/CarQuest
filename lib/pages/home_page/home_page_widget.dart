import 'package:flutter/material.dart';

import '../../flutter_flow/flutter_flow_theme.dart';
import 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(),
        title: const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.2, 22.0, 0.0, 0.0),
        ),
      ),
      drawer: Drawer(
        elevation: 2,
        surfaceTintColor: Colors.black,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.teal, Colors.indigo],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  color: const Color(0xFF526C70),
                  borderRadius: BorderRadius.circular(10)),
              accountName: const Text('Sara'),
              accountEmail: const Text('sara@example.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('S'),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.edit,
                color: Color(0xFF526C70),
              ),
              title: const Text('Edit Account Information'),
              onTap: () {
                // Navigate to edit account page
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.chat,
                color: Color(0xFF526C70),
              ),
              title: const Text('Chat With AI CarQuest'),
              onTap: () {
                // Navigate to chat page
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_mail,
                color: Color(0xFF526C70),
              ),
              title: const Text('Contact us'),
              onTap: () {
                // Navigate to contact us page
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Color(0xFF526C70),
              ),
              title: const Text('Log out'),
              onTap: () {
                // Perform logout
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome To CarQuest ',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Roboto Condensed',
                  color: const Color(0xFF143969),
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/as.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  const Positioned(
                    left: 10,
                    bottom: 60,
                    child: Text(
                      'Discover your ideal car effortlessly',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Explore our suggestion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const CarSuggestionList(),
              const SizedBox(height: 20),
              const Text(
                'Explore our New Car',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const CarSuggestionList(),
            ],
          ),
        ),
      ),
    );
  }
}