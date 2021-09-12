// 📦 Package imports:
import 'package:get_it/get_it.dart';

typedef DependencyBuilder<T> = T Function();

class DependencyContainer {
  static final DependencyContainer _i = DependencyContainer._();

  /// The current instance
  static DependencyContainer get i => _i;

  DependencyContainer._();

  void delete<T extends Object>() => GetIt.I.unregister<T>();

  /// Put a lazy instance in the dependency three
  T get<T extends Object>() {
    try {
      return GetIt.I.get<T>();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Gets a dependency, if it's exists, then create it
  T getOrPut<T extends Object>(DependencyBuilder<T> builder) {
    try {
      return get<T>();
    } catch (e) {
      put(builder);
      return get<T>();
    }
  }

  /// Put a lazy instance in the dependency three
  void put<T extends Object>(DependencyBuilder<T> builder) =>
      GetIt.I.registerLazySingleton<T>(builder);

  /// Clear all dependencies in the instance
  Future<void> reset() async => GetIt.I.reset();
}
