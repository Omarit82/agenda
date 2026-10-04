import 'package:agenda/src/model/contacto.dart';
// Incluye ChangeNotifier, que permite avisar cuando cambian los datos.
import 'package:flutter/foundation.dart';


class ContactosProvider extends ChangeNotifier {
  // Guarda los contactos en memoria mientras exista este Provider.
  // El guion bajo hace que la variable sea privada a este archivo.
  final List<Contacto> _contactos = [];

  // Permite consultar los contactos desde otras partes de la app.
  // Devuelve una lista que no puede modificarse directamente:
  // los cambios deben hacerse mediante los métodos del Provider.
  List<Contacto> get contactos => List.unmodifiable(_contactos);

  // Recibe un contacto y lo agrega a la lista.
  void agregarContacto(Contacto contacto) {
    _contactos.add(contacto);

    // Avisa a los widgets que escuchan este Provider
    // para que se reconstruyan y muestren la lista actualizada.
    notifyListeners();
  }
}