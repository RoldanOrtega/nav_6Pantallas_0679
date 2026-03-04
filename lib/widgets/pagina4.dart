import 'package:flutter/material.dart';

class Pagina4 extends StatelessWidget {
  const Pagina4({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text('Actualizaciones', 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          actions: [
            IconButton(icon: const Icon(Icons.person_add_alt_1), onPressed: () {}),
          ],
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 255, 159, 234),
            indicatorWeight: 3,
            labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1),
            tabs: [
              Tab(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('NOTIFICACIONES'),
                  SizedBox(width: 4),
                  Icon(Icons.circle, size: 8, color: Color.fromARGB(255, 241, 57, 165)),
                ],
              )),
              Tab(text: 'MENSAJES'),
            ],
          ),
        ),
        body: ListView(
          children: [
            _buildNotifItem(
              'aazzaaazzssj', 
              'publicó una nueva parte Bocetos y secretos en No Es Como Si Me Gustaras (Jondami)', 
              '7:33 a. m.', 
              'assets/images/l.JPG',
              'assets/images/PERFIL.JPG'
            ),
            _buildNotifItem(
              'Azazel_lector', 
              'publicó una nueva parte cap-10 anomalía en ☆ Spider-Gotham ☆', 
              'Ayer a las 5:18 p. m.', 
              'assets/images/libro2.JPG',
              'assets/images/l.JPG'
            ),
            _buildVoteItem(
              'Checock', 
              'votó por Cap 1.', 
              'Ayer a las 2:45 p. m.',
              'assets/images/coraline3.0.JPG',
              'assets/images/PERFIL.JPG'
            ),
            _buildNotifItem(
              'Sr_Alucard', 
              'respondió un comentario en ¡Este necesita un novio! - Capítulo V.', 
              'Ayer a las 2:27 p. m.', 
              'assets/images/libro3.JPG',
              'assets/images/ll.JPG',
              subtitle: 'literal sjsjjs'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotifItem(String user, String action, String time, String bookImg, String userImg, {String? subtitle}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white12, width: 0.5))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 20, backgroundImage: AssetImage(userImg)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    children: [
                      TextSpan(text: '$user ', style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: action, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.menu_book, size: 14, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 8),
                  Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 13, fontStyle: FontStyle.italic)),
                ]
              ],
            ),
          ),
          const SizedBox(width: 8),
          Image.asset(bookImg, width: 40, height: 60, fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget _buildVoteItem(String user, String action, String time, String bookImg, String userImg) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white12, width: 0.5))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 20, backgroundImage: AssetImage(userImg)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    children: [
                      TextSpan(text: '$user ', style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: action, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Image.asset(bookImg, width: 40, height: 60, fit: BoxFit.cover),
        ],
      ),
    );
  }
}