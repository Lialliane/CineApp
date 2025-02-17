// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class DatabaseService {
//
//   // collection reference
//   final CollectionReference movieCollection = Firestore.instance.collection('movies');
//
//   Future<void> updateMovieData(String sugars, String name, int strength, String id) async {
//     return await movieCollection.document(id).setData({
//       'sugars': sugars,
//       'name': name,
//       'strength': strength,
//       'id': id,
//     });
//   }
//
//   // brew list from snapshot
//   List<Movie> _movieListFromSnapshot(QuerySnapshot snapshot) {
//     return snapshot.documents.map((doc){
//       //print(doc.data);
//       return Movie(
//           name: doc.data['name'] ?? '',
//           strength: doc.data['strength'] ?? 0,
//           sugars: doc.data['sugars'] ?? '0',
//           id: doc.data['id'] ?? '0',
//       );
//     }).toList();
//   }
//
//   // get brews stream
//   Stream<List<Movie>> get movies {
//     return movieCollection.snapshots()
//         .map(_movieListFromSnapshot);
//   }
//
// }