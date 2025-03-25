
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class ProduitRepositoryImp implements ProduitRepository{

        final ProduitRemoteDataSource remoteDataSource;
        ProduitRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    