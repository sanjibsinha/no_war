class EachPage {
  String imageUrl;
  String name;

  EachPage({
    required this.imageUrl,
    required this.name,
  });
}

List<EachPage> allPages = [
  EachPage(
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/12/25/22/32/gladiator-1931077_960_720.jpg',
    name: '1700 Home Page',
  ),
  EachPage(
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/06/21/21/57/apocalyptic-374208_960_720.jpg',
    name: '1800 Home Page',
  ),
  EachPage(
    imageUrl: 'images/8.jpg',
    name: '1900 Home Page',
  ),
  EachPage(
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/12/25/22/32/gladiator-1931077_960_720.jpg',
    name: 'Weapons Home Page',
  ),
  EachPage(
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/03/27/07/38/police-1282330_960_720.jpg',
    name: 'Cyber War Home Page',
  ),
];
