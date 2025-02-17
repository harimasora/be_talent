import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    required String id,
    required String name,
    required String job,
    @JsonKey(name: 'admission_date') required DateTime admissionDate,
    required String phone,
    required String image,
  }) = _Employee;

  const Employee._();

  String get formattedAdmissionDate {
    final day = admissionDate.day.toString().padLeft(2, '0');
    final month = admissionDate.month.toString().padLeft(2, '0');
    final year = admissionDate.year.toString().padLeft(4, '0');
    return '$day/$month/$year';
  }

  String get formattedPhone {
    final countryCode = phone.substring(0, 2);
    final areaCode = phone.substring(2, 4);
    final preDash = phone.substring(4, 9);
    final postDash = phone.substring(9);
    return '+$countryCode ($areaCode) $preDash-$postDash';
  }

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}
