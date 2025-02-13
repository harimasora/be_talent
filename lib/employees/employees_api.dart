import 'package:be_talent/common/dio_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employees_api.g.dart';

@riverpod
FutureOr<List<dynamic>> employees(Ref ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get<List<dynamic>>('employees');
  return response.data ?? [];
}
