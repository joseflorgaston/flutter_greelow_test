class Contact {
  final String name;
  final String picture;
  final String subtitle;

  Contact({
    required this.name,
    required this.picture,
    this.subtitle = '',
  });
}

final List<Contact> contacts = [
  Contact(
    name: 'Juana Ayala',
    picture:
        'https://www.shutterstock.com/shutterstock/photos/1554086789/display_1500/stock-photo-close-up-portrait-of-yong-woman-casual-portrait-in-positive-view-big-smile-beautiful-model-posing-1554086789.jpg',
    subtitle: 'Favoritos',
  ),
  Contact(
    name: 'Luis Jimenez',
    picture:
        'https://www.rcwlitagency.com/media/5954/stagg-1.jpg',
  ),
  Contact(
    name: 'Adriana Salinas',
    picture:
        'https://as2.ftcdn.net/jpg/05/12/07/41/1000_F_512074106_kPczNIFZ6tDBdaPSaUmjCOCSHP6qh0OC.jpg',
    subtitle: 'Guardados',
  ),
  Contact(
    name: 'Alberto Torres',
    picture:
        'https://www.rcwlitagency.com/media/5954/stagg-1.jpg',
  ),
  Contact(
    name: 'Juana Ayala',
    picture:
        'https://www.shutterstock.com/shutterstock/photos/1554086789/display_1500/stock-photo-close-up-portrait-of-yong-woman-casual-portrait-in-positive-view-big-smile-beautiful-model-posing-1554086789.jpg',
  ),
];
