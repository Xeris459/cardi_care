import 'package:cardi_care/views/TekaTekiSilang/models/tts_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: constant_identifier_names
const String COLLECTION_NAME = 'tts';

class TtsService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  late final CollectionReference _ttsRef;

  Stream<QuerySnapshot> getTts() {
    return _ttsRef.snapshots();
  }

  Future<TtsModel> getTtsData(String id) async {
    DocumentSnapshot ttsData =
        await firestore.collection(COLLECTION_NAME).doc(id).get();

    return TtsModel.fromMap(ttsData.data() as Map<String, dynamic>);
  }
}
