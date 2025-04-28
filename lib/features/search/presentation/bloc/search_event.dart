part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}

class SearchEventInitial extends SearchEvent {
  SearchEventInitial();
}

class SearchEventQuery extends SearchEvent {
  final String query;

  SearchEventQuery({required this.query});
}
