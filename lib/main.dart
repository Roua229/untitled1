import 'package:flutter/material.dart';
import 'report_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CMax_rapport'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'), // Remplacez 'your_image.png' par le chemin de votre image PNG
            SizedBox(height: 20), // Ajoute un espace entre l'image et le texte
            Text('Bienvenue dans CMax_rapport !'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Rapport'),
              onTap: () {
                // Naviguer vers la page de rapport
                Navigator.pop(context); // Fermer le tiroir
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportPage()),
                );
              },
            ),
            ListTile(
              title: Text('Aide'),
              onTap: () {
                // Naviguer vers la page d'aide
                Navigator.pop(context); // Fermer le tiroir
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aide'),
        backgroundColor: Colors.blue, // Définir la couleur de l'arrière-plan de la barre d'appbar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CMax_Rapport est une application mobile qui centralise les résultats de test sans fil générés par la sonde FIP-435B et l\'application CMax 2 Mobile. Elle permet aux utilisateurs de stocker, visualiser et analyser facilement les rapports de test. Grâce à une interface utilisateur intuitive et des fonctionnalités avancées de gestion des rapports, CMax_Rapport simplifie le processus de collecte et d\'interprétation des données de test, permettant aux professionnels de prendre des décisions éclairées pour améliorer la qualité et la fiabilité de leurs réseaux.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
