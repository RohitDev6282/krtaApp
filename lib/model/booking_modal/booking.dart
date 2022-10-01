class BookingService {
  final int id;
  final String image;
  final String name;
  final String subtitle;
  final String title1;
  final String subtitle1;
  final String time;
  final String status;
  final String mobile;

  BookingService({
    required this.mobile,
    required this.image,
    required this.id,
    required this.name,
    required this.subtitle,
    required this.subtitle1,
    required this.status,
    required this.time,
    required this.title1,
  });
}

List<BookingService> bookingServices = [
  BookingService(
      id: 1,
      mobile: "9484394393",
      name: "Shifting Services",
      status: "Error",
      image: "assets/images/service-Cleaning.jpeg",
      subtitle: "Easy to move from here to anywher",
      title1: "Pramod kumar",
      subtitle1: "* 4.7 complete 100 jobs",
      time: 'Yesterday,  10:00 a.m'),
  BookingService(
      id: 1,
      mobile: "3435453443",
      name: "Shifting Services",
      status: "Working",
      image: "assets/images/service-Cleaning.jpeg",
      subtitle: "Easy to move from here to anywher",
      title1: "Pramod kumar",
      subtitle1: "* 4.7 complete 100 jobs",
      time: 'Yesterday,  10:00 a.m'),
  BookingService(
      id: 1,
      mobile: "585503483",
      name: "Shifting Services",
      status: "pending",
      image: "assets/images/service-Cleaning.jpeg",
      subtitle: "Easy to move from here to anywher",
      title1: "Pramod kumar",
      subtitle1: "* 4.7 complete 100 jobs",
      time: 'Yesterday,  10:00 a.m'),
  BookingService(
      id: 1,
      mobile: "9409438403",
      name: "Shifting Services",
      status: "complete",
      image: "assets/images/service-Cleaning.jpeg",
      subtitle: "Easy to move from here to anywher",
      title1: "Pramod kumar",
      subtitle1: "* 4.7 complete 100 jobs",
      time: 'Yesterday,  10:00 a.m'),
];
