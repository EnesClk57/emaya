
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class CategorieRepositoryImp implements CategorieRepository{

        final CategorieRemoteDataSource remoteDataSource;
        CategorieRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    