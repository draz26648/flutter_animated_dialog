///List data model
class ListDataModel {
  ///Name
  final String name;

  ///Value
  final String value;

  const ListDataModel({
    required this.name,
    required this.value,
  });

  @override
  String toString() {
    return name;
  }
}
