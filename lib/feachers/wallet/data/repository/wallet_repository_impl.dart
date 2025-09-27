import 'package:dio/dio.dart';
import 'package:tonkeeper/core/resource/data_state.dart';
import 'package:tonkeeper/feachers/wallet/data/data_sorce/remote/api_service.dart';
import 'package:tonkeeper/feachers/wallet/data/models/wallet_model.dart';
import 'package:tonkeeper/feachers/wallet/domain/entities/wallet_entity.dart';
import 'package:tonkeeper/feachers/wallet/domain/repository/wallet_repository.dart';

class WalletRepositoryImpl extends WalletRepository {
  ApiService apiService;
  WalletRepositoryImpl(this.apiService);
  @override
  Future<DataState<WalletEntity>> getWalletData() async {
    try {
      Response response = await apiService.getWalletData();
      if (response.statusCode == 200) {
        WalletEntity walletEntity = WalletModel.fromJson(response.data);
        return DataSuccess(walletEntity);
      } else {
        return DataFailed("Error to get Wallet data");
      }
    } catch (e) {
      return DataFailed("Error to get Wallet data");
    }
  }
}
