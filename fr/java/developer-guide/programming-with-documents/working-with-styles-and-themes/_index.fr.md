---
title: Travailler avec les styles et les thèmes
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les styles et les thèmes
linktitle: Travailler avec les styles et les thèmes
description: "Amélioration Microsoft Word fonctions de formatage, travailler avec les styles et les thèmes en utilisant Java."
type: docs
weight: 110
url: /fr/java/working-with-styles-and-themes/
---

Les [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) classe est utilisé pour gérer intégré et appliquer des paramètres définis par l'utilisateur aux styles.

## Comment extraire le contenu basé sur les styles

À un niveau simple, récupérer le contenu basé sur les styles d'un document Word peut être utile pour identifier, lister et compter les paragraphes et les séries de texte formatés avec un style spécifique. Par exemple, vous devrez peut-être identifier des types particuliers de contenu dans le document, comme des exemples, des titres, des références, des mots clés, des noms de figures et des études de cas.

Pour aller plus loin, cela peut également être utilisé pour tirer parti de la structure du document, définie par les styles qu'il utilise, pour réutiliser le document pour une autre sortie, comme HTML. C'est en fait la façon dont la documentation Aspose est construite, Aspose.Words à l'essai. Un outil construit en utilisant Aspose.Words prend les documents Word source et les divise en sujets à certains niveaux de rubrique. Un fichier XML est produit en utilisant Aspose.Words qui est utilisé pour construire l'arbre de navigation que vous pouvez voir à gauche. Et puis Aspose.Words convertit chaque sujet en HTML. La solution pour récupérer du texte formaté avec des styles spécifiques dans un document Word est généralement économique et simple en utilisant Aspose.Words.

Pour illustrer comment facilement Aspose.Words s'occupe de récupérer du contenu basé sur les styles, laissez-nous regarder un exemple. Dans cet exemple, nous allons récupérer du texte formaté avec un style de paragraphe spécifique et un style de caractère à partir d'un exemple de document Word.

À un niveau élevé, il faudra:

1. Ouvrir un document Word en utilisant le [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) En cours.
1. Obtenir des collections de tous les paragraphes et tous les fonctionne dans le document.
1. Sélectionne seulement les paragraphes requis et exécute.

Spécifiquement, nous allons récupérer du texte formaté avec le style de paragraphe ‘En-tête 1' et le style de caractère ‘accent intense' de cet exemple de document Word

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

Dans cet exemple de document, le texte formaté avec le style de paragraphe de la rubrique "En-tête" est "Insert Tab", "Quick Styles" et "Thème", et le texte formaté avec le style de caractère "Intensément mis en évidence" est le nombre d'instances de texte bleu, italisé, gras tels que "galleries" et "look global".

La mise en œuvre d'une requête basée sur le style est assez simple dans le Aspose.Words document object model, car il utilise simplement des outils qui sont déjà en place. Deux méthodes de classe sont mises en œuvre pour cette solution:

1. **ParagraphsByStyleName** – Cette méthode récupère un tableau des paragraphes du document qui ont un nom de style spécifique.
1. **RunsByStyleName** – Cette méthode récupère un tableau de ceux exécutés dans le document qui ont un nom de style spécifique.

Ces deux méthodes sont très similaires, les seules différences étant les types de nœuds et la représentation des informations de style dans le paragraphe et les nœuds d'exécution. Voici une implémentation des paragraphesByStyleName affichée dans l'exemple de code ci-dessous pour trouver tous les paragraphes formatés avec le style spécifié.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Cette mise en œuvre utilise également les [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) méthode de la `Document` classe, qui renvoie une collection de tous les nœuds d'enfants immédiats.

Il est également intéressant de souligner que la collecte des paragraphes ne crée pas de frais généraux immédiats parce que les paragraphes sont chargés dans cette collection seulement lorsque vous y accédez. Ensuite, tout ce que vous devez faire est de passer par la collection, en utilisant la norme pour chaque opérateur et ajouter des paragraphes qui ont le style spécifié aux paragraphes AvecStyle. Les `Paragraph` nom de style peut être trouvé dans le [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) propriété des [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) objet.

La mise en œuvre de RunsByStyleName est presque la même, bien que nous sommes évidemment en utilisant `NodeType.Run` pour récupérer les nœuds d'exécution. Les [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) propriété d'un [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) objet est utilisé pour accéder aux informations de style dans le **Run** les noeuds

L'exemple de code suivant trouve tous les tirages formatés avec le style spécifié.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Lorsque les deux requêtes sont implémentées, il suffit de passer un objet document et de spécifier les noms de style du contenu que vous souhaitez récupérer:

{{% /alert %}}

L'exemple de code suivant lance les requêtes et affiche les résultats.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Lorsque tout est fait, l'exécution de l'échantillon affichera la sortie suivante:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Comme vous pouvez le voir, il s'agit d'un exemple très simple, montrant le nombre et le texte des paragraphes collectés et fonctionne dans l'échantillon de document Word.

## Insérer le séparateur de style pour mettre différents styles de paragraphe

Le séparateur de style peut être ajouté à la fin d'un paragraphe en utilisant le raccourci clavier Ctrl + Alt + Entrée dans MS Word. Cette fonctionnalité permet deux styles de paragraphe différents utilisés dans un paragraphe imprimé logique. Si vous voulez que le texte du début d'une rubrique donnée apparaisse dans une table des matières, mais que vous ne voulez pas que la rubrique entière de la table des matières, vous pouvez utiliser cette fonctionnalité

L'exemple de code suivant montre comment insérer un séparateur de style pour mettre différents styles de paragraphe

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copier tous les styles à partir du modèle

Il y a des cas où vous voulez copier tous les styles d'un document à l'autre. Vous pouvez utiliser le `Document.CopyStylesFromTemplate` méthode pour copier les styles du modèle spécifié vers un document. Lorsque les styles sont copiés à partir d'un modèle vers un document, les styles du même nom dans le document sont redéfinis pour correspondre aux descriptions de style dans le modèle. Les styles uniques du modèle sont copiés dans le document. Les styles uniques du document demeurent intacts

L'exemple de code suivant montre comment copier les styles d'un document à l'autre.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Comment manipuler Propriétés du thème

Nous avons ajouté de base API en Aspose.Words pour accéder aux propriétés du thème du document. Pour l'instant, API comprend les objets publics suivants:

- Oui. Thème
- ThèmeFonts
- Couleurs thématiques

Voici comment vous pouvez obtenir des propriétés de thème:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Et voici comment vous pouvez définir les propriétés du thème:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
