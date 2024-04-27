---
title: Travail avec l'Hyphénation Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec l'Hyphénation
linktitle: Travailler avec l'Hyphénation
description: "Utilisez le trait d'union pour un arrangement plus compact du texte. Il fournit des algorithmes avancés pour travailler avec les dictionnaires d'hyphenation, utilise les dictionnaires OpenOffice en utilisant Java."
type: docs
weight: 220
url: /fr/java/working-with-hyphenation/
---

Parfois, il est nécessaire d'utiliser le trait d'union pour un arrangement plus compact de texte dans un document. Dans le même temps, il est important de comprendre que les spécificités de l'articulation des mots peuvent différer pour chaque langue.

À l'heure actuelle, le trait d'union n'est pas utilisé aussi souvent qu'auparavant, surtout dans les textes anglais. Néanmoins, l'utilisation de cette fonction peut avoir un impact sérieux sur les documents d'utilisateur – le trait d'union affecte la mise en page et, par conséquent, l'apparition des fichiers de sortie, par exemple, en format PDF.

Pour le fractionnement correct des mots, des dictionnaires d'articulations spécifiques à la langue sont utilisés. Aspose.Words utilise des algorithmes avancés pour travailler avec de tels dictionnaires et vous permet d'obtenir le même trait d'union que dans Microsoft Word.

## Dictionnaires d'hyphénation

Puisque différentes langues utilisent des normes et des règles différentes pour l'articulation des mots, la solution optimale pour l'articulation correcte est d'utiliser des dictionnaires spéciaux. Aspose.Words utilise des dictionnaires OpenOffice.

Pour la vérification orthographique, OpenOffice utilise [Hunspell Bibliothèque](https://hunspell.github.io/), qui est une généralisation de l'algorithme d'hypène TeX. Cet algorithme permet l'articulation automatique non standard en utilisant des modèles concurrents standard et personnalisés. Hunspell utilise les [Hyphène](https://github.com/hunspell/hyphen) pour le trait d'union.

{{% alert color="primary" %}}

Les dictionnaires d'hyphénation peuvent être tirés de [LibreOffice dictionnaires GitHub](https://github.com/LibreOffice/dictionaries). Par exemple, [dictionnaire en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Comme Microsoft Word utilise des dictionnaires autres qu'OpenOffice dictionnaires pour effectuer l'articulation, l'articulation de certains mots définis par les dictionnaires OpenOffice peut différer de la Microsoft Word un trait d'union. Pour cette raison, nous devons parfois conseiller aux clients d'ajouter les motifs nécessaires à leurs dictionnaires afin de fixer l'articulation de certains mots.

{{% /alert %}}

## Algorithme d'hyphénation

Aspose.Words mise en œuvre [L'algorithme d'articulation TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) et peut réutiliser les dictionnaires OpenOffice.

Les caractéristiques suivantes: Aspose.Words les algorithmes doivent être pris en compte:

* Paramètres de distance d'hyphénation (LEFTHYPHENMIN, DROITHYPHENMIN, COMPONDÉLÉTHYPHÉNMIN, COMPOUNDRIGHTHYPHENMIN) spécifié dans le dictionnaire des tirets sont ignorés. Aspose.Words utilise ses propres paramètres de distance en fonction du mode de compatibilité du document.
* L'algorithme d'articulation dans Aspose.Words soutien [Hydratation composite](https://github.com/hunspell/hyphen/blob/master/README.compound). Toutefois, Aspose.Words divise les séquences de caractères contenant des caractères alphabétiques et non alphabétiques en parties (mots) alphabétiques et les hypnotise séparément.
  Notez que Microsoft Word La logique de l'articulation des mots composés dépend du mode de compatibilité des documents.
* L'algorithme d'articulation dans Aspose.Words ne met pas en œuvre [Hydratation non standard](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Les modèles non standard sont ignorés.

## Chargement des dictionnaires d'hyphénation

Pour utiliser la fonction de trait d'union, inscrivez d'abord un dictionnaire de trait d'union. L'exemple de code suivant montre comment charger des dictionnaires d'hyphenation pour les langues spécifiées à partir d'un fichier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'exemple de code suivant montre comment charger des dictionnaires d'hyphenation pour la langue spécifiée à partir d'un flux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Comme alternative aux dictionnaires pré-enregistrement, il est possible d'enregistrer uniquement les dictionnaires d'hyphenation requis par demande. Pour y parvenir, mettre en œuvre les [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) interface et utiliser le callback statique [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

L'exemple de code suivant montre comment mettre en œuvre la **IHyphenationCallback** interface & #160;:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Impact de l'hyphénation sur la disposition

Lorsque le texte se divise en lignes, Aspose.Words vérifie chaque mot s'il correspond entièrement à la ligne actuelle. Si un autre mot est trop long pour correspondre à la fin de la ligne, par défaut Aspose.Words le déplace au début de la ligne suivante au lieu de l'hypthéter.

Cependant, la fonction d'articulation peut être utilisée dans Aspose.Words insérer des traits d'union dans les mots pour éliminer les lacunes dans le texte justifié ou pour maintenir une longueur de ligne uniforme dans des colonnes étroites. Cela peut évidemment affecter le nombre de lignes et donc le nombre de pages. En d'autres termes, l'utilisation de la fonction d'articulation affecte la mise en page du document.

## Hyphénation et justification (H & J)

Microsoft Word a une logique complexe pour le choix d'un point d'arrêt si le texte est justifié et si le trait d'union est activé. Bref, Microsoft Word Peut-être préférer rétrécir ou stretch les espaces pour éviter l'articulation des lignes. Cette logique est probablement basée sur [L'article de Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words met en œuvre son propre algorithme H&J qui donne le même résultat que Microsoft Word et fournit une rupture de ligne identique dans le document de sortie.

## Voir aussi

* [Hyphen – bibliothèque de trait d'union](https://github.com/hunspell/hyphen/blob/master/README)
* [Caractère non standard](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Caractère automatique non standard en Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
