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
  'abacate',
  'abacaxi',
  'abobora',
  'abobrinha',
  'acucar',
  'agua',
  'alecrim',
  'alface',
  'alho',
  'aliche',
  'arroz',
  'atum',
  'aveia',
  'azeite',
  'azeitona',
  'bacon',
  'banana',
  'batata',
  'batata_doce',
  'batata_frita',
  'batata_palha',
  'berinjela',
  'beterraba',
  'brocolis',
  'cacau',
  'calabresa',
  'caldo_de_carne', // Mantive este, pois pode ser um nome de arquivo válido
  'caldo_de_legumes',
  'canela',
  'carne_moida',
  'carne_seca',
  'cebola',
  'cebola_roxa',
  'cebolinha',
  'cenoura',
  'champignon',
  'chocolate',
  'coco',
  'couve',
  'coxa_de_frango',
  'cravo_da_india',
  'creme_de_leite',
  'default',
  'ervilha',
  'escarola',
  'espinafre',
  'farinha_de_rosca', // Mantive este, pois pode ser um nome de arquivo válido
  'farinha_de_trigo', // Mantive este, pois pode ser um nome de arquivo válido
  'feijao',
  'fermento',
  'frango_desfiado', // Mantive este, pois pode ser um nome de arquivo válido
  'gengibre',
  'grao_de_bico',
  'ketchup',
  'kiwi',
  'laranja',
  'leite',
  'leite_condensado',
  'limao',
  'lombo_canadense',
  'louro',
  'm&m',
  'maca',
  'maionese',
  'mandioca_frita',
  'mandioquinha',
  'manga',
  'manjericao',
  'manteiga',
  'maracuja',
  'massa_de_pizza',
  'milho',
  'molho_barbecue',
  'molho_de_tomate',
  'molho_shoyu',
  'morango',
  'mostarda',
  'nozes',
  'noz_moscada',
  'oleo',
  'oregano',
  'ovo',
  'ovomaltine',
  'ovo_frito',
  'palmito',
  'pao_de_forma',
  'pao_frances',
  'peito_de_peru',
  'pepperoni',
  'pera',
  'pimentao',
  'pimenta_calabresa',
  'pimenta_dedo_de_moca',
  'pimenta_do_reino',
  'pimenta_vermelha',
  'polenta',
  'presunto',
  'queijo',
  'rucula',
  'sal',
  'salsicha',
  'salsinha',
  'sardinha',
  'tomate',
  'tomate_seco',
  'tomilho',
  'uva',
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