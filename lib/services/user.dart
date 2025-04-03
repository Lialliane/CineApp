import 'package:equatable/equatable.dart';

class NewUser extends Equatable {
  final String userID;
  final String? email;
  final String name;
  final String phoneNo;
  final bool isAdmin;

  const NewUser(this.name, this.isAdmin, this.phoneNo,
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
