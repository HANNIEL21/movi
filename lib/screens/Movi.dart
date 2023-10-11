import 'package:movi/export.dart';

class MoviScreen extends StatefulWidget {
  const MoviScreen({super.key});

  @override
  State<MoviScreen> createState() => _MoviScreenState();
}

class _MoviScreenState extends State<MoviScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              children: [
                Slide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
