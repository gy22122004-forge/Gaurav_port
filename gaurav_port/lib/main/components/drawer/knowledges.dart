import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge', style: TextStyle(color: Colors.white)),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart ,Spring Boot,'),
        KnowledgeText(knowledge: 'Docker, Microservices, Redis'),
        KnowledgeText(knowledge: 'WebSockets, REST API'),
        KnowledgeText(knowledge: 'JPA , MySQL, MongoDB, Convex'),
        KnowledgeText(knowledge: 'BLoC, Firebase, Provider, Git, GitHub'),
      ],
    );
  }
}
