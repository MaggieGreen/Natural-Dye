import 'Plant.dart';

class PlanetDao {
  static final List<Plant> planets = [
    const Plant(
      id: "1",
      name: "Marigold",
      location: "Cheerful gold yarn as well",
      distance: " Color-Yellow",
      gravity: " Skill-Easy ",
      description: "Lorem ipsum...",
      image: "assets/images/marigold2.png",
    ),
    const Plant(
      id: "2",
      name: "Beets",
      location: "Rich and lovely pink",
      distance: " Color-Dark Pink",
      gravity: " Skill-Easy ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimage00.jpg",
    ),
    const Plant(
      id: "3",
      name: "Avocado Pits",
      location: "Enjoy magical transformation",
      distance: " Color-Light Pink",
      gravity: " Skill-Easy ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimagea1.jpg",
    ),
    const Plant(
      id: "4",
      name: "Stinging Nettles",
      location: "Feel the fresh summer",
      distance: " Color-Green",
      gravity: " Skill-Middle ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimagea2.jpg",
    ),
    const Plant(
      id: "5",
      name: "Indigo",
      location: "The most famous dye plant in the world",
      distance: " Color-Blue",
      gravity: " Skill-Hard ",
      description: "Lorem ipsum...",
      image: "assets/images/plantimagea3.jpg",
    ),
  ];

  static Plant getPlanetById(id) {
    return planets.where((p) => p.id == id).first;
  }
}
