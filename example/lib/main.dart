import 'package:flutter/material.dart';
import 'package:br_ingredientes_icons/br_ingredientes_icons.dart';


/*final List<String> ingredientes = [
  'abobrinha',
  'acucar',
  'alecrim',
  'lettuce',      // 'alface'
  'strawberry',   // 'morango'
  'pinapple',     // não tem —> faça fallback!
  'salt',         // 'sal'
  'bread',        // 'pao_de_forma'
  'baguette',     // 'pao_frances'
  "queijo",
  "cheese",       // 'queijo'
  "fromage",      // 'queijo'
  'queso',        // 'queijo'
  'tomillo',      // 'tomilho'
  'gorgonzola',
  'parmesan',
  'fromage',
  'mozzarella'
];*/

final List<String> ingredientes = [
  'default',
  'massa_de_pizza'
  'abobrinha',
  'acucar',
  'alecrim',
  'alface',
  'alho',
  'arroz',
  'atum',
  'aveia',
  'azeite',
  'banana',
  'berinjela',
  'beterraba',
  'calabresa',
  'caldo_de_carne',
  'caldo_de_legumes',
  'carne_moida',
  'cebola',
  'cebola_roxa',
  'cebolinha',
  'cenoura',
  'champignon',
  'couve',
  'coxa_de_frango',
  'cravo_da_india',
  'creme_de_leite',
  'espinafre',
  'farinha_de_rosca',
  'farinha_de_trigo',
  'feijao',
  'fermento',
  'frango_desfiado',
  'ketchup',
  'laranja',
  'leite',
  'leite_condensado',
  'limao',
  'lombo_canadense',
  'louro',
  'maca',
  'maionese',
  'manjericao',
  'manteiga',
  'milho',
  'molho_barbecue',
  'molho_de_tomate',
  'molho_shoyu',
  'morango',
  'mostarda',
  'nozes',
  'noz_moscada',
  'oregano',
  'ovo',
  'ovo_frito',
  'palmito',
  'pao_de_forma',
  'pao_frances',
  'peito_de_peru',
  'pimentao',
  'pimenta_calabresa',
  'pimenta_do_reino',
  'pimenta_vermelha',
  'presunto',
  'queijo',
  'rucula',
  'sal',
  'salsinha',
  'sardinha',
  'tomate',
  'tomilho',
  'vinagre',
];

void main() {
  runApp(const IngredientesIconsApp());
}

class IngredientesIconsApp extends StatelessWidget {
  const IngredientesIconsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'br_ingredientes_icons Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const IngredientesIconsGrid(),
    );
  }
}

class IngredientesIconsGrid extends StatelessWidget {
  const IngredientesIconsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ícones de Ingredientes'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: ingredientes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 12,
            mainAxisSpacing: 16,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final nome = ingredientes[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BrIngredienteIconSmart(
                      nome: nome,
                      size: 48,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Flexible(
                  child: Text(
                    nome.replaceAll('_', ' '),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 13),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}