class TechModel {
  final String icon;
  final String label;
  final String description;
  final String used;
  TechModel({
    required this.icon,
    required this.label,
    required this.description,
    required this.used,
  });
}

class TechStack {
  static List<TechModel> items = [
    TechModel(
      icon: "assets/icons/flutter.png",
      label: "Flutter",
      description: "Cross-platform mobile development",
      used:
          ' Dart \n'
          ' State Management \n'
          ' API \n'
          ' Firebase \n'
          ' UI Framework \n'
          ' OOP ',
    ),
    TechModel(
      icon: "assets/icons/dart.png",
      label: "Dart",
      description: "Programming language for Flutter",
      used:
          ' OOP \n'
          ' Packages & Modules \n'
          ' Exception Handling \n'
          ' Functions \n'
          ' Collections \n'
          ' Null Safety ',
    ),
    TechModel(
      icon: "assets/icons/firebase.png",
      label: "Firebase",
      description: "Backend services & auth",
      used:
          ' Login \n'
          ' Upload \n'
          ' Notification \n'
          ' CRUD (add / edit / delete) ',
    ),
    TechModel(
      icon: "assets/icons/download.png",
      label: "API",
      description: "REST API integration",
      used:
          ' REST API \n'
          ' HTTP Requests \n'
          ' JSON Parsing \n'
          ' Error Handling \n'
          ' Repository Pattern \n',
    ),
    TechModel(
      icon: "assets/icons/(gethup).png",
      label: "GitHub",
      description: "Version control system",
      used:
          ' basics Git \n'
          ' Repositories \n'
          ' Merge & Pull Requests \n'
          ' Open Source \n'
          ' Branching \n',
    ),
  ];
}
