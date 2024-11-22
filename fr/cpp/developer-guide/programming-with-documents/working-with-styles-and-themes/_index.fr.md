---
title: Travailler avec des styles en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des Styles
linktitle: Travailler avec des Styles
description: "Fonctionnalités de formatage Microsoft Word améliorées, travaillant avec des styles et des thèmes en utilisant C++."
type: docs
weight: 110
url: /fr/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

La classe [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) est utilisée pour gérer les paramètres intégrés et appliquer les paramètres définis par l'utilisateur aux styles.

## Comment extraire du Contenu en fonction des Styles

À un niveau simple, la récupération du contenu basé sur les styles d'un document Word peut être utile pour identifier, répertorier et compter les paragraphes et les suites de texte formatés avec un style spécifique. Par exemple, vous devrez peut-être identifier des types particuliers de contenu dans le document, tels que des exemples, des titres, des références, des mots clés, des noms de figures et des études de cas.

Pour aller plus loin, cela peut également être utilisé pour tirer parti de la structure du document, définie par les styles qu'il utilise, pour réaffecter le document à une autre sortie, telle que HTML. C'est en fait ainsi que la documentation Aspose est construite, mettant Aspose.Words à l'épreuve. Un outil créé à l'aide de Aspose.Words prend les documents Word source et les divise en rubriques à certains niveaux d'en-tête. Un fichier XML est produit en utilisant Aspose.Words qui est utilisé pour construire l'arborescence de navigation que vous pouvez voir à gauche. Et puis Aspose.Words convertit chaque sujet en HTML.

La solution pour récupérer du texte formaté avec des styles spécifiques dans un document Word est généralement économique et simple en utilisant Aspose.Words.

### La Solution

Pour illustrer la facilité avec laquelle Aspose.Words gère la récupération du contenu en fonction des styles, examinons un exemple. Dans cet exemple, nous allons récupérer du texte formaté avec un style de paragraphe spécifique et un style de caractère à partir d'un exemple de document Word. À un niveau élevé, cela impliquera:
- Ouverture d'un document Word à l'aide de la classe `Document`.
- Obtenir des collections de tous les paragraphes et de toutes les exécutions dans le document.
- Sélection uniquement des paragraphes et des passages requis. Plus précisément, nous récupérerons le texte formaté avec le style de paragraphe "En-tête 1" et le style de caractère "Accentuation intense" à partir de cet exemple de document Word.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


Dans cet exemple de document, le texte formaté avec le style de paragraphe "En-tête 1 "est ‘Onglet Insertion" ‘ "Styles rapides" et "Thème", et le texte formaté avec le style de caractère "Accentuation intense" est les différentes occurrences de texte bleu, en italique et en gras telles que "galeries" et "aspect général".

### Le Code

L'implémentation d'une requête basée sur le style est assez simple dans le modèle d'objet de document Aspose.Words, car elle utilise simplement des outils déjà en place. Deux méthodes de classe sont implémentées pour cette solution: **ParagraphsByStyleName** – Cette méthode récupère un tableau des paragraphes du document qui ont un nom de style spécifique. **RunsByStyleName** - Cette méthode récupère un tableau de ces exécutions dans le document qui ont un nom de style spécifique. Ces deux méthodes sont très similaires, les seules différences étant les types de nœuds et la représentation des informations de style dans les nœuds de paragraphe et d'exécution. Voici une implémentation de ParagraphsByStyleName. Ci-dessous, l'exemple trouve tous les paragraphes formatés avec le style spécifié.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Cette implémentation utilise également la méthode `Document.GetChildNodes` de la classe `Document`, qui renvoie une collection de tous les nœuds avec le type spécifié, qui dans ce cas dans tous les paragraphes.

Notez que le deuxième paramètre de la méthode **Document.GetChildNodes** est défini sur true. Cela force la méthode **Document.GetChildNodes** à sélectionner récursivement parmi tous les nœuds enfants, plutôt que de sélectionner uniquement les enfants immédiats.

