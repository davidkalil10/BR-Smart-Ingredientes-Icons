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
  'açaí',
  'acelga',
  'açúcar',
  'agrião',
  'água',
  'aipo',
  'alecrim',
  'alface',
  'alho',
  'alho poró',
  'aliche',
  'amendoa',
  'arroz',
  'atum',
  'aveia',
  'azeite',
  'azeitona',
  'bacon',
  'banana',
  'batata',
  'batata doce',
  'batata frita',
  'batata palha',
  'berinjela',
  'beterraba',
  'biscoito',
  'bolacha champagne',
  'brigadeiro',
  'brocolis',
  'cacau',
  'café',
  'calabresa',
  'caldo de carne', // Assumindo que o arquivo é caldo_de_carne.png
  'caldo de legumes',
  'canela',
  'carne moída',
  'carne seca',
  'castanha de caju',
  'castanha do para',
  'catupiry',
  'cebola',
  'cebola roxa',
  'cebolinha',
  'cenoura',
  'cereja',
  'cerveja',
  'champignon',
  'chocolate',
  'chuchu',
  'coco',
  'coentro',
  'couve',
  'couve de bruxelas',
  'couve flor',
  'coxa de frango',
  'cravo da india',
  'creme de leite',
  'croissant',
  'cupuaçu',
  'default',
  'ervilha',
  'escarola',
  'esfirra aberta',
  'esfirra fechada',
  'espinafre',
  'farinha de rosca', // Assumindo que o arquivo é farinha_de_rosca.png
  'farinha de trigo', // Assumindo que o arquivo é farinha_de_trigo.png
  'feijão',
  'fermento',
  'frango desfiado', // Assumindo que o arquivo é frango_desfiado.png
  'gengibre',
  'gergelim',
  'granola',
  'grãos',
  'grão de bico',
  'guaco',
  'guaraná',
  'hortelã',
  'ketchup',
  'kiwi',
  'laranja',
  'leite',
  'leite condensado',
  'leite de_coco',
  'lichia',
  'limão',
  'lombo canadense',
  'louro',
  'maçã',
  'spaghetti', // Ou 'espaguete', dependendo do seu arquivo
  'maionese',
  'mamão',
  'mandioca frita',
  'mandioquinha',
  'manga',
  'manjericão',
  'manteiga',
  'maracujá',
  'massa de lasanha',
  'massa de pizza',
  'massa folhada',
  'mel',
  'melancia',
  'melão',
  'milho',
  'molho barbecue',
  'molho branco',
  'molho de pimenta',
  'molho de tomate',
  'molho pesto',
  'molho shoyu',
  'morango',
  'mostarda',
  'm&m', // Para M&M's, se o arquivo for m_e_m.png
  'nabo',
  'nozes',
  'noz moscada',
  'óleo',
  'orégano',
  'ovo',
  'ovomaltine',
  'ovo frito',
  'paçoca',
  'palmito',
  'pão de forma',
  'pão frances',
  'peito de peru',
  'pepino',
  'pepperoni',
  'pêra',
  'picles em conserva',
  'pimentão',
  'pimenta calabresa',
  'pimenta dedo de moca',
  'pimenta do reino',
  'pimenta vermelha',
  'pistache',
  'pitaya',
  'polenta',
  'polvilho azedo',
  'polvilho doce',
  'presunto',
  'queijo',
  'queijo ralado',
  'rabanete',
  'refrigerante',
  'repolho',
  'rúcula',
  'sal',
  'salmão',
  'salsão',
  'salsicha',
  'salsinha',
  'sardinha',
  'shimeji',
  'suspiro',
  'tâmara',
  'tomate',
  'tomate seco',
  'tomilho',
  'uva',
  'vinagre',
  'yogurt',
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
