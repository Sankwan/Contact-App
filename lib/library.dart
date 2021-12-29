class Library {
  final String image;
  final String name;
  final String number;
  final String location;
  final String email;

  Library(this.name, this.image, this.number, this.email, this.location);
}

List<Library> librarylist = [
  Library('assets/img/emma.jpg', 'Emma', '+233 55 788 9480', 'Accra',
      'EEsankwan@gmail.com'),
  Library('assets/img/emily.jpg', 'Emily', '+233 24 444 4419', 'Tokyo, Japan',
      'emily11@gmail.com'),
  Library('assets/img/sankwan.jpg', 'Sankwan', '+233 55 788 9480', 'Tema',
      'sankwan@gmail.com'),
  Library('assets/img/albert.jpg', 'Albert Trignation', '+44 79 581 06 477',
      'Doha, Qatar', 'albert22@gmail.com'),
  Library('assets/img/james.jpg', 'James', '+233 24 452 2052', 'Kasoa',
      'kasoaboyimokay@gmail.com'),
  Library('assets/img/tye.jpg', 'Jason', '+659 11 235', 'Chorkor',
      'jjmoney@gmail.com'),
  Library('assets/img/albert.jpg', 'Judith', '+659 11 327', 'Dawhenya',
      'poposipopo@ymail.com'),
  Library('assets/img/cars.jpg', 'kwame kombat', '+112 00 986', 'Cape Town',
      'KingofBlues@rocketmail.com'),
  Library('assets/img/animals.jpg', 'Ella Govenor', '+233 64 533 919', 'Accra',
      'princess@gmail.com'),
];
