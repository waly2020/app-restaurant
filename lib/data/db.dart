final categories = [
    {
      "title" : "Poulet",
      "image" : "assets/images/p-3.jpg",
    },
    {
      "title" : "Legumes",
      "image" : "assets/images/p-1.jpg",
    },
    {
      "title" : "Chinoise",
      "image" : "assets/images/p-5.jpg",
    },
    {
      "title" : "Fang",
      "image" : "assets/images/p-2.jpg",
    },
    {
      "title" : "Hamburger",
      "image" : "assets/images/p-4.jpg",
    },
    {
      "title" : "Pizza",
      "image" : "assets/images/p-2.jpg",
    },
    {
      "title" : "Poulet",
      "image" : "assets/images/p-1.jpg",
    },
];

class Plats {
  String title;
  String image;
  int prix;
  String restaurant;
  double note;
  int nbcomande;

  Plats(this.title,this.image,this.prix,this.restaurant,this.note,this.nbcomande);

  static List<Plats> plats() => [
    Plats("Hamburger", "assets/images/p-6.png", 7000, "Nzing Ayong", 3.8,500),
    Plats("Riz poulet", "assets/images/p-5.jpg", 3000, "Boulevard", 2.8,200),
    Plats("Sauce poisson", "assets/images/p-4.jpg", 5000, "Rio", 6.0,800),
    Plats("Banane poisson", "assets/images/p-3.jpg", 6000, "PK18,Bikele", 3.8,500),
    Plats("Riz viande", "assets/images/p-2.jpg", 3000, "Avea", 4.1,560),
    Plats("Hamburger", "assets/images/p-1.jpg", 2000, "Likwala", 8.0,990),
    Plats("Hamburger", "assets/images/p-7.jpg", 5500, "Awendje", 1.0,90),
  ];
}