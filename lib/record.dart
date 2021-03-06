import 'package:cloud_firestore/cloud_firestore.dart';

class Record {
  final String title;
  final DateTime date;
  final DateTime time;
  final String description;
  final String uid;
  final List<dynamic> voteList;
  final String imageURL;
  final Map<dynamic, dynamic> seats;
  final String bank;
  final String bankAccount;
  final String price;
  final String group;
  final String groupDes;
  final String place;
  final Map<dynamic, dynamic> reservation;
  final Map<dynamic, dynamic> resConfirm;

  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['title'] != null),
        title = map['title'],
        date = map['date'].toDate(),
        time = map['time'].toDate(),
        description = map['description'],
        uid = map['uid'],
        voteList = map['voteList'],
        imageURL = map['imageURL'],
        bank = map['bank'],
        bankAccount = map['bankAccount'],
        price = map['price'],
        group = map['group'],
        groupDes = map['groupDescription'],
        place = map['place'],
        seats = map['seats'],
        reservation = map['reservation'],
        resConfirm = map['resConfirm'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);
}
