class HistoryBooking {
  final int id;
  final String image;
  final String name;
  final String subtitle;
  final String title1;
  final String subtitle1;
  final String time;
  final String status;
  final String mobile;

  HistoryBooking({
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

List<HistoryBooking> historyBooking = [
  HistoryBooking(
      id: 1,
      mobile: "4343234323",
      name: "Shifting Services",
      status: "complete",
      image: "assets/images/service-Cleaning.jpeg",
      subtitle: "Easy to move from here to anywher",
      title1: "Prameet kumar",
      subtitle1: "* 4.4 complete 100 jobs",
      time: '6/3/18,10:00 a.m'),
  HistoryBooking(
      id: 1,
      mobile: "43433439342",
      name: "Carpenter",
      status: "pending",
      image: "assets/images/service-Cleaning.jpeg",
      subtitle: "Easy to move from here to anywher",
      title1: "Vinod gupta",
      subtitle1: "* 4.7 complete 100 jobs",
      time: '12/2/12,10:00 a.m'),
  HistoryBooking(
      id: 1,
      mobile: "32343294322",
      name: "Electician",
      status: "completed",
      image: "assets/images/service-Cleaning.jpeg",
      subtitle: "Easy to move from here to anywher",
      title1: "Ranjan",
      subtitle1: "* 3.8, complete 100 jobs",
      time: 'Yesterday,6:00 a.m'),
  HistoryBooking(
      id: 1,
      mobile: "958583442",
      name: "Painting",
      status: "incomplete",
      image: "assets/images/service-Cleaning.jpeg",
      subtitle: "Best painting and good in work",
      title1: "Pramod kumar",
      subtitle1: "* 3.2 complete 100 jobs",
      time: 'Yesterday,10:00 a.m'),
];
