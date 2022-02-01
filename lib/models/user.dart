part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.houseNumber,
    required this.phoneNumber,
    required this.city,
    required this.picturePath,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
  id: 1,
  name: 'Kalandra',
  email: 'kalandra@gmail.com',
  address: 'Pekalongan',
  houseNumber: '23',
  phoneNumber: '08432728290',
  city: 'Pekalongan',
  picturePath: 'https://i.ibb.co/BqDJs7N/user.png',
);
