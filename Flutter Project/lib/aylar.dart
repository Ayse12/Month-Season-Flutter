//mevsim.dart'daki oluşturduğum yapının çağırılması için import etme işlemi yapıldı.
import 'mevsim.dart';

class Aylistele {
  //Dizimin ilk indisini sıfıraeşitledim.
  int _ayNo = 0;

  //mevsim.dart'da tanımladığım yapıya eleman eklemek
  List<Ay> _aylar = [
    Ay(a1: 'Aralık', a2: 'Ocak', a3: 'Şubat' , m: 1),
    Ay(a1: 'Mart', a2: 'Nisam', a3: 'Mayıs' , m: 2),
    Ay(a1: 'Haziran', a2: 'Temmuz', a3: 'Ağustos' , m: 3),
    Ay(a1: 'Eylül', a2: 'Ekim', a3: 'Kasım' , m: 4),
  ];
  //Yukarıdaki listede bulunan elemanları butonlara basıldıkça ekrana getirebilecek fonksiyonu ifler ile tanımladım.
  String aylariAl(int _ayNo){

  if(_aylar[_ayNo].mevsimNo == 1){
      return _aylar[_ayNo].ay1 + ',' + _aylar[_ayNo].ay2 + ',' + _aylar[_ayNo].ay3 ;
    }
  if(_aylar[_ayNo].mevsimNo == 2){
    return _aylar[_ayNo].ay1 + ',' + _aylar[_ayNo].ay2 + ',' + _aylar[_ayNo].ay3 ;
  }
  if(_aylar[_ayNo].mevsimNo == 3){
    return _aylar[_ayNo].ay1 + ',' + _aylar[_ayNo].ay2 + ',' + _aylar[_ayNo].ay3 ;
  }
  if(_aylar[_ayNo].mevsimNo == 4){
    return _aylar[_ayNo].ay1 + ',' + _aylar[_ayNo].ay2 + ',' + _aylar[_ayNo].ay3 ;
  }
  }

}