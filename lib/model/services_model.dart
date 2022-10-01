class OurServices {
  final int id;
  final String image, service_name;

  OurServices({
    required this.id,
    required this.image,
    required this.service_name,
  });
}

List<OurServices> ourServices = [
  OurServices(
    id: 1,
    image: "assets/images/service-Cleaning.jpeg",
    service_name: "Cleaning",
  ),
  OurServices(
    id: 2,
    image: "assets/images/electrician.jpeg",
    service_name: "Electrician",
  ),
  OurServices(
    id: 3,
    image: "assets/images/carpenter.jpeg",
    service_name: "carpenter",
  ),
  OurServices(
    id: 4,
    image: "assets/images/itPerson.jpeg",
    service_name: "It Information",
  ),
];
