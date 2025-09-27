import 'package:tonkeeper/core/resource/data_state.dart';
import 'package:tonkeeper/feachers/wallet/domain/entities/wallet_entity.dart';

abstract class WalletRepository {
  Future<DataState<WalletEntity>> getWalletData();
}
