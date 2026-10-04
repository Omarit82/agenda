import 'package:agenda/src/model/contacto.dart';
import 'package:flutter/material.dart';

class ContactosScreen extends StatefulWidget {
  const ContactosScreen({super.key});

  @override
  State<ContactosScreen> createState() => _ContactosScreenState();
}

class _ContactosScreenState extends State<ContactosScreen> {
  /*Lista para contactos. */
  final List<Contacto> _contactos = [
    Contacto(
      nombre: "Juan Perez",
      telefono: "123456789",
      email: "juanperez@suemail.com",
    ),
    Contacto(
      nombre: "Maria Lopez",
      telefono: "987654321",
      email: "marialopez@suemail.com",
    ),
    Contacto(
      nombre: "Carlos Gomez",
      telefono: "456789123",
      email: "carlosgomez@suemail.com",
    ),
  ];
  /**Definicion de los controllers para el dialogo de add contacto */
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  /** Funcion para el modal y agregado de un contacto nuevo*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contactos"),
        automaticallyImplyLeading: false,
      ),
      body: _contactos.isEmpty
          ? const Center(child: Text("No hay contactos disponibles"))
          : ListView.builder(
              itemCount: _contactos.length,
              itemBuilder: (context, index) {
                final contacto = _contactos[index];
                return ListTile(
                  title: Text(contacto.nombre),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Teléfono: ${contacto.telefono}"),
                      Text("Email: ${contacto.email}"),
                    ],
                  ),
                );
              },
            ),
      // Oculta el botón de retroceso
    );
  }
}
