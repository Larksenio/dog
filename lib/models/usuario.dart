class Usuario {
  final String id;
  final String nombre;
  final String email;
  final String tipoUsuario; // 'propietario' o 'paseador'

  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    required this.tipoUsuario,
  });

  // Constructor para crear un Usuario a partir de un documento de Firestore
  factory Usuario.fromMap(Map<String, dynamic> data, String documentId) {
    return Usuario(
      id: documentId,
      nombre: data['nombre'],
      email: data['email'],
      tipoUsuario: data['tipoUsuario'],
    );
  }

  // Método para convertir un Usuario a un mapa (útil para guardar en Firestore)
  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'email': email,
      'tipoUsuario': tipoUsuario,
    };
  }
}