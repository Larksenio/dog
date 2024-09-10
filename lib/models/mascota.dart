class Mascota {
  final String id;
  final String nombre;
  final String tipo; // Ej. 'Perro', 'Gato'
  final int edad; // En años
  final String raza;

  Mascota({
    required this.id,
    required this.nombre,
    required this.tipo,
    required this.edad,
    required this.raza,
  });

  // Constructor para crear una Mascota a partir de un documento de Firestore
  factory Mascota.fromMap(Map<String, dynamic> data, String documentId) {
    return Mascota(
      id: documentId,
      nombre: data['nombre'],
      tipo: data['tipo'],
      edad: data['edad'],
      raza: data['raza'],
    );
  }

  // Método para convertir una Mascota a un mapa (útil para guardar en Firestore)
  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'tipo': tipo,
      'edad': edad,
      'raza': raza,
    };
  }
}