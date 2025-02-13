import 'package:be_talent/common/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final employeesProvider = FutureProvider.autoDispose((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get<List<dynamic>>('employees');
  final data = response.data;
  return data;
});
