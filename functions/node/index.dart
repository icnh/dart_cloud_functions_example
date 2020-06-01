import 'package:firebase_functions_interop/firebase_functions_interop.dart';

void main() {
  functions['moin'] = functions
    .region('europe-west3')
    .https.onRequest(greet);

  functions['foo'] = functions
    .region('europe-west3')
    .firestore
    .document('/foo/{id}').onCreate(copy);
}

void greet(ExpressHttpRequest request) {
  request.response
    ..writeln('Moin, moin!!!')
    ..close();
}

Future<void> copy(DocumentSnapshot snapshot, EventContext context) async {
  final name = snapshot.data.getString('name');
  final data = DocumentData.fromMap({'name': name});
  await snapshot.firestore.collection('/bar').add(data);
}
