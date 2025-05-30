# 🥕 br_smart_ingredientes_icons

Uma **coleção de ícones PNG com reconhecimento inteligente de nomes** de ingredientes — projetado para apps de receita, alimentação saudável e aplicativos gastronômicos brasileiros/multilíngues!

![Banner do br_ingredientes_icons](banner.jpg)

---

## 🚀 O que é?

O `br_ingredientes_icons` oferece:

- **Mais de 70 ícones exclusivos** de alimentos e ingredientes encontrados em receitas do Brasil
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

## 💡 Exemplo de Uso

Veja um exemplo completo de implementação no arquivo [`example/lib/main.dart`](example/lib/main.dart), que demonstra como criar uma grade de ingredientes com ícones em cards estilizados usando o widget `BrIngredienteIconSmart`.

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
  br_ingredientes_icons: ^1.0.0
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
| | Ingrediente            |                         |                         |                         |
|--------------------------|-------------------------|-------------------------|-------------------------|
| abacate                  | abacaxi                 | abobora                 | abobrinha               |
| acucar                   | agua                    | alecrim                 | alface                  |
| alho                     | aliche                  | arroz                   | atum                    |
| aveia                    | azeite                  | azeitona                | bacon                   |
| banana                   | batata                  | batata_doce             | batata_frita            |
| batata_palha             | berinjela               | beterraba               | brocolis                |
| cacau                    | calabresa               | caldo_de_carne          | caldo_de_legumes        |
| canela                   | carne_moida             | carne_seca              | cebola                  |
| cebola_roxa              | cebolinha               | cenoura                 | champignon              |
| chocolate                | coco                    | couve                   | coxa_de_frango          |
| cravo_da_india           | creme_de_leite          | default                 | ervilha                 |
| escarola                 | espinafre               | farinha_de_rosca        | farinha_de_trigo        |
| feijao                   | fermento                | frango_desfiado         | gengibre                |
| grao_de_bico             | ketchup                 | kiwi                    | laranja                 |
| leite                    | leite_condensado        | limao                   | lombo_canadense         |
| louro                    | m&m                     | maca                    | maionese                |
| mandioca_frita           | mandioquinha            | manga                   | manjericao              |
| manteiga                 | maracuja                | massa_de_pizza          | milho                   |
| molho_barbecue           | molho_de_tomate         | molho_shoyu             | morango                 |
| mostarda                 | mussarela               | nozes                   | noz_moscada             |
| oleo                     | oregano                 | ovo                     | ovomaltine              |
| ovo_frito                | palmito                 | pao_de_forma            | pao_frances             |
| parmesao                 | peito_de_peru           | pepperoni               | pera                    |
| pimentao                 | pimenta_calabresa       | pimenta_dedo_de_moca    | pimenta_do_reino        |
| pimenta_vermelha         | polenta                 | presunto                | provolone               |
| queijo                   | ricota                  | rucula                  | sal                     |
| salsicha                 | salsinha                | sardinha                | tomate                  |
| tomate_seco              | tomilho                 | uva                     | vinagre                 |


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

