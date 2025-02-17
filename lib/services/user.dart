import 'package:equatable/equatable.dart';

class NUser extends Equatable {
  String userID = '';
  String? email;
  String name = '';
  String phoneNo = '';
  bool isAdmin;

  NUser(this.name, this.isAdmin, this.phoneNo,
      {required this.userID, required this.email});

  @override
  String toString() {
    return "[$userID] - $name, $email, $phoneNo, $isAdmin";
  }

  @override
  List<Object?> get props => [
        userID,
        email,
        name,
        phoneNo,
        isAdmin,
      ];
}
