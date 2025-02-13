import 'package:be_talent/common/dio_provider.dart';
import 'package:be_talent/employees/models/employee.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employees_api.g.dart';

@riverpod
FutureOr<List<Employee>> employees(Ref ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get<List<dynamic>>('employees');
  final data = response.data?.map((v) => Employee.fromJson(v as Map<String, dynamic>)).toList();
  return data ?? [];
}
