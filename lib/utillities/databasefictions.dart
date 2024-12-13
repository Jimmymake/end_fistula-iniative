import 'package:cloud_firestore/cloud_firestore.dart';

class databasefuctions {
  Future regestermother(Map<String, dynamic> _motherinfor, String _id,
      String _collectionname) async {
    return await FirebaseFirestore.instance
        .collection(_collectionname)
        .doc(_id)
        .set(_motherinfor);
  }

  Future communuityreport(
      Map<String, dynamic> _cominfor, String _comid, String _comdetails) async {
    return await FirebaseFirestore.instance
        .collection(_comdetails)
        .doc(_comid)
        .set(_cominfor);
  }

  Future atenataldetails(Map<String, dynamic> _atenatalinfor, String _atenatald,
      String _atenatalname) async {
    return await FirebaseFirestore.instance
        .collection(_atenatalname)
        .doc(_atenatald)
        .set(_atenatalinfor);
  }

//  Future communityoutreach(Map<String, dynamic> _commap, String _com1dtald,
//       String _comname) async {
//     return await FirebaseFirestore.instance
//         .collection(_comname)
//         .doc(_com1dtald)
//         .set(_commap);
//   }

  
}
