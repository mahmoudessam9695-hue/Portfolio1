class ProjectsModel {
  final String name;
  final String description;
  final List<String> images;
  final String link;
  final String appIcon;

  const ProjectsModel({
    required this.name,
    required this.description,
    required this.images,
    required this.link,
    required this.appIcon,
  });
}

final List<ProjectsModel> projectList = [
  ProjectsModel(
    name: 'Chat App',
    description:
        'A real-time chat application built with Flutter and Firebase.\n'
        'The app includes user authentication (Login & Registration),\n'
        'allowing users to securely create accounts and sign in. After logging in,\n'
        'users can instantly access the chat screen where they can send messages, \n'
        'and all messages are displayed in real-time using Firebase Firestore. \n',

    link: 'https://github.com/mahmoudessam9695-hue/Chat_app',

    images: [
      'assets/Chat_app/1.jpg',
      'assets/Chat_app/2.jpg',
      'assets/Chat_app/3.jpg',
      'assets/Chat_app/4.jpg',
    ],
    appIcon: 'assets/app_icon/icons.png',
  ),
  ProjectsModel(
    name: 'Sama App',
    description:
        'A Flutter-based educational application designed \n'
        'to simplify learning Japanese through structured lessons,\n'
        'interactive vocabulary practice, and quizzes.\n'
        'The app focuses on improving retention and user engagement \n'
        'through a clean UI and smooth learning flow, \n'
        'making language acquisition more accessible for beginners.\n',

    link: 'https://github.com/mahmoudessam9695-hue/educational_app',

    images: [
      'assets/Sama_app/1.jpg',
      'assets/Sama_app/2.jpg',
      'assets/Sama_app/3.jpg',
      'assets/Sama_app/4.jpg',
      'assets/Sama_app/5.jpg',
      'assets/Sama_app/6.jpg',
      'assets/Sama_app/7.jpg',
    ],
    appIcon: 'assets/app_icon/SamaIcon.png',
  ),
  ProjectsModel(
    name: 'Briefly News App',
    description:
        'A real-time news application built with Flutter that\n'
        'delivers categorized and up-to-date news content\n'
        'through a fast and responsive interface. \n'
        'It emphasizes performance, readability,\n'
        'and smooth navigation to ensure an efficient\n'
        'and enjoyable user experience while staying informed.\n',

    link: 'https://github.com/mahmoudessam9695-hue/News_app',

    images: [
      'assets/Briefly_News_app/1.jpg',
      'assets/Briefly_News_app/2.jpg',
      'assets/Briefly_News_app/3.jpg',
      'assets/Briefly_News_app/4.jpg',
      'assets/Briefly_News_app/5.jpg',
      'assets/Briefly_News_app/6.jpg',
      'assets/Briefly_News_app/7.jpg',
    ],
    appIcon: 'assets/app_icon/BrieflyNewsIcon.png',
  ),
  ProjectsModel(
    name: 'Coffe Shop App',
    description:
        'A modern coffee ordering application developed using Flutter,\n'
        'designed to simulate a real café experience.\n'
        'It allows users to browse menu items,\n'
        'view details, and customize orders \n'
        'through an intuitive and visually.appealing interface, \n'
        'focusing on usability and seamless interaction.\n',

    link: 'https://github.com/mahmoudessam9695-hue/Coffe_Shop_app',

    images: [
      'assets/Shop_app/1.jpg',
      'assets/Shop_app/2.jpg',
      'assets/Shop_app/3.jpg',
      'assets/Shop_app/4.jpg',
      'assets/Shop_app/5.jpg',
      'assets/Shop_app/6.jpg',
      'assets/Shop_app/7.jpg',
      'assets/Shop_app/8.jpg',
    ],
    appIcon: 'assets/app_icon/coffe_shop.png',
  ),

  ProjectsModel(
    name: 'Weather App',
    description:
        'Stay updated with real-time weather anytime, anywhere.\n'
        'Get accurate temperature, weather conditions,\n'
        'and forecasts in a clean and fast experience.\n'
        'Search any city instantly and plan your day with confidence.\n'
        'Simple. Fast. Reliable. 🌤️',

    link: 'https://github.com/mahmoudessam9695-hue/weather_App',
    appIcon: 'assets/app_icon/weather_icon.png',

    images: [
      'assets/Weather_app/1.jpg',
      'assets/Weather_app/2.jpg',
      'assets/Weather_app/3.jpg',
      'assets/Weather_app/4.jpg',
      'assets/Weather_app/5.jpg',
      'assets/Weather_app/6.jpg',
    ],
  ),
  ProjectsModel(
    name: 'Points Counter_App',
    description:
        'A simple basketball score counter app built with Flutter\n'
        'that allows users to track and update points for two teams in real time.\n'
        'The app supports incrementing and resetting scores,\n'
        'making it useful for keeping track of basketball games easily during play. \n',

    link: 'https://github.com/mahmoudessam9695-hue/Chat_app',

    images: ['assets/basketball/1.jpg', 'assets/basketball/2.jpg'],
    appIcon: 'assets/app_icon/basketball.png',
  ),
  ProjectsModel(
    name: 'Periodic Table_App',
    description:
        'A Flutter-based educational app that displays the periodic table of elements in an organized and interactive way.\n'
        'The app allows users to explore chemical elements and view their basic properties such as atomic number, symbol, and name,\n'
        'making it useful for learning chemistry in an easy and visual format.\n',
    link:
        'https://drive.google.com/file/d/1Fnyo41IjMgmrRS-UFwUbabbq5ct6B4F1/view',

    images: ['assets/app_icon/656114.webp'],
    appIcon: 'assets/app_icon/Periodic Table.png',
  ),
];
