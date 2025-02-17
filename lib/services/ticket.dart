
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/services/booking.dart';

class Ticket{
  String ticketNo;//datatimenoofticektsexisting
  String movie;
  int numOfSeats;
  List<String> seatNumbers;
  BookingDetails ticketPrice;
  String date;
  String time;
  // qr code if aplicable
  // the check of checkout, i'll make class check and insert it into the database

  Ticket({
    required this.numOfSeats,
    required this.ticketPrice,
    required this.date,
    required this.time,
    required this.movie,
    required this.seatNumbers,
    required this.ticketNo,
  });


  @override
  String toString() {
    return "$movie $numOfSeats $seatNumbers $ticketPrice $date $time";
  }
  
}

class TicketService{
  static final CollectionReference ticketCollection =
  FirebaseFirestore.instance.collection('tickets');

  static Future<void> updateTicket(String ticketNo,String movie, int numOfSeats,List<String> seatNumbers
      ,Map<String, dynamic> ticketPrice,String date, String time) async {
    return await ticketCollection.doc(ticketNo).set({
      'movie': (movie==null)?'':movie,
      'numOfSeats': (numOfSeats==null)?'':numOfSeats,
      'seatNumbers': (seatNumbers==null)?'':seatNumbers,
      'ticketPrice': (ticketPrice==null)?'':ticketPrice,
      'date': (date==null)?'':date,
      'time': (time==null)?'':time,
    });
  }

  static Future<Ticket?> getTicket(String ticketNo) async {
    DocumentSnapshot snapshot = await ticketCollection.doc(ticketNo).get();
    if(snapshot.data()==null){
      final data = snapshot.data();
      return null;
    }
    else{
            final data = snapshot.data() as Map<String, dynamic>;
    BookingDetails bookingDetails= BookingDetails.fromMap(data['ticketPrice']);
    List<String> list =List<String>.from(data['seatNumbers']);
    return Ticket(numOfSeats: data['numOfSeats'], ticketPrice: bookingDetails, date: data['date'], time: data['time'], movie: data['movie'], seatNumbers: list, ticketNo: ticketNo);}
  }


  Stream<QuerySnapshot> get ticketData {
    return ticketCollection.snapshots();
  }

}
