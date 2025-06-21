# 🥕 br_smart_ingredientes_icons

Uma **coleção de ícones PNG com reconhecimento inteligente de nomes** de ingredientes — projetado para apps de receita, alimentação saudável e aplicativos gastronômicos brasileiros/multilíngues!

![Banner do br_ingredientes_icons](banner.jpg)

---

## 🚀 O que é?

O `br_ingredientes_icons` oferece:

- **Mais de 235 ícones exclusivos** de alimentos e ingredientes encontrados em receitas do Brasil
- Identificação automática do ingrediente digitado, mesmo com nomes em inglês, espanhol, francês, sinônimos ou pequenas variações
- Suporte a fallback: se não encontrar o ingrediente, exibe um ícone padrão
- **Customização de cor** (para ícones monocromáticos)
- Fácil integração em projetos Flutter
- Livre para uso pessoal e comercial — [MIT License](LICENSE)

---

## 📱 Exemplo Rápido

```dart
import 'package:br_ingredientes_icons/br_ingredientes_icons.dart';

BrIngredienteIconSmart(
  nome: 'cheese',     // ou 'queijo', 'queso', 'fromage', etc
  size: 48,
  color: Colors.amber, // opcional, para icons monocromáticos
)
```
Reconhece 'queijo', 'cheese', 'queso', 'fromage' e variantes.

Ou dessa maneira:

```dart
import 'package:br_ingredientes_icons/br_ingredientes_icons.dart';

Icon(BRIngredientesIconsFont.cheese, color: Colors.amber, size: 48,),
```


## 💡 Exemplo de Uso

Veja um exemplo completo de implementação no arquivo [`example/lib/main.dart`](example/lib/main.dart), que demonstra como criar uma grade de ingredientes com ícones em cards estilizados usando o widget `BrIngredienteIconSmart`.

## 🌐 Web Demo