{{% /alert %}}

Il convient également de souligner que la collection paragraphs ne crée pas de surcharge immédiate car les paragraphes ne sont chargés dans cette collection que lorsque vous accédez à des éléments qu'ils contiennent. Ensuite, tout ce que vous avez à faire est de parcourir la collection, en utilisant la norme pour chaque opérateur et d'ajouter des paragraphes qui ont le style spécifié au tableau paragraphsWithStyle. Le nom du style `Paragraph` se trouve dans le Style. Propriété Name de l'objet `Paragraph.ParagraphFormat`. L'implémentation de RunsByStyleName est presque la même, bien que nous utilisions évidemment `NodeType.Run` pour récupérer les nœuds d'exécution. La propriété `Font.Style` d'un objet `Run` est utilisée pour accéder aux informations de style dans les nœuds **Run**. L'exemple below code trouve toutes les exécutions formatées avec le style spécifié.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Lorsque les deux requêtes sont implémentées, il vous suffit de passer un objet document et de spécifier les noms de style du contenu que vous souhaitez récupérer: Exemple ci-dessous exécutez des requêtes et affichez les résultats. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Résultat Final

Lorsque tout est terminé, l'exécution de l'échantillon affichera la sortie suivante:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Comme vous pouvez le voir, il s'agit d'un exemple très simple, montrant le nombre et le texte des paragraphes collectés et s'exécute dans l'exemple de document Word.

## Procédure pas à pas pour insérer et utiliser le champ Table des matières

Souvent, vous travaillerez avec des documents contenant une table des matières (table des matières). En utilisant Aspose.Words, vous pouvez insérer votre propre table des matières ou reconstruire complètement la table des matières existante dans le document en utilisant seulement quelques lignes de code. Cet article explique comment utiliser le champ Table des matières et démontre:

- Comment insérer un tout nouveau `TOC`
- Mettez à jour TOCs nouveau ou existant dans le document.
- Spécifiez des commutateurs pour contrôler le formatage et la structure globale de la table des matières.
- Comment modifier les styles et l'apparence de la table des matières.
- Comment supprimer un champ `TOC` entier ainsi que toutes les entrées du document.

### Insérer des champs TC

Souvent, une ligne de texte spécifique est désignée pour le `TOC` et est marquée d'un champ `TC`. Le moyen le plus simple de le faire dans MS Word est de surligner le texte et d'appuyer sur *ALT+SHIFT+O*. Cela crée automatiquement un champ `TC` en utilisant le texte sélectionné. La même technique peut être accomplie par le code. Le code ci-dessous trouvera le texte correspondant à l'entrée et insérera un champ `TC` à la même position que le texte. Le code est basé sur la même technique utilisée dans l'article. L'exemple ci-dessous montre comment rechercher et insérer un champ `TC` dans le texte d'un document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Modifier une Table des matières

#### Modifier la mise en forme des styles

Le formatage des entrées dans le `TOC` n'utilise pas les styles d'origine des entrées marquées, à la place, chaque niveau est formaté en utilisant un style `TOC` équivalent. Par exemple, le premier niveau du `TOC` est formaté avec le style **TOC1**, le deuxième niveau formaté avec le style **TOC2** et ainsi de suite. Cela signifie que pour changer l'apparence des `TOC`, ces styles doivent être modifiés. Dans Aspose.Words, ces styles sont représentés par les paramètres régionaux indépendants `StyleIdentifier.TOC1` à `StyleIdentifier.TOC9` et peuvent être récupérés à partir de la collection `Document.Styles` à l'aide de ces identifiants. Une fois que le style approprié du document a été récupéré, la mise en forme de ce style peut être modifiée. Toute modification de ces styles sera automatiquement reflétée sur le TOCs dans le document. L'exemple below code modifie une propriété de formatage utilisée dans le style `TOC` de premier niveau.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Il est également utile de noter que tout formatage direct d'un paragraphe (défini sur le paragraphe lui-même et non dans le style) marqué pour inclure le `TOC` sera copié dans l'entrée de la table des matières. Par exemple, si le style d'en-tête 1 est utilisé pour marquer le contenu du `TOC` et que ce style a une mise en forme en gras tandis que le paragraphe a également une mise en forme en italique directement appliquée. L'entrée `TOC` résultante ne sera pas en gras car cela fait partie de la mise en forme du style, mais elle sera en italique car elle est directement formatée sur le paragraphe. Vous pouvez également contrôler la mise en forme des séparateurs utilisés entre chaque entrée et le numéro de page. Par défaut, il s'agit d'une ligne pointillée qui est répartie sur la numérotation des pages à l'aide d'un caractère de tabulation et d'un taquet de tabulation droit aligné près de la marge de droite.

