import 'package:flutter/material.dart';

// Bildirim çubuğu için package kullanımı.
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/cupertino.dart';

//Dartlar arası bağlantıyı sağlamak için kullanıldı.
import 'aylar.dart';
Aylistele aylistele = Aylistele();


void main() => runApp(MyApp());

//Stateless ile durağan ve değişmez kodlar yazmak için kullanıyorum. Yani sadece kodda yaptığım tasarımlar karşıma çıkıyor.Ekranda hiç bir değişiklik gerçekleştirilemez
class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child: Padding(
            //Padding ile yatay olarak içeriden başlamak için tanımladım.
            padding: EdgeInsets.symmetric(horizontal: 10.0),

            //StatefulWidget de yazdıklarımı çekmek için
            child: MevsimPage(),
          ),
        ),
      ),
    );
  }
}

//stful yazarak çıkan StatefulWidgetine bastığımda kalıplaşmış yapı ekrana yazılıyor. Ve ben bu yapıyla ekranda yapılabilecek değişiklikleri kontrol edebiliyorum.
class MevsimPage extends StatefulWidget {
  @override
  _MevsimPageState createState() => _MevsimPageState();
}

class _MevsimPageState extends State<MevsimPage> {

  //Kullanıcı seçimine bağlı olarak ayları diziden veya listeden çeken fonksiyondur.
  void mevsimSec (int kullaniciSecimi){

    //Ekranda oluşabilecek değişiklikleri işleme alan metoddur. (setstate)
    setState(() {

      //Butonları 1,2,3,4 diye tanımladığım ve buna bağlı olarak ekrana gelen alert ekranındaki değişiklikleri if ler ile kontrol etmiş oluyorum.
      if(kullaniciSecimi == 1 ){
        //Alert ekranı
        Alert(
          context: context,
          //image klasörümdeki aldığım resim. Ekstra fonksiyon oluşturmaya çalıştım ama alert içinde fonksiyon çağırılmıyor.
          image: Image.asset('images/mevsim1.png'),
          title: 'Soğuk Aydasın',
          //Açıklama kısmını aylar.dart içindeki veriyi çekmek için tanımladığım satır.
          desc: aylistele.aylariAl(0),
        ).show();

      }

      //Yukarıdaki açıklamalar buradada geçerlidir.
      if(kullaniciSecimi == 2 ){
        Alert(
          context: context,
          image: Image.asset('images/mevsim2.png'),
          title: 'Sıcaklar geliyor',
          desc: aylistele.aylariAl(1),
        ).show();

      }
      //Yukarıdaki açıklamalar buradada geçerlidir.
      if(kullaniciSecimi == 3 ){
        Alert(
          context: context,
          image: Image.asset('images/mevsim3.png'),
          title: 'Sıcak',
          desc: aylistele.aylariAl(2),
        ).show();

      }
      //Yukarıdaki açıklamalar buradada geçerlidir.
      if(kullaniciSecimi == 4 ){
        Alert(
          context: context,
          image: Image.asset('images/mevsim4.png'),
          title: 'Soğuklar geliyor',
          desc: aylistele.aylariAl(3),
        ).show();

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //Dikey olarak tasarımsal  kodların yazılması için kullandığım ve stateless de  çağrılan Statefulun geri döndürülmesini sağladım.
    return Column(
      //Herşeyin merkezde konumlandırılması
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //Expanded için kod tekrarının önlenmesi açısından fonksiyon veya class oluşturulmadı. Nedeni ise yazı ve resim için kullanılan Expanded'ın aynı kodları almasıdır.

        //Ekran çözünürlüğüne göre hizalama yapmak için (responsive) yani her cihazda tasarımın aynı görünmesini ve kaymaları engellemeyi sağladığım bir widget.
        Expanded(
          //Padding içe doğru boyutlandırmayı sağlar.
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              //Text tanımlaması
              child: Text(
                'Bir yılda 4 mevsim vardır. Bunlar ilkbahar, yaz, sonbahar, kış mevsimlerdir. Her mevsimde ise üç adet ay olmak üzere toplamda bir yılda 12 ay yer almaktadır. Bunları öğrenmek için lütfen tıklayınız.',
                //Yazının kenarlarını hizalama
                textAlign: TextAlign.justify,
                style: TextStyle(
                  //Yazının boyutu
                  fontSize: 25.0,
                  //Yazının rengi
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            //Resim tanımlama
            child: Image(
              image: AssetImage('images/4mevsim.png'),
            ),
          ),
        ),

        //Yatay olarak tasarım
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                //Buton oluşturmak için kullandığım yapı
                child: FlatButton(
                  //Butonun arka plan ve yazı için kullandığım renklerin belirlenmesi
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text(
                    'Kış',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),

                  //Butona tıklandığında oluşacak durumlar için kullanırım.
                  onPressed: (){
                    //Tanımladığım mevsimSec fonksiyonunun çağırılması
                    mevsimSec(1);
                  },
                ),
              ),
            ),

            //Buton tasarımı
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text(
                    'İlkbahar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                  onPressed: (){
                    mevsimSec(2);
                  },
                ),
              ),
            ),
          ],
        ),
        //Yatay olarak tasarım
        Row(
          children: <Widget>[
            //Buton tasarımı
            Expanded(

              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text(
                    'Yaz',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                  onPressed: (){
                    mevsimSec(3);
                  },
                ),
              ),
            ),

            //Buton tasarımı
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text(
                    'Sonbahar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                  onPressed: (){
                    mevsimSec(4);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
