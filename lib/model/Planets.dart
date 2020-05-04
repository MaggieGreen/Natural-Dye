import 'Planet.dart';

class PlanetDao {
  static final List<Planet> planets = [
    const Planet(
      id: "1",
      name: "Marigold",
      location: "Cheerful gold yarn as well",
      distance: " Color-Yellow",
      gravity: " Skill-Easy ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimageb1.jpg",
    ),
    const Planet(
      id: "2",
      name: "Beets",
      location: "Rich and lovely pink",
      distance: " Color-Dark Pink",
      gravity: " Skill-Easy ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimage00.jpg",
    ),
    const Planet(
      id: "3",
      name: "Avocado Pits",
      location: "The magical transformation of green fruits",
      distance: " Color-Light Pink",
      gravity: " Skill-Easy ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimagea1.jpg",
    ),
    const Planet(
      id: "4",
      name: "Stinging Nettles",
      location: "Feel the fresh summer",
      distance: " Color-Green",
      gravity: " Skill-Middle ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimagea2.jpg",
    ),
    const Planet(
      id: "5",
      name: "Indigo",
      location: "The most famous dye plant in the world",
      distance: " Color-Blue",
      gravity: " Skill-Hard ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimagea3.jpg",
    ),
  ];

  static Planet getPlanetById(id) {
    return planets.where((p) => p.id == id).first;
  }
}
