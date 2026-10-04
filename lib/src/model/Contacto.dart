class Contacto {
  
  final String nombre;
  final String apellido;
  final String telefono;
  final String email;
  final String direccion;

  final DateTime? fechaNacimiento;

  Contacto({
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.email,
    required this.direccion,
    this.fechaNacimiento,
  });

  // Devuelve el nombre y apellido juntos para mostrarlos.
  String get nombreCompleto => '$nombre $apellido'.trim();
}