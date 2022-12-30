final String deptTable = 'department';

class DeptTable {
  static final List<String> values = [
    // tables fields
    id, dept_name, ci_name,
  ];

  static final String id = "_id";
  static final String dept_name = "dept_name";
  static final String ci_name = "ci_name";
}

class Department {
  final int? id;
  final String dept_name;
  final String ci_name;

  const Department({
    this.id,
    required this.dept_name,
    required this.ci_name,
  });

  Department copy({
    int? id,
    String? dep_name,
    String? ci_name,
  }) =>
      Department(
        id: id ?? this.id,
        dept_name: dep_name ?? this.dept_name,
        ci_name: ci_name ?? this.ci_name,
      );

  static Department fromJson(Map<String, Object?> json) => Department(
        id: json[DeptTable.id] as int?,
        dept_name: json[DeptTable.dept_name] as String,
        ci_name: json[DeptTable.ci_name] as String,
      );

  Map<String, Object?> toJson() => {
        DeptTable.id: id,
        DeptTable.dept_name: dept_name,
        DeptTable.ci_name: ci_name,
      };
}
