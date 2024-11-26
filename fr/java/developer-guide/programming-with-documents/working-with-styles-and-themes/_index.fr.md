---
title: Travailler avec des Styles et des Thèmes
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des Styles et des Thèmes
linktitle: Travailler avec des Styles et des Thèmes
description: "Fonctions de formatage Microsoft Word améliorées, utilisation des styles et des thèmes à l'aide de Java."
type: docs
weight: 110
url: /fr/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

La classe [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) est utilisée pour gérer les paramètres intégrés et appliquer les paramètres définis par l'utilisateur aux styles.

## Comment extraire du Contenu en fonction des Styles

À un niveau simple, la récupération du contenu basé sur les styles d'un document Word peut être utile pour identifier, répertorier et compter les paragraphes et les suites de texte formatés avec un style spécifique. Par exemple, vous devrez peut-être identifier des types particuliers de contenu dans le document, tels que des exemples, des titres, des références, des mots clés, des noms de figures et des études de cas.

Pour aller plus loin, cela peut également être utilisé pour tirer parti de la structure du document, définie par les styles qu'il utilise, pour réaffecter le document à une autre sortie, telle que HTML. C'est en fait ainsi que la documentation Aspose est construite, mettant Aspose.Words à l'épreuve. Un outil créé à l'aide de Aspose.Words prend les documents Word source et les divise en rubriques à certains niveaux d'en-tête. Un fichier XML est produit en utilisant Aspose.Words qui est utilisé pour construire l'arborescence de navigation que vous pouvez voir à gauche. Et puis Aspose.Words convertit chaque sujet en HTML. La solution pour récupérer du texte formaté avec des styles spécifiques dans un document Word est généralement économique et simple en utilisant Aspose.Words.

Pour illustrer la facilité avec laquelle Aspose.Words gère la récupération du contenu en fonction des styles, examinons un exemple. Dans cet exemple, nous allons récupérer du texte formaté avec un style de paragraphe spécifique et un style de caractère à partir d'un exemple de document Word.

À un niveau élevé, cela impliquera:

1. Ouverture d'un document Word à l'aide de la classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Obtenir des collections de tous les paragraphes et de toutes les exécutions dans le document.
1. Sélection uniquement des paragraphes et des passages requis.

Plus précisément, nous allons récupérer du texte formaté avec le style de paragraphe "Heading 1 "et le style de caractère" Accentuation intense " à partir de cet exemple de document Word.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

Dans cet exemple de document, le texte formaté avec le style de paragraphe "Heading 1 "est ‘Insérer un onglet" ‘ "Styles rapides" et "Thème", et le texte formaté avec le style de caractère "Accentuation intense’ est les différentes occurrences de texte bleu, en italique et en gras telles que "galeries" et "aspect général".

L'implémentation d'une requête basée sur le style est assez simple dans le modèle d'objet de document Aspose.Words, car elle utilise simplement des outils déjà en place. Deux méthodes de classe sont implémentées pour cette solution:

1. **ParagraphsByStyleName** - Cette méthode récupère un tableau des paragraphes du document qui ont un nom de style spécifique.
1. **RunsByStyleName** - Cette méthode récupère un tableau de ces exécutions dans le document qui ont un nom de style spécifique.

Ces deux méthodes sont très similaires, les seules différences étant les types de nœuds et la représentation des informations de style dans les nœuds de paragraphe et d'exécution. Voici une implémentation de ParagraphsByStyleName illustrée dans l'exemple de code ci-dessous pour trouver tous les paragraphes formatés avec le style spécifié.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Cette implémentation utilise également la méthode [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) de la classe `Document`, qui renvoie une collection de tous les nœuds enfants immédiats.

Il convient également de souligner que la collection paragraphs ne crée pas de surcharge immédiate car les paragraphes ne sont chargés dans cette collection que lorsque vous accédez à des éléments qu'ils contiennent.Ensuite, tout ce que vous avez à faire est de parcourir la collection, en utilisant l'opérateur standard foreach et d'ajouter des paragraphes qui ont le style spécifié au tableau paragraphsWithStyle. Le nom du style `Paragraph` se trouve dans la propriété [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) de l'objet [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

L'implémentation de RunsByStyleName est presque la même, bien que nous utilisions évidemment `NodeType.Run` pour récupérer les nœuds d'exécution. La propriété [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) d'un objet [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) est utilisée pour accéder aux informations de style dans les nœuds **Run**.

L'exemple de code suivant trouve toutes les exécutions formatées avec le style spécifié.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Lorsque les deux requêtes sont implémentées, il vous suffit de transmettre un objet document et de spécifier les noms de style du contenu que vous souhaitez récupérer:

{{% /alert %}}

L'exemple de code suivant exécute des requêtes et affiche les résultats.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Lorsque tout est terminé, l'exécution de l'échantillon affichera la sortie suivante:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Comme vous pouvez le voir, il s'agit d'un exemple très simple, montrant le nombre et le texte des paragraphes collectés et s'exécute dans l'exemple de document Word.

## Insérer un Séparateur de Style pour Mettre Différents Styles de Paragraphe

Le séparateur de style peut être ajouté à la fin d'un paragraphe à l'aide du raccourci clavier Ctrl + Alt + Entrée dans MS Mot. Cette fonctionnalité permet d'utiliser deux styles de paragraphe différents dans un paragraphe imprimé logique. Si vous souhaitez que du texte du début d'un en-tête particulier apparaisse dans une Table des matières mais que vous ne souhaitez pas que l'en-tête entier apparaisse dans la Table des matières, vous pouvez utiliser cette fonctionnalité.

L'exemple de code suivant montre comment insérer un séparateur de style pour mettre différents styles de paragraphe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copier tous les styles du Modèle

Il y a des cas où vous souhaitez copier tous les styles d'un document dans un autre. Vous pouvez utiliser la méthode `Document.CopyStylesFromTemplate` pour copier des styles du modèle spécifié dans un document. Lorsque des styles sont copiés d'un modèle vers un document, les styles portant le même nom dans le document sont redéfinis pour correspondre aux descriptions de style du modèle. Les styles uniques du modèle sont copiés dans le document. Les styles uniques du document restent intacts.

L'exemple de code suivant montre comment copier des styles d'un document dans un autre.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Comment manipuler les Propriétés du Thème

Nous avons ajouté API de base dans Aspose.Words pour accéder aux propriétés du thème du document. Pour l'instant, ce API inclut les objets publics suivants:

- Thème
- ThemeFonts
- ThemeColors

Voici comment vous pouvez obtenir les propriétés du thème:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Et voici comment vous pouvez définir les propriétés du thème:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
