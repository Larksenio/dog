class Reserva {
  final String id;
  final String idUsuario;
  final String idPaseador;
  final String servicio; // Tipo de servicio solicitado (Ej. 'Paseo', 'Guardería')
  final DateTime fecha;
  final String estado; // Ej. 'Pendiente', 'Completado', 'Cancelado'

  Reserva({
    required this.id,
    required this.idUsuario,
    required this.idPaseador,
    required this.servicio,
    required this.fecha,
    required this.estado,
  });

  // Constructor para crear una Reserva a partir de un documento de Firestore
  factory Reserva.fromMap(Map<String, dynamic> data, String documentId) {
    return Reserva(
      id: documentId,
      idUsuario: data['idUsuario'],
      idPaseador: data['idPaseador'],
      servicio: data['servicio'],
      fecha: DateTime.parse(data['fecha']),
      estado: data['estado'],
    );
  }

  // Método para convertir una Reserva a un mapa (útil para guardar en Firestore)
  Map<String, dynamic> toMap() {
    return {
      'idUsuario': idUsuario,
      'idPaseador': idPaseador,
      'servicio': servicio,
      'fecha': fecha.toIso8601String(),
      'estado': estado,
    };
  }
}