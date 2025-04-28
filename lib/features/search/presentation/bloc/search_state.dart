part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchError extends SearchState {}

final class SearchLoaded extends SearchState {
  final List<GroupClients> initalClients;

  // final List<ClientEntity> clients;

  SearchLoaded({required this.initalClients});
}
