import 'package:flutter/material.dart';
import 'card_models/card_model_1.dart';
import 'card_models/card_model_2.dart';
import 'card_models/card_model_3.dart';

CardModel1 primaryCard(ColorScheme colorScheme) {
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

CardModel1 secondaryCard(ColorScheme colorScheme) {
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

CardModel1 tertiaryCard(ColorScheme colorScheme) {
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

CardModel1 errorCard(ColorScheme colorScheme) {
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

CardModel2 primaryFixedCard(ColorScheme colorScheme) {
  return CardModel2(
    scale: 1,
    color1: colorScheme.primaryFixed,
    color2: colorScheme.primaryFixedDim,
    color3: colorScheme.onPrimaryFixed,
    color4: colorScheme.onPrimaryFixedVariant,
    text1: 'primary\nFixed',
    text2: 'primary\nFixedDim',
    text3: 'onPrimaryFixed',
    text4: 'onPrimaryFixedVariant',
  );
}

CardModel2 secondaryFixedCard(ColorScheme colorScheme) {
  return CardModel2(
    scale: 1,
    color1: colorScheme.secondaryFixed,
    color2: colorScheme.secondaryFixedDim,
    color3: colorScheme.onSecondaryFixed,
    color4: colorScheme.onSecondaryFixedVariant,
    text1: 'secondary\nFixed',
    text2: 'secondary\nFixedDim',
    text3: 'onSecondaryFixed',
    text4: 'onSecondaryFixedVariant',
  );
}

CardModel2 tertiaryFixedCard(ColorScheme colorScheme) {
  return CardModel2(
    scale: 1,
    color1: colorScheme.tertiaryFixed,
    color2: colorScheme.tertiaryFixedDim,
    color3: colorScheme.onTertiaryFixed,
    color4: colorScheme.onTertiaryFixedVariant,
    text1: 'tertiary\nFixed',
    text2: 'tertiary\nFixedDim',
    text3: 'onTertiaryFixed',
    text4: 'onTertiaryFixedVariant',
  );
}

CardModel3 surfaceCard(ColorScheme colorScheme) {
  return CardModel3(
    scale: 1,
    color1: colorScheme.inverseSurface,
    color2: colorScheme.onInverseSurface,
    color3: colorScheme.inversePrimary,
    color4: colorScheme.scrim,
    color5: colorScheme.shadow,
    text1: 'inverseSurface',
    text2: 'onInverseSurface',
    text3: 'inversePrimary',
    text4: 'scrim',
    text5: 'shadow',
  );
}