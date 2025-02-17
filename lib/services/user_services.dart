import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/services/user.dart';

class UserServices {
  static final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(NUser? user, String email, String name,
      String phoneNo, bool isAdmin) async {
    if (user?.userID != null) {
      return await _userCollection.doc(user?.userID).set({
        'uid': user?.userID,
        'email': email,
        'name': name,
        'phoneNo': phoneNo,
        'isAdmin': isAdmin,
      }, SetOptions(merge: true));
    }
  }

  //Listens for real-time changes in the users collection, updating the stream automatically.
  Stream<List<NUser>> get user {
    return _userCollection.snapshots().map(_convertSnapshotToNUserList);
  }

  List<NUser> _convertSnapshotToNUserList(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>? ?? {};
      return NUser(
        data['name'] ?? '',
        data['isAdmin'] ?? false,
        data['phoneNo'] ?? '',
        userID: data['uid'] ?? '',
        email: data['email'] ?? '',
      );
    }).toList();
  }

  //gets user once
  static Future<NUser> getUser(String? userID) async {
    DocumentSnapshot snapshot = await _userCollection.doc(userID).get();

    final data = snapshot.data() as Map<String, dynamic>;

    print("did you enter get user $data ");

    if (!snapshot.exists || snapshot.data() == null) {
      return NUser('', false, '', userID: '', email: '');
    }

    return NUser(data['name'], data['isAdmin'], data['phoneNo'],
        userID: data['uid'], email: data['email']);
  }

  Stream<QuerySnapshot> get userData {
    return _userCollection.snapshots();
  }
}
