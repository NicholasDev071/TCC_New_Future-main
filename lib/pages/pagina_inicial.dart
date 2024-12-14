import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_future/pages/avancado.dart';
import 'package:new_future/pages/basico.dart';
import 'package:new_future/pages/intermediario.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  List pages = [const Basico(), const Intermediario(), const Avancado()];
  int cont = 0;
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          color: Colors.orange,
          child: Column(
            children: [
              Container(
                width: 196,
                height: 48,
                margin: const EdgeInsets.only(top: 32, bottom: 29),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 245, 245, 245),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                          offset: Offset(0, 4))
                    ]),
                child: const Center(
                  child: Text(
                    'TUTORIAL',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: cont == 0
                          ? null
                          : () {
                              setState(() {
                                cont = 0;
                              });
                            },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(88, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Básico',
                        style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: cont == 1
                          ? null
                          : () {
                              setState(() {
                                cont = 1;
                              });
                            },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(115, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Intermediario',
                        style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: cont == 2
                          ? null
                          : () {
                              setState(() {
                                cont = 2;
                              });
                            },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(88, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text(
                        'Avançado',
                        style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: pages[cont])
            ],
          ),
        ),
      ),
    );
  }
}
