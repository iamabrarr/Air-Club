class MainScreenIcons{
  String image,title;
  MainScreenIcons({
    this.image,
    this.title,
  });
}
List<MainScreenIcons> bars = [bar1,bar2,bar3,bar4,bar5,bar6];
MainScreenIcons bar1 = MainScreenIcons(
  image: 'assets/icons/flight-time.png',
  title: 'Flight Hours',
);
MainScreenIcons bar2 = MainScreenIcons(
  image: 'assets/icons/document.png',
  title: 'Reports',
);
MainScreenIcons bar3 = MainScreenIcons(
  image: 'assets/icons/dollars.png',
  title: 'Financial',
);
MainScreenIcons bar4 = MainScreenIcons(
  image: 'assets/icons/tools.png',
  title: 'Maintenance',
);
MainScreenIcons bar5 = MainScreenIcons(
  image: 'assets/icons/plane.png',
  title: 'Aircraft',
);
MainScreenIcons bar6 = MainScreenIcons(
  image: 'assets/icons/headphone.png',
  title: 'Lorem Ipsum',
);

