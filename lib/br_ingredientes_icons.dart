import 'package:flutter/widgets.dart';
import 'ingredientes_data.dart';

class BrIngredienteIcon extends StatelessWidget {
  final String nome; // nome do asset (SEM .png)
  final double size;
  final Color? color;
  const BrIngredienteIcon({
    Key? key,
    required this.nome,
    this.size = 24,
    this.color,
  }) : super(key: key);
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

String normalize(String s) {
  // Remove espaços, acentos, pontuação e coloca tudo minúsculo
  const accents = {
    'á':'a', 'à':'a', 'ã':'a', 'â':'a', 'ä':'a', 'å':'a',
    'é':'e', 'è':'e', 'ê':'e', 'ë':'e',
    'í':'i', 'ì':'i', 'î':'i', 'ï':'i',
    'ó':'o', 'ò':'o', 'ô':'o', 'õ':'o', 'ö':'o',
    'ú':'u', 'ù':'u', 'û':'u', 'ü':'u',
    'ç':'c', 'ñ':'n', 'œ':'oe', 'æ':'ae'
  };
  return s
      .toLowerCase()
      .replaceAllMapped(RegExp(r'[áàãâäåéèêëíìîïóòôõöúùûüçñœæ]'),
          (m) => accents[m[0]] ?? '')
      .replaceAll(RegExp(r'[^a-z0-9]'), '');
}

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

class BrIngredienteIconSmart extends StatelessWidget {
  final String nome;
  final double size;
  final Color? color;
  final String fallback;
  const BrIngredienteIconSmart({
    Key? key,
    required this.nome,
    this.size = 24,
    this.color,
    this.fallback = 'default',
  }) : super(key: key);

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