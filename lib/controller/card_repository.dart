import 'package:flutter/material.dart';
import 'package:new_future/models/card_model.dart';

class CardRepository {
  static List<CardModel> cardBasico = [
    CardModel(
        titulo: "Como colocar senha no celular",
        icon: const Icon(Icons.lock),
        urlYT: 'https://youtu.be/XzUUJooZzlg'),
    CardModel(
        titulo: "Aprendendo a conectar wifi",
        icon: const Icon(Icons.wifi),
        urlYT: 'https://youtube.com/shorts/Qbqul-hdoO4?feature=share'),
    CardModel(
        titulo: 'Aprendendo a fazer ligações',
        icon: const Icon(Icons.phone),
        urlYT: 'https://youtu.be/a_q-0SIKRbI'),
    CardModel(
        titulo: 'Aprendendo a usar despertador',
        icon: const Icon(Icons.alarm),
        urlYT: 'https://youtu.be/Ek6y-wUUavs')
  ];

  static List<CardModel> cardIntermediario = [
    CardModel(
        titulo: 'Criando senhas seguras',
        icon: const Icon(Icons.lock),
        urlYT: 'https://youtube.com/shorts/S8M9PmHjYw0?feature=share'),
    CardModel(
        titulo: 'Protegendo suas informações',
        icon: const Icon(Icons.lock),
        urlYT: 'https://youtu.be/Ajn-30NSmTo'),
    CardModel(
        titulo: 'Antivirus',
        icon: const Icon(Icons.lock),
        urlYT: 'https://youtu.be/xJAkCxTVuo0'),
    CardModel(
        titulo: 'Dicas de segurança',
        icon: const Icon(Icons.lock),
        urlYT: 'https://youtube.com/shorts/5VPHb559sCs?feature=share'),
  ];

  static List<CardModel> cardAvancado = [
    CardModel(
        titulo: 'Criando conta no TikTok',
        icon: const Icon(Icons.tiktok),
        urlYT: 'https://youtu.be/Ss0wqgkFW78'),
    CardModel(
        titulo: 'Criando conta facebook',
        icon: const Icon(Icons.facebook),
        urlYT: 'https://youtu.be/rZeebRdgWao'),
    CardModel(
        titulo: 'Aprendendo a utilizar o facebook',
        icon: const Icon(Icons.facebook),
        urlYT: 'https://youtu.be/ioAt1xRrXCk'),
    CardModel(
        titulo: 'Status WhatsApp',
        icon: const Icon(Icons.chat),
        urlYT: 'https://youtu.be/BhzXe9nZjig'),
    CardModel(
        titulo: 'Usando o Youtube',
        icon: const Icon(Icons.key),
        urlYT: 'https://youtu.be/0fJX8p9hmh0'),
  ];
}
