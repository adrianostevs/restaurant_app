class ListMenu {
  final String name;

  ListMenu({required this.name});

  factory ListMenu.fromJson(Map<String, dynamic> listMenu) =>
      ListMenu(name: listMenu['name']);

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
