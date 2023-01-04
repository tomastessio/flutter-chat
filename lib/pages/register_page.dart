// ignore_for_file: sized_box_for_whitespace

import 'package:chat/widgets/custom_inputfield.dart';
import 'package:chat/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xffF2F2F2),
    body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
                const Logo(titulo: 'Regístrate',),
        
                _Form(),
        
                const Labels(
                  ruta: 'login',
                  mensaje: '¿Ya tenés una cuenta?', 
                  mensaje2: 'Ingresar con mi cuenta',
                  ),
        
                const Text('Términos y condiciones de uso', style: TextStyle(fontWeight: FontWeight.w200),)
              
              ],
            ),
          ),
        )
       ),
    );
  }
} 



class _Form extends StatefulWidget {

  @override
  State<_Form> createState() => __FormState();
}
class __FormState extends State<_Form> {

  final emailCtrl = TextEditingController();
  final passCtrl  = TextEditingController();
  final nameCtrl  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [

            CustomInput(
            icon: Icons.person_outline, 
            placeholder: 'Nombre', 
            textController: nameCtrl, 
            keyboardType: TextInputType.text,),


            CustomInput(
            icon: Icons.mail_outline, 
            placeholder: 'Correo electrónico', 
            textController: emailCtrl, 
            keyboardType: TextInputType.emailAddress,),

            CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña', 
            textController: passCtrl, 
            isPassword: true, 
            keyboardType: TextInputType.text,),

            BotonAzul(
              buttonText: 'Confirmar', 
              onPressed: () {
                print(emailCtrl.text);
                print(passCtrl.text);
              })
            

        ],
      ),
    );
  }
}

