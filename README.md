# 🥕 br_smart_ingredientes_icons

Uma **coleção de ícones PNG com reconhecimento inteligente de nomes** de ingredientes — projetado para apps de receita, alimentação saudável e aplicativos gastronômicos brasileiros/multilíngues!

![Banner do br_ingredientes_icons](banner.png)

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

## 🧠 Buscas inteligentes
Aceita o nome do ingrediente:

- **em Português**: alho, tomilho, açúcar, rúcula...
- **em Inglês:** garlic, thyme, sugar, arugula...
- **em Espanhol:** ajo, tomillo, azúcar, rúcula...
- **em Francês:** ail, thym, sucre, roquette...
e até sinônimos/femininos/plurais comuns!

## 📦 Instalação
No seu pubspec.yaml:
```
dependencies:
  br_ingredientes_icons: ^1.0.0
```
Depois:
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
| Ingredientes             |                         |                        |                         |
|--------------------------|-------------------------|------------------------|-------------------------|
| abobrinha                | acucar                  | alecrim                | alface                  |
| alho                     | arroz                   | atum                   | aveia                   |
| azeite                   | banana                  | berinjela              | beterraba               |
| calabresa                | caldo_de_carne          | caldo_de_legumes       | carne_moida             |
| cebola                   | cebola_roxa             | cebolinha              | cenoura                 |
| champignon               | couve                   | coxa_de_frango         | cravo_da_india          |
| creme_de_leite           | espinafre               | farinha_de_rosca       | farinha_de_trigo        |
| feijao                   | fermento                | frango_desfiado        | ketchup                 |
| laranja                  | leite                   | leite_condensado       | limao                   |
| lombo_canadense          | louro                   | maca                   | maionese                |
| manjericao               | manteiga                | milho                  | molho_barbecue          |
| molho_de_tomate          | molho_shoyu             | morango                | mostarda                |
| nozes                    | noz_moscada             | oregano                | ovo                     |
| ovo_frito                | palmito                 | pao_de_forma           | pao_frances             |
| peito_de_peru           | pimentao                | pimenta_calabresa      | pimenta_do_reino        |
| pimenta_vermelha         | presunto                | queijo                 | mussarela               |
| parmesao                 | gorgonzola              | provolone              | ricota                  |
| rucula                   | sal                     | salsinha               | sardinha                |
| tomate                   | tomilho                 | vinagre                |                         |


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
Abra issues e pull requests no GitHub ! E se puder, deixe um bit- café! :) Carteira para depósito: 1AuFGG7jFsJYNGURQwLDeXgZ5xNXsSAuAL

Quer um ingrediente novo? Envie o PNG + nomes/sinônimos!
Sugestão de melhorias? Ajude a tornar esse pacote referência!
📄 Licença
MIT — por David Kalil Braga

⭐ Se usar, deixe um star no repositório ou cite nos seus apps!

