import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc burc;
  const BurcDetay({ super.key, required this.burc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

  Color appbarRengi = Colors.blue;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    // perfomans için
    WidgetsBinding.instance!.addPostFrameCallback((_) =>  appBarRenginiBul());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("${widget.burc.burcAdi} Burcu  ve Özellikleri", style: TextStyle(color: Colors.white),),
              centerTitle: true,
              background: Image.asset('assets/${widget.burc.burcBuyukResim}', fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(16),
                child: Text(
                  widget.burc.burcDetayi,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> appBarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage('assets/${widget.burc.burcBuyukResim}')
    );
    setState(() {
      appbarRengi = _generator.dominantColor!.color;
    });
  }
}
