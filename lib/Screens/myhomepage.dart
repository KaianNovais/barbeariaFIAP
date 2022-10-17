import 'dart:ui';

import 'package:barbearia/Screens/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Image.network("https://i.pinimg.com/736x/02/12/58/021258bcc3a8200fa3c43c4328c7f115.jpg"),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Cadastro() ));
                
              },
              child:const ListTile(
                trailing: Icon(Icons.arrow_forward),
                title: Text(" Agendar"),
                subtitle: Text(
                  "Agente um horário em nosso salão.",
                ),
              ),
            ),
             GestureDetector(
              onTap: (){
    
              },
              child:const ListTile(
                trailing: Icon(Icons.arrow_forward),
                title: Text(" Principais serviços"),
                subtitle: Text(
                  "Conheça nossos principais serviços.",
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          "Barbearia FIAP",
          style: GoogleFonts.fuzzyBubbles(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
              "https://fastcorpbr.com/wp-content/uploads/2019/04/reforma-de-barbearia.jpg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "     A Barbearia FIAP tem trago o que há de melhor em embelezamento para os alunos dos cursos de graduação em Sistema de Informação.",
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "     Fundada em 2022, a barbearia conta com muitos benefícios para os clientes.",
              style: GoogleFonts.roboto(color: Colors.black, fontSize: 18),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.network(
                    "https://img.freepik.com/fotos-gratis/cliente-fazendo-o-corte-de-cabelo-em-um-salao-de-barbearia_1303-20861.jpg",
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.network(
                    "https://cursosbellarosa.com.br/wp-content/uploads/2020/11/corte_barba_000-600x377.jpg",
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.network(
                    "https://blog.trinks.com/wp-content/uploads/2019/07/Capa-Blog-Tend%C3%AAncias-2019-cortes-e-cores-de-cabelo-masculino.png",
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
