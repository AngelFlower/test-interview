import 'package:interview_bank/features/search/domain/entities/client_entity.dart';

class GroupClients {
  final List<ClientEntity> clients;
  final double totalBalance;
  final int totalPremiumClients;
  final int totalRegularClients;

  GroupClients({
    required this.clients,
    required this.totalBalance,
    required this.totalPremiumClients,
    required this.totalRegularClients,
  });
}
