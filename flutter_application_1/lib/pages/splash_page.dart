import 'package:flutter/material.dart';

class SplasPage extends StatefulWidget {
  const SplasPage({Key? key}) : super(key: key);

  @override
  State<SplasPage> createState() => _SplasPageState();
}

class _SplasPageState extends State<SplasPage> {
  //Ciclo de vida - é executado assim que a page é criada
  @override
  void initState() {
    super.initState();
    //Simulando chamada da API - aplicando delay de 3 segundos
    //Navigator - pushReplavementNamet = Não da a oção do u
    Future.delayed(Duration(seconds: 3))
        .then((_) => Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade700,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white54,
        ),
      ),
    );
  }
}
