import 'package:br_ingredientes_icons/ingredientes_data.dart';
import 'package:flutter/material.dart';
import 'package:br_ingredientes_icons/br_ingredientes_icons.dart';

final Map<String, List<String>> ingredientAliasesExemplo = ingredientAliases;

final List<String> todasChavesIcones = ingredientAliasesExemplo.keys.toList()
  ..sort();

void main() {
  runApp(const IngredientesDemoApp());
}

class IngredientesDemoApp extends StatelessWidget {
  const IngredientesDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'br_ingredientes_icons Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orangeAccent,
            brightness: Brightness.light,
          ),
          fontFamily: 'Poppins',
          cardTheme: CardTheme(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
          appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black87,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87))),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orangeAccent,
            brightness: Brightness.dark,
          ),
          fontFamily: 'Poppins',
          cardTheme: CardTheme(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
          ),
          appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              titleTextStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ))),
      themeMode: ThemeMode.system,
      home: const IngredientesShowcaseScreen(),
    );
  }
}

class IngredientesShowcaseScreen extends StatefulWidget {
  const IngredientesShowcaseScreen({super.key});

  @override
  State<IngredientesShowcaseScreen> createState() =>
      _IngredientesShowcaseScreenState();
}

class _IngredientesShowcaseScreenState
    extends State<IngredientesShowcaseScreen> {
  String _searchTerm = '';
  List<String> _filteredIconKeys = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredIconKeys = [...todasChavesIcones];
  }

  void _filterIcons(String query) {
    final lowerCaseQuery = query.toLowerCase().trim();
    setState(() {
      _searchTerm = lowerCaseQuery;
      if (lowerCaseQuery.isEmpty) {
        _filteredIconKeys = [...todasChavesIcones]; // Já está ordenado
      } else {
        _filteredIconKeys = todasChavesIcones.where((key) {
          final aliases = ingredientAliasesExemplo[key] ?? [];
          final normalizedKey = key.toLowerCase().replaceAll('_', ' ');
          if (normalizedKey.contains(lowerCaseQuery)) return true;
          return aliases
              .any((alias) => alias.toLowerCase().contains(lowerCaseQuery));
        }).toList()
          ..sort(); // Aqui você ordena os filtrados também
      }
    });
  }

  String _formatNome(String nome) {
    final palavras = nome.split('_');
    return palavras.map((p) => p[0].toUpperCase() + p.substring(1)).join(' ');
  }

  void _showIconDetails(BuildContext context, String iconKey) {
    final aliases = ingredientAliasesExemplo[iconKey] ?? [];
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.3,
          maxChildSize: 0.8,
          expand: false,
          builder: (_, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.all(24.0),
                children: <Widget>[
                  Center(
                    child: Container(
                      width: 40,
                      height: 5,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[isDark ? 700 : 300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Text(
                    iconKey.replaceAll('_', ' ').toUpperCase(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: Hero(
                      tag: 'icon_detail_$iconKey',
                      child: BrIngredienteIconSmart(
                        nome: iconKey,
                        size: 100,
                        fallback: 'default',
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text('Chave do Ícone: "$iconKey"',
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 10),
                  if (aliases.isNotEmpty) ...[
                    _buildTranslationRow(
                        'Português:', aliases.length > 0 ? aliases[0] : 'N/A'),
                    _buildTranslationRow(
                        'Inglês:', aliases.length > 1 ? aliases[1] : 'N/A'),
                    _buildTranslationRow(
                        'Espanhol:', aliases.length > 2 ? aliases[2] : 'N/A'),
                    _buildTranslationRow(
                        'Francês:', aliases.length > 3 ? aliases[3] : 'N/A'),
                  ] else
                    const Text('Nenhum alias encontrado.',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          textStyle: const TextStyle(fontSize: 16)),
                      child: const Text('Fechar'),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildTranslationRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          const SizedBox(width: 8),
          Expanded(child: Text(value, style: const TextStyle(fontSize: 15))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)], // Roxo + azul
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Ícones de Ingredientes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Coleção de ícones para aplicativos de receitas e gastronomia",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1), // sem fundo sólido
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.white),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Buscar ingrediente em qualquer idioma",
                              hintStyle: TextStyle(color: Colors.white70),
                              filled: false, // ✅ impede que o fundo fique opaco
                            ),
                            onChanged: _filterIcons,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _filteredIconKeys.isEmpty && _searchTerm.isNotEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search_off,
                              size: 60, color: Colors.grey[400]),
                          const SizedBox(height: 16),
                          Text(
                            'Nenhum ícone encontrado para "$_searchTerm".',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.all(20.0),
                      itemCount: _filteredIconKeys.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (context, index) {
                        final iconKey = _filteredIconKeys[index];
                        return TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0.0, end: 1.0),
                          duration: Duration(milliseconds: 500 + (index * 50)),
                          curve: Curves.easeOutCubic,
                          builder: (context, double value, child) {
                            return Opacity(
                              opacity: value,
                              child: Transform.translate(
                                offset: Offset(0, 50 * (1 - value)),
                                child: child,
                              ),
                            );
                          },
                          child: InkWell(
                            onTap: () => _showIconDetails(context, iconKey),
                            borderRadius: BorderRadius.circular(16.0),
                            child: Card(
                              elevation: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Hero(
                                      tag: 'icon_detail_$iconKey',
                                      child: BrIngredienteIconSmart(
                                        nome: iconKey,
                                        size: 90,
                                        fallback: 'default',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      _formatNome(iconKey),
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20.0),
              child: Center(
                child: Text(
                  'by: David Kalil Braga',
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
