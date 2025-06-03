import 'package:flutter/widgets.dart';
import 'ingredientes_data.dart';

/// Um widget que exibe um ícone de ingrediente a partir de um asset PNG.
class BrIngredienteIcon extends StatelessWidget {
  /// Nome do arquivo do ingrediente (sem a extensão .png)
  final String nome; // nome do asset (SEM .png)
  /// Tamanho do ícone.
  final double size;

  /// Cor a ser aplicada no ícone (opcional).
  final Color? color;

  /// Cria um ícone de ingrediente com base no nome do asset.
  const BrIngredienteIcon({
    super.key,
    required this.nome,
    this.size = 24,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'packages/br_ingredientes_icons/assets/icons/$nome.png',
      width: size,
      height: size,
      fit: BoxFit.contain,
      color: color,
      colorBlendMode: BlendMode.srcIn,
    );
  }
}

/// Normaliza uma string para facilitar a busca de ingredientes.
/// Remove acentos, espaços, pontuações e transforma em minúsculas.
String normalize(String s) {
  // Remove espaços, acentos, pontuação e coloca tudo minúsculo
  const accents = {
    'á': 'a',
    'à': 'a',
    'ã': 'a',
    'â': 'a',
    'ä': 'a',
    'å': 'a',
    'é': 'e',
    'è': 'e',
    'ê': 'e',
    'ë': 'e',
    'í': 'i',
    'ì': 'i',
    'î': 'i',
    'ï': 'i',
    'ó': 'o',
    'ò': 'o',
    'ô': 'o',
    'õ': 'o',
    'ö': 'o',
    'ú': 'u',
    'ù': 'u',
    'û': 'u',
    'ü': 'u',
    'ç': 'c',
    'ñ': 'n',
    'œ': 'oe',
    'æ': 'ae'
  };
  return s
      .toLowerCase()
      .replaceAllMapped(
          RegExp(r'[áàãâäåéèêëíìîïóòôõöúùûüçñœæ]'), (m) => accents[m[0]] ?? '')
      .replaceAll(RegExp(r'[^a-z0-9]'), '');
}

/// Tenta encontrar o nome normalizado de um ingrediente com base em aliases.
/// Retorna `null` se nenhum nome corresponder.
String? matchIngredienteNome(String query) {
  final normQuery = normalize(query);

  // Busca exata normalizada
  for (final entry in ingredientAliases.entries) {
    for (final name in entry.value) {
      if (normalize(name) == normQuery) return entry.key;
    }
  }
  // Busca aproximada: contém parte do nome
  for (final entry in ingredientAliases.entries) {
    for (final name in entry.value) {
      final normName = normalize(name);
      if (normName.contains(normQuery) || normQuery.contains(normName)) {
        return entry.key;
      }
    }
  }
  // Nenhum correspondido
  return null;
}

/// Um widget inteligente que tenta reconhecer o nome do ingrediente informado
/// e exibe o ícone correspondente. Usa um fallback se o nome não for reconhecido.
class BrIngredienteIconSmart extends StatelessWidget {
  final String nome;
  final double size;
  final Color? color;

  /// Nome do asset usado caso o ingrediente não seja reconhecido.
  final String fallback;

  /// Cria um ícone inteligente que reconhece o nome do ingrediente.
  const BrIngredienteIconSmart({
    super.key,
    required this.nome,
    this.size = 24,
    this.color,
    this.fallback = 'default',
  });

  @override
  Widget build(BuildContext context) {
    final match = matchIngredienteNome(nome); // <-- Aqui busca na lista!
    return BrIngredienteIcon(
      nome: match ?? fallback,
      size: size,
      color: color,
    );
  }
}
