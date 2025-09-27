import 'package:equatable/equatable.dart';
import 'package:tonkeeper/feachers/wallet/domain/entities/asset_entity.dart';

class WalletEntity extends Equatable {
  final double totalBalanceUsd;
  final String walletAddress;
  final String walletType;
  final List<AssetEntity> assets;

  const WalletEntity({
    required this.totalBalanceUsd,
    required this.walletAddress,
    required this.walletType,
    required this.assets,
  });

  @override
  List<Object?> get props => [
    totalBalanceUsd,
    walletAddress,
    walletType,
    assets,
  ];

  factory WalletEntity.fromJson(Map<String, dynamic> json) => WalletEntity(
    totalBalanceUsd: json["totalBalanceUSD"].toDouble(),
    walletAddress: json["walletAddress"],
    walletType: json["walletType"],
    assets: List<AssetEntity>.from(
      json["assets"].map((x) => AssetEntity.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "totalBalanceUSD": totalBalanceUsd,
    "walletAddress": walletAddress,
    "walletType": walletType,
    "assets": List<dynamic>.from(assets.map((x) => x.toJson())),
  };
}
