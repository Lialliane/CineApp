import 'package:cloud_firestore/cloud_firestore.dart';

class Screens{
  late String screenName;
  late List<int> bookedPremuim;
  late List<int> bookedStandard;
  late int noOfSeatsPremuim;
  late int noOfSeatsinPremuimRow;
  late int noOfSeatsStandard;
  late int noOfSeatsinStandardRow;
  late Set <int> gapsStandard;
  late Set <int> gapsPremuim;

  Screens(this.screenName, this.bookedPremuim, this.bookedStandard,this.noOfSeatsPremuim, this.noOfSeatsinPremuimRow, this.noOfSeatsStandard, this.noOfSeatsinStandardRow, this.gapsPremuim, this.gapsStandard);

}
class ScreenService{
  static final CollectionReference _screenCollection =
  FirebaseFirestore.instance.collection('screens');

  static Future<void> updateScreen(String screenName, List<int> bookedPremuim,List<int> bookedStandard
      ,int noOfSeatsPremuim,int noOfSeatsinPremuimRow, int noOfSeatsStandard, int noOfSeatsinStandardRow,
      Set<int> gapsStandard, Set<int> gapsPremuim) async {
    return await _screenCollection.doc(screenName).set({
      'screenName': (screenName==null)?'':screenName,
      'bookedPremuim': (bookedPremuim==null)?'':bookedPremuim,
      'bookedStandard': (bookedStandard==null)?'':bookedStandard,
      'noOfSeatsPremuim': (noOfSeatsPremuim==null)?'':noOfSeatsPremuim,
      'noOfSeatsinPremuimRow': (noOfSeatsinPremuimRow==null)?'':noOfSeatsinPremuimRow,
      'noOfSeatsStandard': (noOfSeatsStandard==null)?'':noOfSeatsStandard,
      'noOfSeatsinStandardRow': (noOfSeatsinStandardRow==null)?'':noOfSeatsinStandardRow,
      'gapsStandard': (gapsStandard==null)?'':gapsStandard,
      'gapsPremuim': (gapsPremuim==null)?'':gapsPremuim,
    });
  }
  static Future<void> updateScreenBooked(String screenName, List<int> bookedPremuim,List<int> bookedStandard) async {
    return await _screenCollection.doc(screenName).set({
      'bookedPremuim': (bookedPremuim==null)?'':bookedPremuim,
      'bookedStandard': (bookedStandard==null)?'':bookedStandard,
    });
  }

  static Future<Screens> getScreen(String? uid) async {
    DocumentSnapshot snapshot = await _screenCollection.doc(uid).get();
    final data = snapshot.data() as Map<String, dynamic>;
    print("did you enter get screen$data ");
    return Screens(data['screenName'], data['bookedPremuim'], data['bookedStandard'], data['noOfSeatsPremuim'], data['noOfSeatsinPremuimRow'], data['noOfSeatsStandard'], data['noOfSeatsinStandardRow'], data['gapsPremuim'], data['gapsStandard']);
  }


  Stream<QuerySnapshot> get screenData {
    return _screenCollection.snapshots();
  }

}

