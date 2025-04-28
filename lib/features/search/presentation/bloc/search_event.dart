part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}

class SearchEventInitial extends SearchEvent {
  SearchEventInitial();
}

class SearchPerCity extends SearchEvent {
  SearchPerCity();
}
