import 'package:bloc/bloc.dart';
import 'package:interview_bank/features/search/data/dummies/clients_dummy.dart';
import 'package:interview_bank/features/search/domain/entities/branch_entity.dart';
import 'package:interview_bank/features/search/domain/entities/client_entity.dart';
import 'package:interview_bank/features/search/domain/entities/group_clients.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchEvent>((event, emit) {});
    on<SearchPerCity>((event, emit) {
      emit(SearchLoading());
    });
    on<SearchEventInitial>((event, emit) {
      emit(SearchLoading());
      try {
        final List<GroupClients> clientsPerBranch =
            groupClientsByBranch(clientsDummy);
        emit(SearchLoaded(initalClients: clientsPerBranch));
      } catch (e) {
        emit(SearchError());
      }
    });
  }
}

List<GroupClients> groupClientsByBranch(List<ClientEntity> clients) {
  final List<BranchEntity> branches = clients
      .map((client) => client.branch)
      .toSet()
      .toList()
      .fold<List<BranchEntity>>([], (uniqueBranches, branch) {
    if (!uniqueBranches.any((b) => b.id == branch.id)) {
      uniqueBranches.add(branch);
    }
    return uniqueBranches;
  });

  List<GroupClients> clientsGrouped = [];

  for (var branch in branches) {
    final branchClients =
        clients.where((client) => client.branch.id == branch.id).toList();

    double totalBalance = 0;
    int totalPremiumClients = 0;
    int totalRegularClients = 0;

    for (var client in branchClients) {
      totalBalance += client.balance;
      if (client.category == 'premium') {
        totalPremiumClients++;
      } else {
        totalRegularClients++;
      }
    }

    clientsGrouped.add(GroupClients(
      clients: branchClients,
      totalBalance: totalBalance,
      totalPremiumClients: totalPremiumClients,
      totalRegularClients: totalRegularClients,
    ));
  }

  return clientsGrouped;
}
