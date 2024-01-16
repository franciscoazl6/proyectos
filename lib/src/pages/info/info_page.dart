import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoPage extends StatelessWidget{
  List<String> opciones = ['Opción 1', 'Opción 2', 'Opción 3'];
  String seleccionActual = 'Opción 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 120,
          color: Color.fromRGBO(0, 155, 10, 1),
          child: _textBottomInfo(),
        ),
        body:SafeArea(
          child: Column(
            children: [
              _buttonBack(),
              Row(
                children: [
                  _imageCover(),
                  _textAppName()
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'dr. XXX XXXXXXX\n El Dr. XXX es un médico dedicado con experiencia en medicina interna.Se especializa en enfermedades cardíacas y ofrece atención médica compasiva.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  _imageDoctor()
                ],
              ),
              Text('Especialidad - Cardiologia',style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        )
    );
  }

  Widget _imageCover(){
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top:25,bottom: 15),
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          'assets/img/logopmh.jpg',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
  Widget _textAppName(){
    return Container(
      margin: const EdgeInsets.only(top: 25,left: 20),
      child: const Text(
        'POSTA MEDICA HUANCAYO',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
  Widget _imageDoctor(){
    return CircleAvatar(
      backgroundImage: AssetImage('assets/img/img_3.png'),
      radius: 60,
      backgroundColor: Colors.white,
    );
  }
  Widget _buttonBack() {
    return SafeArea(
        child: Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(left: 20,top: 35),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 30,
            ),
          ),
        )
    );
  }
  Widget _textBottomInfo(){
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15,right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Direccion Jr. xxxxxxxxx',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                ),
              ),
              SizedBox(height: 7),
              Text(
                'N° 98425887468',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                ),
              )
            ],
          ),
        ),
        Text(
          'POSTA MEDICA HUANCAYO',
          style: TextStyle(
              color:Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 11
          ),
        )
      ],
    );
  }
}