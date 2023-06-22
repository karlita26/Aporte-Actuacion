class Silla {
  final int id;
  final String nombre;
  final String material;
  final String precio;
  final String descripcion;
  bool read;

  Silla({
    required this.id,
    required this.nombre,
    required this.material,
    required this.precio,
    required this.descripcion,
    this.read = false,
  });
}
