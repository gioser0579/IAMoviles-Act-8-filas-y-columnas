import 'package:flutter/material.dart';

// Corrección: main debe llamar a una instancia de la clase con ()
void main() => runApp(const AppClinicaDental());

class AppClinicaDental extends StatelessWidget {
  const AppClinicaDental({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clinica Dental Gioser',
      home: CitasFilaColumna(), // Convención: nombres de clases en Mayúsculas
    );
  }
}

class CitasFilaColumna extends StatelessWidget {
  const CitasFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Clinica Dental Gioser Fisher',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1A237E),
        actions: const [
          Icon(Icons.medical_services, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: const Column( // Se movió 'const' aquí para optimizar
                children: [
                  Text(
                    'SERVICIOS ODONTOLÓGICOS',
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold, 
                      color: Color(0xFF1A237E), 
                      letterSpacing: 1.2
                    ),
                  ),
                  Divider(),
                  Text(
                    'Excelencia y tecnología en tu salud bucal', 
                    style: TextStyle(color: Colors.grey)
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        _tarjeta(const Color(0xFF0D47A1), Icons.calendar_today, 'CITAS'),
                        const SizedBox(width: 15),
                        _tarjeta(const Color(0xFF00B8D4), Icons.clean_hands, 'LIMPIEZA'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Fila 2
                  Expanded(
                    child: Row(
                      children: [
                        _tarjeta(const Color(0xFF26C6DA), Icons.biotech, 'RAYOS X'),
                        const SizedBox(width: 15),
                        _tarjeta(const Color(0xFF01579B), Icons.health_and_safety, 'CIRUGÍA'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Fila 3
                  Expanded(
                    child: Row(
                      children: [
                        _tarjeta(const Color(0xFF546E7A), Icons.map, 'MAPA'),
                        const SizedBox(width: 15),
                        _tarjeta(const Color(0xFF37474F), Icons.phone, 'TELÉFONO'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _tarjeta(Color color, IconData icono, String titulo) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, color: Colors.white, size: 40),
            const SizedBox(height: 10),
            Text(
              titulo,
              style: const TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold, 
                fontSize: 13
              ),
            ),
          ],
        ),
      ),
    );
  }
}