import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_future/controller/card_repository.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Avancado extends StatefulWidget {
  const Avancado({super.key});

  @override
  State<Avancado> createState() => _AvancadoState();
}

class _AvancadoState extends State<Avancado> {
  final cardAvancado = CardRepository.cardAvancado;
  late YoutubePlayerController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
          child: ListTile(
            leading: Icon(cardAvancado[index].icon.icon, size: 66),
            title: Text(
              cardAvancado[index].titulo,
              style: const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            contentPadding: const EdgeInsets.all(20),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  controller = YoutubePlayerController(
                    initialVideoId: YoutubePlayer.convertUrlToId(
                        cardAvancado[index].urlYT)!,
                    flags: const YoutubePlayerFlags(
                      autoPlay: true,
                      mute: false,
                    ),
                  );
                  return YoutubePlayerBuilder(
                      player: YoutubePlayer(
                        controller: controller,
                        onReady: () {
                          controller.toggleFullScreenMode();
                        },
                        onEnded: (metaData) {
                          SystemChrome.setPreferredOrientations(
                              [DeviceOrientation.portraitUp]);
                          Navigator.pop(context);
                        },
                      ),
                      builder: (context, player) {
                        return player;
                      });
                },
              ));
            },
          ),
        );
      },
      itemCount: cardAvancado.length,
    );
  }
}
