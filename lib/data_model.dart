class ClassModel {
  final int number;
  final String date;
  final List<TopicModel> topics;

  ClassModel({required this.number, required this.date, required this.topics});
}

class TopicModel {
  final String name;
  final String descriptions;

  TopicModel({required this.name, required this.descriptions});
}
