import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_bank/features/search/domain/entities/client_entity.dart';
import 'package:interview_bank/features/search/presentation/bloc/search_bloc.dart';
import 'package:intl/intl.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc()..add(SearchEventInitial()),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Gestor de clientes bancarios'),
          ),
          body: SearchList(),
        ),
      ),
    );
  }
}

class SearchList extends StatelessWidget {
  const SearchList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Busca por nombre o ciudad',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                BlocProvider.of<SearchBloc>(context)
                    .add(SearchEventQuery(query: value));
              } else {
                BlocProvider.of<SearchBloc>(context).add(SearchEventInitial());
              }
            },
          ),
        ),
        BlocConsumer<SearchBloc, SearchState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is SearchLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is SearchError || state is! SearchLoaded) {
              return const Center(child: Text('Error loading clients'));
            }

            return Expanded(
              child: ListView.builder(
                itemCount: state.initalClients.length,
                itemBuilder: (context, index) {
                  final group = state.initalClients[index];

                  return Column(
                    children: [
                      ListTile(
                        title: Text(group.clients[0].branch.city,
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text(
                            'Total: \$ ${group.totalBalance.toStringAsFixed(2)}'),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text('Premium: ${group.totalPremiumClients}'),
                            const SizedBox(width: 8),
                            Text('Regular: ${group.totalRegularClients}'),
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(left: 15),
                        physics: ClampingScrollPhysics(),
                        itemCount: group.clients.length,
                        itemBuilder: (context, index) {
                          final client = group.clients[index];
                          return Card(
                            child: ListTile(
                              title: Text(client.name),
                              subtitle: Text(
                                  'Saldo: ${client.balance.toStringAsFixed(2)}\nÚltima transacción: ${DateFormat("yyyy-MM-dd").format(client.lastTransaction)}'),
                              trailing: CategoryClient(client: client),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            );
          },
        )
      ],
    );
  }
}

class CategoryClient extends StatelessWidget {
  const CategoryClient({
    super.key,
    required this.client,
  });

  final ClientEntity client;
  final Color premiumColor = Colors.orangeAccent;
  final Color standardColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: client.category == 'premium' ? premiumColor : standardColor,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: Text(
              client.category.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0.5, 0.5),
                      blurRadius: 5.0,
                    ),
                  ]),
            )));
  }
}
