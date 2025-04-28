import 'package:interview_bank/features/search/domain/entities/client_entity.dart';

List<ClientEntity> clientsDummy = [
  ClientEntity.fromJson({
    "id": "1",
    "nombre": "Luis Díaz",
    "categoria": "standard",
    "saldo": 8661.55,
    "ultimaTransaccion": "2023-03-30",
    "sucursal": {
      "id": 4,
      "ciudad": "Sevilla",
    },
  }),
  ClientEntity.fromJson({
    "id": "2",
    "nombre": "Marta Pérez",
    "categoria": "standard",
    "saldo": 10860.86,
    "ultimaTransaccion": "2023-05-16",
    "sucursal": {
      "id": 1,
      "ciudad": "Madrid",
    },
  }),
  ClientEntity.fromJson({
    "id": "3",
    "nombre": "Jorge García",
    "categoria": "standard",
    "saldo": 11785.74,
    "ultimaTransaccion": "2023-03-08",
    "sucursal": {
      "id": 4,
      "ciudad": "Sevilla",
    },
  }),
  ClientEntity.fromJson({
    "id": "4",
    "nombre": "Jorge Ramírez",
    "categoria": "premium",
    "saldo": 5324.52,
    "ultimaTransaccion": "2023-03-08",
    "sucursal": {
      "id": 2,
      "ciudad": "Barcelona",
    },
  }),
  ClientEntity.fromJson({
    "id": "5",
    "nombre": "Carlos Pérez",
    "categoria": "premium",
    "saldo": 17295.75,
    "ultimaTransaccion": "2023-04-19",
    "sucursal": {
      "id": 5,
      "ciudad": "Bilbao",
    },
  }),
  ClientEntity.fromJson({
    "id": "6",
    "nombre": "Jorge Sánchez",
    "categoria": "premium",
    "saldo": 16781.22,
    "ultimaTransaccion": "2023-11-12",
    "sucursal": {
      "id": 5,
      "ciudad": "Bilbao",
    },
  }),
  ClientEntity.fromJson({
    "id": "7",
    "nombre": "Laura Pérez",
    "categoria": "premium",
    "saldo": 4951.33,
    "ultimaTransaccion": "2023-02-11",
    "sucursal": {
      "id": 4,
      "ciudad": "Sevilla",
    },
  }),
  ClientEntity.fromJson({
    "id": "8",
    "nombre": "Luis Ramírez",
    "categoria": "standard",
    "saldo": 19851.82,
    "ultimaTransaccion": "2023-07-21",
    "sucursal": {
      "id": 1,
      "ciudad": "Madrid",
    },
  }),
  ClientEntity.fromJson({
    "id": "9",
    "nombre": "Lucía Ramírez",
    "categoria": "premium",
    "saldo": 5024.79,
    "ultimaTransaccion": "2023-02-21",
    "sucursal": {
      "id": 2,
      "ciudad": "Barcelona",
    },
  }),
];

// const List<Map<String, dynamic>> clientesIniciales = [
//   {
//     "id": "1",
//     "nombre": "Luis Díaz",
//     "categoria": "standard",
//     "saldo": 8661.55,
//     "ultimaTransaccion": "2023-03-30",
//     "sucursal": {
//       "id": 4,
//       "ciudad": "Sevilla",
//     },
//   },
//   {
//     "id": "2",
//     "nombre": "Marta Pérez",
//     "categoria": "standard",
//     "saldo": 10860.86,
//     "ultimaTransaccion": "2023-05-16",
//     "sucursal": {
//       "id": 1,
//       "ciudad": "Madrid",
//     },
//   },
//   {
//     "id": "3",
//     "nombre": "Jorge García",
//     "categoria": "standard",
//     "saldo": 11785.74,
//     "ultimaTransaccion": "2023-03-08",
//     "sucursal": {
//       "id": 4,
//       "ciudad": "Sevilla",
//     },
//   },
//   {
//     "id": "4",
//     "nombre": "Jorge Ramírez",
//     "categoria": "premium",
//     "saldo": 5324.52,
//     "ultimaTransaccion": "2023-03-08",
//     "sucursal": {
//       "id": 2,
//       "ciudad": "Barcelona",
//     },
//   },
//   {
//     "id": "5",
//     "nombre": "Carlos Pérez",
//     "categoria": "premium",
//     "saldo": 17295.75,
//     "ultimaTransaccion": "2023-04-19",
//     "sucursal": {
//       "id": 5,
//       "ciudad": "Bilbao",
//     },
//   },
//   {
//     "id": "6",
//     "nombre": "Jorge Sánchez",
//     "categoria": "premium",
//     "saldo": 16781.22,
//     "ultimaTransaccion": "2023-11-12",
//     "sucursal": {
//       "id": 5,
//       "ciudad": "Bilbao",
//     },
//   },
//   {
//     "id": "7",
//     "nombre": "Laura Pérez",
//     "categoria": "premium",
//     "saldo": 4951.33,
//     "ultimaTransaccion": "2023-02-11",
//     "sucursal": {
//       "id": 4,
//       "ciudad": "Sevilla",
//     },
//   },
//   {
//     "id": "8",
//     "nombre": "Luis Ramírez",
//     "categoria": "standard",
//     "saldo": 19851.82,
//     "ultimaTransaccion": "2023-07-21",
//     "sucursal": {
//       "id": 1,
//       "ciudad": "Madrid",
//     },
//   },
//   {
//     "id": "9",
//     "nombre": "Lucía Ramírez",
//     "categoria": "premium",
//     "saldo": 5024.79,
//     "ultimaTransaccion": "2023-02-21",
//     "sucursal": {
//       "id": 2,
//       "ciudad": "Barcelona",
//     },
//   },
// ];
