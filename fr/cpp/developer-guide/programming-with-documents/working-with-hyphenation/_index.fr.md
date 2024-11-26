---
title: Travailler avec la césure en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec la césure
linktitle: Travailler avec la césure
description: "Utilisez la césure pour un arrangement plus compact du texte en utilisant C++. Il fournit des algorithmes avancés pour travailler avec des dictionnaires de césure, utilise des dictionnaires OpenOffice."
type: docs
weight: 220
url: /fr/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

Parfois, il est nécessaire d'utiliser une césure pour un arrangement plus compact du texte dans un document. En même temps, il est important de comprendre que les spécificités de la césure des mots peuvent différer pour chaque langue.

À l'heure actuelle, la césure n'est pas utilisée aussi souvent qu'auparavant, en particulier dans les textes anglais. Néanmoins, l'utilisation de cette fonctionnalité peut avoir un impact sérieux sur les documents utilisateur – la césure affecte la mise en page et, par conséquent, l'apparence des fichiers de sortie, par exemple au format PDF.

Pour une division correcte des mots, des dictionnaires de césure spécifiques à la langue sont utilisés. Aspose.Words utilise des algorithmes avancés pour travailler avec de tels dictionnaires et vous permet d'obtenir la même césure que dans Microsoft Word.

## Dictionnaires de Césure

Étant donné que différentes langues utilisent des normes et des règles différentes pour la césure des mots, la solution optimale pour une césure correcte consiste à utiliser des dictionnaires spéciaux. Aspose.Words utilise OpenOffice dictionnaires.

Pour la vérification orthographique, OpenOffice utilise le [Bibliothèque Hunspell](https://hunspell.github.io/), qui est une généralisation de l'algorithme de césure de TeX. Cet algorithme permet une césure automatique non standard à l'aide de modèles de césure standard et personnalisés concurrents. Hunspell utilise le [Trait d'Union](https://github.com/hunspell/hyphen) pour la césure.

{{% alert color="primary" %}}

Les dictionnaires de césure peuvent être tirés de la [LibreOffice dictionnaires GitHub](https://github.com/LibreOffice/dictionaries). Par exemple, [dictionnaire de césure en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Étant donné que Microsoft Word utilise des dictionnaires autres que les dictionnaires OpenOffice pour effectuer la césure, la césure de certains mots définis par les dictionnaires OpenOffice peut différer de la césure Microsoft Word. Pour cette raison, nous devons parfois conseiller aux clients d'ajouter les modèles nécessaires à leurs dictionnaires afin de corriger la césure de mots particuliers.

{{% /alert %}}

## Algorithme de Césure

Aspose.Words outils [l'algorithme de césure TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) et peut réutiliser les dictionnaires de césure OpenOffice.

Les caractéristiques suivantes des algorithmes Aspose.Words doivent être prises en compte:

* Les paramètres de distance de césure (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) spécifiés dans le dictionnaire de césure sont ignorés. Aspose.Words utilise son propre ensemble de paramètres de distance en fonction du mode de compatibilité du document.
* L'algorithme de césure dans Aspose.Words prend en charge [césure composite](https://github.com/hunspell/hyphen/blob/master/README.compound). Cependant, Aspose.Words divise les séquences de caractères contenant des caractères mixtes alphabétiques et non alphabétiques en parties alphabétiques uniquement (mots) et les sépare séparément.
  Notez que la logique Microsoft Word de césure des mots composés dépend du mode de compatibilité du document.
* L'algorithme de césure dans Aspose.Words n'implémente pas le [césure non standard](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Les modèles non standard sont ignorés.

## Chargement des Dictionnaires de Césure

Pour utiliser la fonctionnalité de césure, enregistrez d'abord un dictionnaire de césure.L'exemple de code suivant montre comment charger des dictionnaires de césure pour les langues spécifiées à partir d'un fichier:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

L'exemple de code suivant montre comment charger des dictionnaires de césure pour la langue spécifiée à partir d'un flux:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Au lieu de préenregistrer les dictionnaires de césure, il est possible d'enregistrer uniquement les dictionnaires de césure requis "sur demande". Pour ce faire, implémentez l'interface [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) et utilisez le rappel statique [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

L'exemple de code suivant montre comment implémenter l'interface **IHyphenationCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## Impact de la césure sur la mise en page

Lors de la division du texte en lignes, Aspose.Words vérifie que chaque mot correspond entièrement à la ligne en cours. Si un autre mot est trop long pour tenir à la fin de la ligne, par défaut Aspose.Words le déplace au début de la ligne suivante au lieu de le couper.

Cependant, la fonction de césure peut être utilisée dans Aspose.Words pour insérer des traits d'union dans les mots afin d'éliminer les lacunes dans le texte justifié ou de maintenir une longueur de ligne uniforme dans les colonnes étroites. Cela peut évidemment affecter le nombre de lignes et donc le nombre de pages. En d'autres termes, l'utilisation de la fonction de césure affecte la mise en page du document.

## Césure et justification (H & J)

Microsoft Word a une logique complexe pour choisir un point d'arrêt si le texte est justifié et que la césure est activée. En bref, Microsoft Word peut préférer réduire ou étirer les espaces pour éviter la césure des lignes. Très probablement, cette logique est basée sur [L'article de Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implémente son propre algorithme H & J qui donne le même résultat que Microsoft Word et fournit des sauts de ligne identiques dans le document de sortie.

## Voir Aussi

* [Hyphen-bibliothèque de césure](https://github.com/hunspell/hyphen/blob/master/README)
* [Césure non standard](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Césure automatique non standard dans Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
