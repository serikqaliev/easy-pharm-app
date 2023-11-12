import 'categories_network_provider.dart';

import '../model/category.dart';

abstract interface class ICategroiesRepository {
  Future<List<Category>> list();
  Future<Category> create({required final String name});
  Future<void> delete({required final int id});
  Future<Category> update({required final int id, required final String name});
}

class CategoriesRepository implements ICategroiesRepository {
  final CategoriesNetworkProvider _networkProvider;

  CategoriesRepository({required final CategoriesNetworkProvider networkProvider}) : _networkProvider = networkProvider;

  @override
  Future<Category> create({required String name}) => _networkProvider.create(name: name);

  @override
  Future<void> delete({required int id}) => _networkProvider.delete(id: id);

  @override
  Future<List<Category>> list() => _networkProvider.list();

  @override
  Future<Category> update({required int id, required String name}) => _networkProvider.update(id: id, name: name);
}
