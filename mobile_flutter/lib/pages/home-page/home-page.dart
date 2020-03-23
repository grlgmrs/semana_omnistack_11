import 'package:flutter/material.dart';
import 'package:mobile_flutter/custom/style/default-measures.dart';
import 'package:mobile_flutter/custom/widgets/occurrence-card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEFEEF5),
      appBar: AppBar(
        title: Text('Be The Hero'),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: DefaultMeasures.horizontalPadding,
            vertical: DefaultMeasures.verticalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Bem vindo!',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 34
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Escolha um dos casos abaixo\ne salve o dia.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  height: 1.3,
                ),
              ),
              SizedBox(height: 30,),
              OccurrenceCard(
                ocurrence: 'Cadelinha atropelada',
                ong: 'APAD',
                value: '120,00 reais',
                onPressed: () {},
              ),
              SizedBox(height: 30,),
              OccurrenceCard(
                ocurrence: 'Cadelinha atropelada',
                ong: 'APAD',
                detailedDescription: 'A cadelinha Jolie foi atropelada por um carro no bairro Santana e teve que passar por uma cirurgia às pressas.',
                value: '120,00 reais',
              ),
            ],
          ),
        ),
      )
    );
  }
}