import 'usuario.dart';

class Paseador extends Usuario {
  final double rating;
  final int experiencia; // en años
  final String ubicacion;

  Paseador({
    required String id,
    required String nombre,
    required String email,
    required String tipoUsuario, // Debería ser 'paseador'
    required this.rating,
    required this.experiencia,
    required this.ubicacion,
  }) : super(id: id, nombre: nombre, email: email, tipoUsuario: tipoUsuario);

  // Constructor para crear un Paseador a partir de un documento de Firestore
  factory Paseador.fromMap(Map<String, dynamic> data, String documentId) {
    return Paseador(
      id: documentId,
      nombre: data['nombre'],
      email: data['email'],
      tipoUsuario: data['tipoUsuario'],
      rating: data['rating'].toDouble(),
      experiencia: data['experiencia'],
      ubicacion: data['ubicacion'],
    );
  }

  // Método para convertir un Paseador a un mapa (útil para guardar en Firestore)
  @override
  Map<String, dynamic> toMap() {
    return super.toMap()
      ..addAll({
        'rating': rating,
        'experiencia': experiencia,
        'ubicacion': ubicacion,
      });
  }
}