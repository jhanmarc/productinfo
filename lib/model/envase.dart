import 'package:firebase_database/firebase_database.dart';

class Envase{
  String _id;
  String _producto;
  String _envase;
  String _presentaciN;
  String _caloria;
  String _ingredientesPeligrosos;
  String _azucar;
  String _carbohidratos;
  String _proteina;
  String _sodio;
  String _grasaSaturada;
  String _grasas;
  String _grasaTrans;
  String _uRLImagen;
  String _tipo;
  String _valoraciNEstrellas;
  String _codigoBarras;           

  Envase(this._id,this._producto,this._envase,this._presentaciN,
  this._caloria,this._ingredientesPeligrosos,this._azucar,this._carbohidratos,
  this._proteina,this._sodio,this._grasaSaturada,this._grasas,this._grasaTrans,
  this._uRLImagen,this._tipo,this._valoraciNEstrellas,this._codigoBarras);

  Envase.map(dynamic obj){

    this._producto = obj['producto'];
    this._envase = obj['envase'];
    this._presentaciN = obj['presentaciN'];
    this._caloria = obj['caloria'];
    this._ingredientesPeligrosos = obj['ingredientesPeligrosos'];    
    this._azucar = obj['azucar'];
    this._proteina = obj['proteina'];
    this._sodio = obj['sodio'];
    this._grasaSaturada = obj['grasaSaturada'];
    this._grasas = obj['grasas'];
    this._grasaTrans = obj['grasaTrans'];
    this._uRLImagen = obj['RLImagen'];
    this._grasaSaturada = obj['grasaSaturada'];
    this._tipo = obj['tipo'];
    this._valoraciNEstrellas = obj['valoraciNEstrellas'];
    this._codigoBarras = obj['codigoBarras'];
  }

  String get id => _id;
  String get producto => _producto;
  String get envase => _envase;
  String get presentaciN => _presentaciN;
  String get caloria => _caloria;
  String get ingredientesPeligrosos => _ingredientesPeligrosos;
  String get azucar => _azucar;
  String get carbohidratos => _carbohidratos;
  String get proteina => _proteina;
  String get sodio => _sodio;
  String get grasaSaturada => _grasaSaturada;
  String get grasas => _grasas;
  String get grasaTrans => _grasaTrans;
  String get uRLImagen => _uRLImagen;
  String get tipo => _tipo;
  String get valoraciNEstrellas => _valoraciNEstrellas;
  String get codigoBarras => _codigoBarras;           

  Envase.fromSnapShop(DataSnapshot snapshot){
    _id = snapshot.key;
    _producto =snapshot.value['producto'];
    _envase = snapshot.value['envase'];
    _presentaciN = snapshot.value['presentaciN'];
    _caloria = snapshot.value['caloria'];
    _ingredientesPeligrosos = snapshot.value['ingredientesPeligrosos'];    
    _azucar = snapshot.value['azucar'];
    _proteina = snapshot.value['proteina'];
    _sodio = snapshot.value['sodio'];
    _grasaSaturada = snapshot.value['grasaSaturada'];
    _grasas = snapshot.value['grasas'];
    _grasaTrans = snapshot.value['grasaTrans'];
    _uRLImagen = snapshot.value['RLImagen'];
    _grasaSaturada = snapshot.value['grasaSaturada'];
    _tipo = snapshot.value['tipo'];
    _valoraciNEstrellas = snapshot.value['valoraciNEstrellas'];
    _codigoBarras = snapshot.value['codigoBarras'];
  }  
}
