class CategoryList {
  final int id;
  final String image, servicename, title, subtitle, price;

  CategoryList({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.id,
    required this.image,
    required this.servicename,
  });
}

List<CategoryList> categoryList = [
  CategoryList(
    id: 1,
    title: "Home to home ac repair",
    subtitle: "Maintaineance is very important for ac",
    price: "400",
    image: "assets/images/acRepair1.jpeg",
    servicename: "Shifting",
  ),
  CategoryList(
    id: 2,
    title: "Home to home ac repair",
    subtitle: "Maintaineance is very important for ac",
    price: "400",
    image: "assets/images/acRepair2.jpeg",
    servicename: "Cleaning",
  ),
  CategoryList(
    id: 3,
    title: "Clean ac repai",
    subtitle: "Maintaineance is very important for ac",
    price: "400",
    image: "assets/images/acRepair3.jpeg",
    servicename: "Car Rent",
  ),
  CategoryList(
    id: 4,
    title: "100% perfect ac repair",
    subtitle: "Maintaineance is very important for ac",
    price: "400",
    image: "assets/images/acRepair4.jpeg",
    servicename: "Painting",
  ),
  CategoryList(
    id: 5,
    title: "Ac repair best",
    subtitle: "Maintaineance is very important for ac",
    price: "450",
    image: "assets/images/acRepair5.jpeg",
    servicename: "Shifting",
  ),
];
