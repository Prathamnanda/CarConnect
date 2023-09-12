abstract class Question{
  String? query;
  Question();
  Map<String,dynamic> toJson() =>{'phn':query};
  Question.fromSnapshot(snapshot)
  :query=snapshot.data()['phn'];
  print(query);
}