👉 [Acesse aqui a demonstração online com busca instantânea de todos os ícones](https://davidkalil10.github.io/BR-Smart-Ingredientes-Icons/)

## 🧠 Buscas inteligentes
Aceita o nome do ingrediente:

- **em Português**: alho, tomilho, açúcar, rúcula...
- **em Inglês:** garlic, thyme, sugar, arugula...
- **em Espanhol:** ajo, tomillo, azúcar, rúcula...
- **em Francês:** ail, thym, sucre, roquette...
e até sinônimos/femininos/plurais comuns!

### 🔍 Testando a Busca Inteligente

```dart
// Todos esses exemplos vão exibir o mesmo ícone de queijo:
BrIngredienteIconSmart(nome: 'queijo', size: 48),    // Português
BrIngredienteIconSmart(nome: 'cheese', size: 48),    // Inglês
BrIngredienteIconSmart(nome: 'queso', size: 48),     // Espanhol
BrIngredienteIconSmart(nome: 'fromage', size: 48),   // Francês
BrIngredienteIconSmart(nome: 'mozzarella', size: 48), // Tipo específico

// Funcionam também com pequenas variações:
BrIngredienteIconSmart(nome: 'lettuce', size: 48),   // -> alface
BrIngredienteIconSmart(nome: 'strawberry', size: 48), // -> morango
BrIngredienteIconSmart(nome: 'salt', size: 48),      // -> sal
BrIngredienteIconSmart(nome: 'bread', size: 48),     // -> pao_de_forma
```

## 📦 Instalação
No seu pubspec.yaml:
```yaml
dependencies:
  br_ingredientes_icons: ^2.0.3
```
Depois:
```bash
flutter pub get
```

## 🚀 Executando o Exemplo

Para ver o exemplo funcionando:

1. Clone o repositório:
```bash
git clone https://github.com/davidkalil10/BR-Smart-Ingredientes-Icons.git
cd BR-Smart-Ingredientes-Icons
```

2. Navegue até o diretório do exemplo:
```bash
cd example
```

3. Execute o app:
```bash
flutter run
```

O exemplo mostra uma grade com todos os ingredientes disponíveis na biblioteca, demonstrando como usar o widget `BrIngredienteIconSmart` em uma interface real.
```
flutter pub get
```
## 🎨 Como usar
Ícone direto
Se você já sabe o nome do arquivo (SEM ".png"):
```
BrIngredienteIcon(nome: 'tomate', size: 32)
```
Ícone inteligente (busca por nome, vários idiomas, sinônimos, fallback):
```
BrIngredienteIconSmart(
  nome: 'eggplant',   // pode ser "berinjela", "aubergine", "berenjena"...
  size: 64,
  color: Colors.purple,
  fallback: 'default', // opicional, precisa do icon default nos assets
)
```
Exibindo vários ícones:
```
final ingredientes = ['milk', 'banana', 'sugar', 'baguette', 'queso', 'cheese'];

GridView.count(
  crossAxisCount: 4,
  children: ingredientes.map((nome) =>
    BrIngredienteIconSmart(nome: nome)
  ).toList(),
)
```
| **Categoria**                | **Ingredientes**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Frutas**                   | abacate<br>abacaxi<br>açaí<br>acerola<br>banana<br>carambola<br>cereja<br>cupuaçu<br>jabuticaba<br>jaca<br>kiwi<br>laranja<br>lichia<br>limão<br>maçã<br>mamão<br>manga<br>maracujá<br>melancia<br>melão<br>morango<br>pêssego<br>pera<br>pitanga<br>pitaya<br>tâmara<br>uva                                                                                                                                                                                                                                         |
| **Verduras e Legumes**       | abobora<br>abobrinha<br>acelga<br>agrião<br>aipo<br>alho<br>alho poró<br>alface<br>batata<br>batata doce<br>berinjela<br>beterraba<br>brocolis<br>cebola<br>cebola roxa<br>cebolinha<br>cenoura<br>chuchu<br>coentro<br>couve<br>couve de bruxelas<br>couve flor<br>espinafre<br>escarola<br>gengibre<br>hortelã<br>louro<br>manjericão<br>mandioquinha<br>mandioca frita<br>nabo<br>pepino<br>pimentão<br>polenta<br>quiabo<br>rabanete<br>repolho<br>rúcula<br>salsão<br>salsinha<br>tomate |
| **Temperos/Condimentos**     | alecrim<br>azeite<br>azeitona<br>canela<br>cravo da india<br>gergelim<br>ketchup<br>mostarda<br>maionese<br>mel<br>molho barbecue<br>molho branco<br>molho de pimenta<br>molho de tomate<br>molho pesto<br>molho shoyu<br>orégano<br>óleo<br>pimenta calabresa<br>pimenta dedo de moca<br>pimenta do reino<br>pimenta vermelha<br>sal<br>tomilho<br>vinagre                                                                                                              |
| **Carnes e Peixes**          | aliche<br>atum<br>bacon<br>calabresa<br>carne moída<br>carne seca<br>coxa de frango<br>frango desfiado<br>lombo canadense<br>peito de peru<br>presunto<br>salmão<br>sardinha<br>salsicha<br>pepperoni<br>hamburger<br>hot dog<br>galinhada<br>feijoada<br>bobó de camarão<br>moqueca<br>yakisoba<br>kibe<br>strogonoff<br>manicoba                                                                                                                                                 |
| **Laticínios/Ovos**          | catupiry<br>creme de leite<br>leite<br>leite condensado<br>leite de coco<br>manteiga<br>maionese<br>iogurte<br>queijo<br>queijo ralado<br>ovo<br>ovo frito                                                                                                                                                                                                                                                       |
| **Cereais e Grãos**          | arroz<br>arroz carreteiro<br>arroz doce<br>aveia<br>cuscuz nordestino<br>farinha de rosca<br>farinha de trigo<br>feijão<br>granola<br>grãos<br>grão de bico<br>milho<br>pamonha<br>polvilho azedo<br>polvilho doce<br>spaghetti<br>massa de lasanha<br>massa de pizza<br>massa folhada                                                                                      |
| **Oleaginosas/Castanhas**    | amendoa<br>castanha de caju<br>castanha do para<br>nozes<br>noz moscada<br>pistache<br>pacoca<br>cajuzinho<br>quindim<br>paçoca<br>doce de leite                                                                                                                                                                                 |
| **Massas e Pães**            | biscoito<br>bolacha champagne<br>croissant<br>crepe<br>esfirra aberta<br>esfirra fechada<br>empada<br>empanada<br>enroladinho de salsicha<br>lasanha<br>pizza<br>pão de forma<br>pão frances<br>pão de queijo<br>pastel<br>panqueca<br>fatia de pizza<br>fatia de bolo<br>fatia de torta<br>torta<br>torrada<br>sanduiche natural<br>marmita<br>prato feito<br>vatapa<br>mousse               |
| **Doces/Sobremesas**         | bala de coco<br>barra de cereal<br>beijinho<br>bicho de pe<br>biscoito recheado<br>bolo<br>bolinho de chuva<br>brigadeiro<br>brigadeiro<br>brigadeiro<br>cura<br>curau<br>gelatina<br>mousse<br>doce de leite<br>ovomaltine<br>picole<br>pipoca<br>pudim<br>quindim<br>rabanada<br>salada de frutas<br>sorvete<br>suspiro<br>tapioca<br>vitamina<br>tacaca         |
| **Bebidas**                  | água<br>café<br>cerveja<br>cha gelado<br>caldo de cana<br>guaraná<br>refrigerante<br>suco natural<br>| 
| **Outros**                   | caldo de carne<br>caldo de legumes<br>default<br>palmito<br>polvilho azedo<br>polvilho doce<br>shimeji<br>champignon<br>defaulticon<br>guaco<br>jaca<br>picole<br>yakisoba<br>croissant<br>mandioquinha<br>golinha de chuva<br>bolo<br>coxinha<br>empada<br>pastel<br>salada<br>sanduiche natural<br>pizza<br>hamburger<br>hot dog<br>batata frita<br>batata palha |                                                                                                                                                                                                                                                                                                                                               |


<details><summary><strong>Ver nomes alternativos e traduções (EN/ES/FR)</strong></summary>

banana / banana / plátano / banane
queijo / cheese / queso / fromage
leite / milk / leche / lait
tomate / tomato / tomate / tomate
ovo / egg / huevo / œuf
... (veja ingredientes_data.dart )</details>

## 🔄 Como funciona internamente
O widget BrIngredienteIconSmart recebe o nome digitado, busca automaticamente no banco de aliases (que cobre PT, EN, ES, FR, sinônimos), e retorna a chave correspondente ao arquivo PNG na pasta assets/icons/.

Se não encontra, devolve o fallback (por padrão, default.png).

## ✏️ Como contribuir

Abra issues e pull requests no [GitHub](https://github.com/davidkalil10/BR-Smart-Ingredientes-Icons)! 

### 🎯 Formas de contribuir:
- **Novos ingredientes**: Envie o PNG + nomes/sinônimos!
- **Traduções**: Adicione suporte a novos idiomas
- **Melhorias**: Sugestões para tornar esse pacote referência!
- **Documentação**: Ajude a melhorar exemplos e tutoriais
- **Testes**: Reporte bugs ou problemas de compatibilidade

### 📁 Estrutura do Projeto
```
br_ingredientes_icons/
├── assets/icons/          # Ícones PNG dos ingredientes
├── example/              # App de exemplo (demonstração)
├── lib/
│   ├── br_ingredientes_icons.dart    # Widget principal
│   └── ingredientes_data.dart        # Mapeamento de aliases
├── pubspec.yaml          # Configuração do package
└── README.md            # Esta documentação
```

### 🔗 Links Úteis
- **Repositório**: https://github.com/davidkalil10/BR-Smart-Ingredientes-Icons
- **pub.dev**: https://pub.dev/packages/br_ingredientes_icons
- **Issues**: https://github.com/davidkalil10/BR-Smart-Ingredientes-Icons/issues

## 📄 Licença
MIT — por David Kalil Braga

⭐ Se usar este package, deixe um star no repositório ou cite nos seus apps!

