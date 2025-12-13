class Project {
  final String name;
  final String description;
  final List<String> bulletPoints;
  final String link;

  Project({
    required this.name,
    required this.description,
    required this.bulletPoints,
    required this.link,
  });
}

List<Project> projectList = [
  Project(
    name: 'Kishaan Mitra',
    description: 'AI-powered agriculture assistant for fertilizer optimization and sustainability.',
    bulletPoints: [
      'Built AI-based system to recommend fertilizers by analyzing soil images.',
      'Integrated REST APIs and multilingual support for 23 Indian languages.',
      'Leveraged geographic data for precise fertilizer calculations and improved yield.',
    ],
    link: '',
  ),
  Project(
    name: 'osm_path_tracker',
    description: 'OPEN SOURCE - Flutter package for precise GPS path tracking using OpenStreetMap.',
    bulletPoints: [
      'Real-time tracking with distance-based filtering.',
      '30% improved path accuracy and smooth rendering.',
      '1000+ downloads on pub.dev.',
    ],
    link: '',
  ),
  Project(
    name: 'AI Assistant',
    description: 'AI-powered chrome extension for research and productivity.',
    bulletPoints: [
      'Generate AI-powered summaries.',
      'Containerized Spring Boot backend deployed on Render via Docker',
      'Handle OpenAI API requests.'
    ],
    link: '',
  ),
  Project(
    name: 'Sangam',
    description: 'GIS-enabled collaboration tool for city-level governance.',
    bulletPoints: [
      'GIS & OpenStreetMap tracking.',
      'Department-wise task/resource management.',
      'Conflict detection and planning support.'
    ],
    link: '',
  ),
  Project(
    name: 'Closure Meet',
    description: 'A Flutter-based video conferencing app using ZegoCloud SDK.',
    bulletPoints: [
      'Real-time multi-user group calls.',
      'Google Sign-In via Firebase Auth.',
      'Cross-platform responsive UI.'
    ],
    link: '',
  ),
  Project(
    name: 'Learning Platform',
    description: 'Interactive learning app with video playback & tracking.',
    bulletPoints: [
      'Review & feedback system.',
      'Charts and progress analytics.',
      'Smooth animation using Flutter.'
    ],
    link: '',
  ),
  Project(
    name: 'Portfolio Website',
    description: 'Responsive portfolio website built using Flutter Web.',
    bulletPoints: [
      'Showcases projects & skills.',
      'Animations and responsive design.',
      'Hosted on Vercel with downloadable resume.'
    ],
    link: '',
  ),
  Project(
    name: 'Hi Connect',
    description: 'A real-time chat app built with Flutter and Firebase.',
    bulletPoints: [
      'Secure Firebase Authentication.',
      'End-to-end message encryption.',
      'Optimized data sync using Firestore.'
    ],
    link: '',
  ),
  Project(
    name: 'FixMyRide',
    description: 'Roadside assistance app with OSM & live SOS tracking.',
    bulletPoints: [
      'OpenStreetMap integration for real-time tracking.',
      'Offline SOS mode & driver dispatch.',
      'Custom vehicle support UI.'
    ],
    link: '',
  ),
  Project(
    name: 'E-Business Store',
    description: 'E-commerce app with smooth UI and product filtering.',
    bulletPoints: [
      'Clean and user-friendly interface with animations.',
      'Browse products by category with real-time filtering.',
      'Supports adding to cart and basic order flow.',
      'Optimized for performance and scalable backend.',
    ],
    link: '',
  ),
];
