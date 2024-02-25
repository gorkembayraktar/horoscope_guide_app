import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {

  late List<Burc> tumBurclar;

  BurcListesi(){
      tumBurclar = veriKaynaginiHazirla();
      print(tumBurclar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor:Theme.of(context).colorScheme.background ,
          title: const Text(Strings.APP_NAME),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: tumBurclar.length,
              itemBuilder: (context, index){
                return BurcItem(burc: tumBurclar[index]);
              }
          )
        ) ,
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];

    for(int i = 0; i < 12; i++){
      gecici.add(
        Burc(
          burcAdi: Strings.BURC_ADLARI[i],
          burcDetayi: Strings.BURC_GENEL_OZELLIKLERI[i],
          burcTarihi: Strings.BURC_TARIHLERI[i],
          burcKucukResim: '${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png',
          burcBuyukResim: '${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i+1}.png'
        )
      );
    }

    return gecici;
  }
}