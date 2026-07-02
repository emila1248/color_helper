import 'package:flutter/material.dart';
import 'card_model_1.dart';

CardModel1 primaryColorCard(ColorScheme colorScheme) {
  return CardModel1(
    scale: 1,
    color1: colorScheme.primary,
    color2: colorScheme.onPrimary,
    color3: colorScheme.primaryContainer,
    color4: colorScheme.onPrimaryContainer,
    text1: 'primary',
    text2: 'onPrimary',
    text3: 'primaryContainer',
    text4: 'onPrimaryContainer',
  );
}

CardModel1 secondaryColorCard(ColorScheme colorScheme) {
  return CardModel1(
    scale: 1,
    color1: colorScheme.secondary,
    color2: colorScheme.onSecondary,
    color3: colorScheme.secondaryContainer,
    color4: colorScheme.onSecondaryContainer,
    text1: 'secondary',
    text2: 'onSecondary',
    text3: 'secondaryContainer',
    text4: 'onSecondaryContainer',
  );
}

CardModel1 tertiaryColorCard(ColorScheme colorScheme) {
  return CardModel1(
    scale: 1,
    color1: colorScheme.tertiary,
    color2: colorScheme.onTertiary,
    color3: colorScheme.tertiaryContainer,
    color4: colorScheme.onTertiaryContainer,
    text1: 'tertiary',
    text2: 'onTertiary',
    text3: 'tertiaryContainer',
    text4: 'onTertiaryContainer',
  );
}

CardModel1 errorColorCard(ColorScheme colorScheme) {
  return CardModel1(
    scale: 1,
    color1: colorScheme.error,
    color2: colorScheme.onError,
    color3: colorScheme.errorContainer,
    color4: colorScheme.onErrorContainer,
    text1: 'error',
    text2: 'onError',
    text3: 'errorContainer',
    text4: 'onErrorContainer',
  );
}