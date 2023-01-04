import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String ruta;
  final String mensaje;
  final String mensaje2;

  const Labels({
    Key? key, 
    required this.ruta,
    required this.mensaje,
    required this.mensaje2
    }) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(mensaje, style: const TextStyle( color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300 ),),

          const SizedBox(height: 10,),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ruta);
            },
            child: Text(mensaje2, style: TextStyle( color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold ),))
        ],
      ),
    );
  }
}