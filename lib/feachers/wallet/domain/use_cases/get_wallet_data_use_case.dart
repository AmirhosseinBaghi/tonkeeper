import 'package:tonkeeper/core/resource/data_state.dart';
import 'package:tonkeeper/core/usecase/use_case.dart';
import 'package:tonkeeper/feachers/wallet/domain/entities/wallet_entity.dart';
import 'package:tonkeeper/feachers/wallet/domain/repository/wallet_repository.dart';

class GetWalletDataUseCase extends UseCase<DataState<WalletEntity>, void> {
  final WalletRepository walletRepository;

  GetWalletDataUseCase({required this.walletRepository});
  @override
  Future<DataState<WalletEntity>> call(void param) {
    return walletRepository.getWalletData();
  }
}
