import 'package:cloud_firestore/cloud_firestore.dart';

class ScheduleService {
  static final CollectionReference _scheduleCollection =
  FirebaseFirestore.instance.collection('schedules');

  static Future<void> updateSchedule(int movieId ,String screen ,List time, String date) async {
    return await _scheduleCollection.doc(movieId.toString()).set({

      'movieId': movieId,
      'screen': screen,
      'time': time,
      'date': date,
    });
  }

  static Future<Map<String,dynamic>> getSchedule(String? movieId) async {
    DocumentSnapshot snapshot = await _scheduleCollection.doc(movieId).get();
    final data = snapshot.data() as Map<String, dynamic>;
    print("did you enter get the schedule $data ");
    return data;
  }


  Stream<QuerySnapshot> get scheduleData {
    return _scheduleCollection.snapshots();
  }
}
