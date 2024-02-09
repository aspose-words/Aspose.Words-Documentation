---
title: Travailler avec la césure dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec la césure
linktitle: Travailler avec la césure
description: "Utilisez la césure pour une disposition plus compacte du texte à l’aide de Python. Il fournit des algorithmes avancés pour travailler avec des dictionnaires de césure et utilise des dictionnaires OpenOffice."
type: docs
weight: 220
url: /fr/python-net/working-with-hyphenation/
---

Parfois, il est nécessaire d'utiliser la césure pour une disposition plus compacte du texte dans un document. Dans le même temps, il est important de comprendre que les spécificités de la césure des mots peuvent différer pour chaque langue.

À l’heure actuelle, la césure n’est plus utilisée aussi souvent qu’avant, notamment dans les textes anglais. Néanmoins, l'utilisation de cette fonctionnalité peut avoir un impact sérieux sur les documents utilisateur: la césure affecte la mise en page et, par conséquent, l'apparence des fichiers de sortie, par exemple au format PDF.

Pour diviser correctement les mots, des dictionnaires de césure spécifiques à la langue sont utilisés. Aspose.Words utilise des algorithmes avancés pour travailler avec de tels dictionnaires et vous permet d'obtenir la même césure que dans Microsoft Word.

## Dictionnaires de césure

Étant donné que différentes langues utilisent des normes et des règles différentes pour la césure des mots, la solution optimale pour une césure correcte consiste à utiliser des dictionnaires spéciaux. Aspose.Words utilise des dictionnaires OpenOffice.

Pour la vérification orthographique, OpenOffice utilise [Bibliothèque Hunspell](https://hunspell.github.io/), qui est une généralisation de l'algorithme de césure de TeX. Cet algorithme permet une césure automatique non standard à l'aide de modèles de césure standard et personnalisés concurrents. Hunspell utilise le [Trait d'union](https://github.com/hunspell/hyphen) pour la césure.

{{% alert color="primary" %}}

Les dictionnaires de césure peuvent être extraits du [Dictionnaires LibreOffice GitHub](https://github.com/LibreOffice/dictionaries). Par exemple, [dictionnaire de césure fr-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Comme Microsoft Word utilise des dictionnaires autres que les dictionnaires OpenOffice pour effectuer la césure, la césure de certains mots définis par les dictionnaires OpenOffice peut différer de la césure Microsoft Word. Pour cette raison, nous devons parfois conseiller aux clients d'ajouter les modèles nécessaires à leurs dictionnaires afin de corriger la césure de mots particuliers.

{{% /alert %}}

## Algorithme de césure

Aspose.Words implémente [l'algorithme de césure TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) et peut réutiliser les dictionnaires de césure OpenOffice.

Les caractéristiques suivantes des algorithmes Aspose.Words doivent être prises en compte:

* Les paramètres de distance de césure (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) spécifiés dans le dictionnaire de césure sont ignorés. Aspose.Words utilise son propre ensemble de paramètres de distance en fonction du mode de compatibilité du document.
* L'algorithme de césure dans Aspose.Words prend en charge [césure composite](https://github.com/hunspell/hyphen/blob/master/README.compound). Cependant, Aspose.Words divise les séquences de caractères contenant un mélange de caractères alphabétiques et non alphabétiques en parties (mots) uniquement alphabétiques et les coupe séparément.
  Notez que la logique Microsoft Word de césure des mots composés dépend du mode de compatibilité du document.
* L'algorithme de césure dans Aspose.Words n'implémente pas le [césure non standard](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Les modèles non standard sont ignorés.

## Chargement des dictionnaires de césure

Pour utiliser la fonction de césure, enregistrez d’abord un dictionnaire de césure. L'exemple de code suivant montre comment charger des dictionnaires de césure pour les langues spécifiées à partir d'un fichier:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'exemple de code suivant montre comment charger des dictionnaires de césure pour la langue spécifiée à partir d'un flux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Impact de la césure sur la mise en page

Lors de la division du texte en lignes, Aspose.Words vérifie chaque mot s'il s'inscrit entièrement dans la ligne actuelle. Si un autre mot est trop long pour tenir à la fin de la ligne, Aspose.Words le déplace par défaut au début de la ligne suivante au lieu de le couper.

Cependant, la fonction de césure peut être utilisée dans Aspose.Words pour insérer des traits d'union dans des mots afin d'éliminer les espaces dans le texte justifié ou pour maintenir une longueur de ligne régulière dans des colonnes étroites. Cela peut évidemment affecter le nombre de lignes et donc le nombre de pages. En d’autres termes, l’utilisation de la fonction de césure affecte la présentation du document.

## Césure et justification (H&amp;J)

Microsoft Word a une logique complexe pour choisir un point d'arrêt si le texte est justifié et la césure est activée. En bref, Microsoft Word préférera peut-être réduire ou étirer les espaces pour éviter la césure des lignes. Très probablement, cette logique est basée sur [L'article de Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implémente son propre algorithme H&amp;J qui donne le même résultat que Microsoft Word et fournit des sauts de ligne identiques dans le document de sortie.

## Voir également

* [Trait d'union – bibliothèque de césure](https://github.com/hunspell/hyphen/blob/master/README)
* [Césure non standard](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Césure automatique non standard dans Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
