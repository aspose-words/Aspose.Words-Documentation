---
title: Travailler avec des styles et des thèmes
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des styles et des thèmes
linktitle: Travailler avec des styles et des thèmes
description: "Accédez et gérez les styles et les thèmes d'un document à l'aide de Python."
type: docs
weight: 110
url: /fr/python-net/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

La classe [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) est utilisée pour gérer les paramètres intégrés et appliquer les paramètres définis par l'utilisateur aux styles.

## Accéder aux styles

Vous pouvez obtenir une collection de styles définis dans le document à l'aide de la propriété [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Cette collection contient à la fois les styles intégrés et définis par l'utilisateur dans un document. Un style particulier peut être obtenu par son nom/alias, son identifiant de style ou son index. L'exemple de code suivant montre comment accéder à la collection de styles définis dans le document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Comment extraire du contenu en fonction des styles

À un niveau simple, récupérer le contenu basé sur les styles d'un document Word peut être utile pour identifier, répertorier et compter les paragraphes et les séquences de texte formatés avec un style spécifique. Par exemple, vous devrez peut-être identifier des types particuliers de contenu dans le document, tels que des exemples, des titres, des références, des mots-clés, des noms de figures et des études de cas.

Pour aller plus loin, cela peut également être utilisé pour exploiter la structure du document, définie par les styles qu'il utilise, pour réutiliser le document pour une autre sortie, telle que HTML. C'est en fait ainsi que la documentation Aspose est construite, mettant Aspose.Words à l'épreuve. Un outil construit à l'aide de Aspose.Words prend les documents Word source et les divise en sujets à certains niveaux de titre. Un fichier XML est produit à l'aide de Aspose.Words qui est utilisé pour construire l'arborescence de navigation que vous pouvez voir à gauche. Et puis Aspose.Words convertit chaque sujet en HTML.

La solution pour récupérer du texte formaté avec des styles spécifiques dans un document Word est généralement économique et simple en utilisant Aspose.Words.

### La solution

Pour illustrer avec quelle facilité Aspose.Words gère la récupération de contenu en fonction des styles, regardons un exemple. Dans cet exemple, nous allons récupérer du texte formaté avec un style de paragraphe spécifique et un style de caractère à partir d'un exemple de document Word. À un niveau élevé, cela impliquera:
- Ouverture d'un document Word à l'aide de la classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Obtenir des collections de tous les paragraphes et de toutes les séquences du document.
- Sélection uniquement des paragraphes et des courses requis. Plus précisément, nous récupérerons le texte formaté avec le style de paragraphe "Titre 1" et le style de caractère "Accentuation intense" à partir de cet exemple de document Word.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


Dans cet exemple de document, le texte formaté avec le style de paragraphe "Titre 1" est "Insérer une tabulation", "Styles rapides" et "Thème", et le texte formaté avec le style de caractère "Accentuation intense" est composé de plusieurs instances de bleu, texte en italique et en gras tel que "galeries" et "aspect général".

### Le code

L'implémentation d'une requête basée sur le style est assez simple dans le modèle objet du document Aspose.Words, car elle utilise simplement des outils déjà en place. Deux méthodes de classe sont implémentées pour cette solution:
- **paragraphes_by_style_name** – Cette méthode récupère un tableau de paragraphes du document qui ont un nom de style spécifique.
- **runs_by_style_name** – Cette méthode récupère un tableau des exécutions du document qui ont un nom de style spécifique. Ces deux méthodes sont très similaires, les seules différences étant les types de nœuds et la représentation des informations de style dans les nœuds de paragraphe et d'exécution. Voici une implémentation de `paragraphs_by_style_name`: L'exemple ci-dessous trouve tous les paragraphes formatés avec le style spécifié.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Cette implémentation utilise également la méthode [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) de la classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), qui renvoie une collection de tous les nœuds avec le type spécifié, qui dans ce cas dans tous les paragraphes.

Notez que le deuxième paramètre de la méthode [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) est défini sur `True`. Cela force la méthode [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) à effectuer une sélection récursive parmi tous les nœuds enfants, plutôt que de sélectionner uniquement les enfants immédiats.

{{% /alert %}}

Il convient également de souligner que la collection paragraphes ne crée pas de surcharge immédiate car les paragraphes sont chargés dans cette collection uniquement lorsque vous accédez à des éléments qu'ils contiennent. Ensuite, tout ce que vous avez à faire est de parcourir la collection, en utilisant l'opérateur foreach standard et d'ajouter des paragraphes ayant le style spécifié au tableau paragraphes_with_style. Le nom du style `Paragraph` se trouve dans la propriété [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) de l'objet [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). L'implémentation de **runs_by_style_name** est presque la même, même si nous utilisons évidemment [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) pour récupérer les nœuds d'exécution. La propriété [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) d'un objet [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) est utilisée pour accéder aux informations de style dans les nœuds [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). L'exemple ci-dessous recherche toutes les exécutions formatées avec le style spécifié.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Lorsque les deux requêtes sont implémentées, tout ce que vous avez à faire est de transmettre un objet document et de spécifier les noms de style du contenu que vous souhaitez récupérer: L'exemple ci-dessous exécute des requêtes et affiche les résultats. Vous pouvez télécharger le fichier modèle de cet exemple depuis [ici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Résultat final

Lorsque tout est terminé, l’exécution de l’exemple affichera le résultat suivant:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Comme vous pouvez le voir, il s'agit d'un exemple très simple, montrant le numéro et le texte des paragraphes collectés et exécutés dans l'exemple de document Word.

## Copier tous les styles du modèle

Il existe des cas où vous souhaitez copier tous les styles d'un document dans un autre. Vous pouvez utiliser la méthode [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) pour copier les styles du modèle spécifié vers un document. Lorsque les styles sont copiés d'un modèle vers un document, les styles portant le même nom dans le document sont redéfinis pour correspondre aux descriptions de style dans le modèle. Les styles uniques du modèle sont copiés dans le document. Les styles uniques du document restent intacts. L'exemple Below code montre comment copier des styles d'un document dans un autre.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Comment manipuler les propriétés du thème

Nous avons ajouté API de base dans Aspose.Words pour accéder aux propriétés du thème du document. Pour l'instant, ce API inclut les objets publics suivants:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Voici comment obtenir les propriétés du thème:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

Et voici comment définir les propriétés du thème:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
