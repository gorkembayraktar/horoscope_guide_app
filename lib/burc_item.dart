import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc burc;
  const BurcItem({super.key, required this.burc});


  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BurcDetay(burc: burc)));
          },
          leading: Image.asset('assets/${burc.burcKucukResim}') ,
          title: Text(burc.burcAdi, style: myTextStyle.headlineSmall,),
          subtitle: Text(burc.burcTarihi, style: myTextStyle.bodySmall,),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.pink),
        ),
      ),
    );
  }
}
