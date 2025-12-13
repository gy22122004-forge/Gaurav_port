import 'package:flutter/material.dart';
import 'package:gaurav_port/light/colors.dart';
import 'package:gaurav_port/projects/components/title_text.dart';
import 'package:gaurav_port/view model/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(prefix: 'About ', title: 'Me'),
              const SizedBox(height: defaultPadding * 1.5),
              Responsive(
                desktop: _buildInfoSection(),
                tablet: _buildInfoSection(),
                mobile: _buildInfoSection(),
                largeMobile: _buildInfoSection(),
                extraLargeScreen: _buildInfoSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    final baseStyle = TextStyle(
      fontSize: 16,
      color: Colors.white70,
      height: 1.6,
    );
    final boldStyle = baseStyle.copyWith(fontWeight: FontWeight.bold);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First, define your base and bold styles to keep the code clean.
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            // This is the default style for all the text spans.
            style: baseStyle,
            children: <TextSpan>[
              // Introduction paragraph
              const TextSpan(
                text:
                    'Hello! I’m Gaurav Yadav — I am a Full-Stack Application Developer.I build complete applications using a modern tech stack. I leveraged Flutter and Dart to architect a scalable e-commerce frontend capable of supporting over 10,000 concurrent users. On the backend, I utilized GoLang and BlockChain to engineer the secure, containerized service for my AI Assistant project.\n',
              ),

              // Bold heading + normal text
              TextSpan(
                text: 'API Integration & State Management: ',
                style: boldStyle,
              ),
              const TextSpan(
                text:
                    'I am proficient in creating robust mobile apps by integrating with services via REST APIs and managing state with BLoC and Provider. In my internship project, applying these skills was key to enhancing the app\'s features, which resulted in a 25% increase in user retention.\n',
              ),

              // Bold heading + normal text
              TextSpan(text: 'Backend & DevOps: ', style: boldStyle),
              const TextSpan(
                text:
                    'My backend expertise is centered on Spring Boot, which I used to build the logic for the AI Assistant project to handle OpenAI API requests securely. I ensured high availability by containerizing the application with Docker and deploying it on Render, achieving 99% uptime.\n',
              ),

              // Bold heading + normal text
              TextSpan(
                text: 'Open-Source & Real-Time Data: ',
                style: boldStyle,
              ),
              const TextSpan(
                text:
                    'I apply my deep knowledge of Dart to solve complex problems and contribute to the open-source community. I authored the osm_path_tracker package, where I engineered a real-time GPS tracking solution that enhanced path precision by 30% and has now achieved over 1,000 downloads on pub.dev.\n',
              ),

              // Bold heading + normal text
              TextSpan(text: 'Innovative Problem-Solving: ', style: boldStyle),
              const TextSpan(
                text:
                    'I apply my full range of technical skills to build award-winning solutions. My ability to effectively combine GIS, AI, and full-stack development was critical in developing our project for the Smart India Hackathon, leading to our team winning the 2023 competition and advancing to Grand Finals 2024.\n\n',
              ),
            ],
          ),
        ),
        const SizedBox(height: defaultPadding * 2),
        const Text(
          'Tech Stack',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: defaultPadding),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            _skillChip('Flutter'),
            _skillChip('GoLang'),
            _skillChip('Spring Boot'),
              _skillChip('C++'),
            _skillChip('Dart'),
            _skillChip('Java'),
              _skillChip('REST API'),
              _skillChip('Firebase'),
            _skillChip('WebSockets'),
            _skillChip('JPA/Hibernate'),
            _skillChip('Docker'),
            _skillChip('MongoDB'),
            _skillChip('MySQL'),
            _skillChip('Render'),
            _skillChip('Microservices'),
            _skillChip('CI/CD'),
            _skillChip('BLoC'),
            _skillChip('Provider'),
            _skillChip('Git'),
            _skillChip('OSM'),
            _skillChip('UI/UX Design'),
          ],
        ),
      ],
    );
  }

  // static Widget _skillChip(String label) {
  //   return Chip(
  //     label: Text(label),
  //     backgroundColor: Colors.black,
  //     labelStyle: const TextStyle(color: Colors.white),
  //     shape: StadiumBorder(
  //       side: BorderSide(color: Colors.white24),
  //     ),
  //   );
  // }

  Widget _skillChip(String label) {
    return _HoverChip(label: label);
  }
}

class _HoverChip extends StatefulWidget {
  final String label;

  const _HoverChip({required this.label});

  @override
  State<_HoverChip> createState() => _HoverChipState();
}

class _HoverChipState extends State<_HoverChip> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isHovered ? Colors.teal.withValues(alpha: 0.3) : Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isHovered ? Colors.tealAccent : Colors.white24,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Text(widget.label, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