En utilisant la classe `Style` récupérée pour le niveau `TOC` particulier que vous souhaitez modifier, vous pouvez également modifier leur apparence dans le document. Pour changer la façon dont cela apparaît, il faut d'abord appeler `Style.ParagraphFormat` pour récupérer la mise en forme du paragraphe pour le style. À partir de là, les taquets de tabulation peuvent être récupérés en appelant `ParagraphFormat.TabStops` et le taquet de tabulation approprié modifié. En utilisant cette même technique, l'onglet lui-même peut être déplacé ou supprimé complètement. L'exemple below code montre comment modifier la position du taquet de tabulation de droite dans les paragraphes associés `TOC`. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Suppression d'une Table des matières du document

Une table des matières peut être supprimée du document en supprimant tous les nœuds trouvés entre les nœuds `FieldStart` et FieldEnd du champ `TOC`. Le code ci-dessous le démontre. La suppression du champ `TOC` est plus simple qu'un champ normal car nous ne gardons pas trace des champs imbriqués. Au lieu de cela, nous vérifions que le nœud `FieldEnd` est de type `FieldType.FieldTOC`, ce qui signifie que nous avons rencontré la fin de la table des matières actuelle. Cette technique peut être utilisée dans ce cas sans se soucier des champs imbriqués, car nous pouvons supposer que tout document correctement formé n'aura pas de champ `TOC` entièrement imbriqué dans un autre champ `TOC`. Tout d'abord, les `FieldStart` nœuds de chaque `TOC` sont collectés et stockés. Le `TOC` spécifié est ensuite énuméré afin que tous les nœuds du champ soient visités et stockés. Les nœuds sont ensuite supprimés du document. L'exemple below code montre comment supprimer un `TOC` spécifié d'un document. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Insérer un Séparateur de Style pour Mettre Différents Styles de Paragraphe

Le séparateur de style peut être ajouté à la fin d'un paragraphe à l'aide du raccourci clavier Ctrl + Alt + Entrée dans MS Word. Cette fonctionnalité permet d'utiliser deux styles de paragraphe différents dans un paragraphe imprimé logique. Si vous souhaitez qu'un texte du début d'un en-tête particulier apparaisse dans une Table des matières mais que vous ne souhaitez pas que l'en-tête entier apparaisse dans la Table des matières, vous pouvez utiliser cette fonctionnalité. L'exemple below code montre comment insérer un séparateur de style pour mettre différents styles de paragraphe.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Copier tous les styles du Modèle

Il y a des cas où vous souhaitez copier tous les styles d'un document dans un autre. Vous pouvez utiliser la méthode `Document.CopyStylesFromTemplate` pour copier des styles du modèle spécifié dans un document. Lorsque des styles sont copiés d'un modèle vers un document, les styles portant le même nom dans le document sont redéfinis pour correspondre aux descriptions de style du modèle. Les styles uniques du modèle sont copiés dans le document. Les styles uniques du document restent intacts. L'exemple below code montre comment copier des styles d'un document dans un autre.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
