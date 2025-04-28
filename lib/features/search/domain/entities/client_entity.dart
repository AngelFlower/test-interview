// {
//   "id": "1",
//   "nombre": "Luis Díaz",
//   "categoria": "standard",
//   "saldo": 8661.55,
//   "ultimaTransaccion": "2023-03-30",
//   "sucursal": {
//     "id": 4,
//     "ciudad": "Sevilla",
//   },
// }

import 'package:interview_bank/features/search/domain/entities/branch_entity.dart';

class ClientEntity {
  final String id;
  final String name;
  final String category;
  final double balance;
  final DateTime lastTransaction;
  final BranchEntity branch;

  ClientEntity({
    required this.id,
    required this.name,
    required this.category,
    required this.balance,
    required this.lastTransaction,
    required this.branch,
  });

  factory ClientEntity.fromJson(Map<String, dynamic> json) {
    return ClientEntity(
      id: json['id'] as String,
      name: json['nombre'] as String,
      category: json['categoria'] as String,
      balance: (json['saldo'] as num).toDouble(),
      lastTransaction: DateTime.parse(json['ultimaTransaccion'] as String),
      branch: BranchEntity.fromJson(json['sucursal'] as Map<String, dynamic>),
    );
  }
}
