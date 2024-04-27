---
title: Extraire le contenu sélectionné entre les nœuds Java
second_title: Aspose.Words pour Java
articleTitle: Extraire le contenu entre les nœuds dans un document
linktitle: Extraire le contenu entre les nœuds
type: docs
description: "Extraire le contenu du document en utilisant différentes méthodes Java."
weight: 140
url: /fr/java/extract-selected-content-between-nodes/
---

Lorsqu'on travaille avec des documents, il est important de pouvoir facilement extraire du contenu d'une gamme donnée dans un document. Toutefois, le contenu peut comprendre des éléments complexes tels que des paragraphes, des tableaux, des images, etc.

Quel que soit le contenu à extraire, la méthode pour extraire ce contenu sera toujours déterminée par quels nœuds sont choisis pour extraire le contenu entre. Il peut s'agir de corps de texte entiers ou d'exécutions de texte simples.

Il y a beaucoup de situations possibles et donc de différents types de nœuds à considérer lors de l'extraction du contenu. Par exemple, vous pourriez vouloir extraire du contenu entre:

- Deux paragraphes spécifiques
- Cycles spécifiques de texte
- Champs de différents types, tels que les champs de fusion
- Plages de début et de fin d'un signet ou d'un commentaire
- Différents textes contenus dans des sections distinctes

Dans certaines situations, vous pouvez même avoir besoin de combiner différents types de nœuds, comme l'extraction de contenu entre un paragraphe et un champ, ou entre une course et un signet.

Cet article fournit l'implémentation de code pour extraire du texte entre différents nœuds, ainsi que des exemples de scénarios communs.

{{% alert color="primary" %}}

Ces exemples ne sont que quelques démonstrations des nombreuses possibilités. Nous prévoyons que la fonctionnalité d'extraction de texte fasse partie du public API à l'avenir, et aucun code supplémentaire ne sera nécessaire. En attendant, n'hésitez pas à poster vos demandes concernant cette fonctionnalité sur le [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Pourquoi extraire le contenu

Souvent, l'extraction du contenu a pour but de le reproduire ou de le sauvegarder séparément dans un nouveau document. Par exemple, vous pouvez extraire du contenu et:

- Copier dans un document séparé
- Conversion d'une partie spécifique d'un document en PDF ou image
- Dupliquer le contenu du document plusieurs fois
- Travail avec le contenu extrait séparé du reste du document

Cela peut être facilement réalisé en utilisant Aspose.Words et la mise en œuvre du code ci-dessous.

## Extraire du contenu Algorithme

Le code de cette section traite de toutes les situations possibles décrites ci-dessus avec une méthode généralisée et réutilisable. Les grandes lignes de cette technique comprennent:

1. Rassembler les nœuds qui dictent la zone de contenu qui sera extraite de votre document. La récupération de ces nœuds est gérée par l'utilisateur dans son code, en fonction de ce qu'il veut extraire.
1. Passer ces nœuds à la **ExtractContent** méthode indiquée ci-dessous. Vous devez également passer un paramètre booléen qui indique si ces nœuds, agissant comme marqueurs, doivent être inclus dans l'extraction ou non.
1. Récupération d'une liste de contenus clonés (nœuds copiés) à extraire. Vous pouvez utiliser cette liste de nœuds de n'importe quelle manière, par exemple, créer un nouveau document contenant seulement le contenu sélectionné.

## Comment extraire le contenu

Nous travaillerons avec le document ci-dessous dans cet article. Comme vous pouvez le voir, il contient une variété de contenu. Notez également que le document contient une deuxième section commençant au milieu de la première page. Un signet et un commentaire sont également présents dans le document mais ne sont pas visibles dans la capture d'écran ci-dessous.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Pour extraire le contenu de votre document, vous devez appeler le `ExtractContent` méthode ci-dessous et passer les paramètres appropriés.

La base sous-jacente de cette méthode consiste à trouver des nœuds au niveau des blocs (paragraphes et tableaux) et à les cloner pour créer des copies identiques. Si les nœuds de marqueurs passés sont block-level, alors la méthode peut simplement copier le contenu sur ce niveau et l'ajouter au tableau.

Cependant, si les nœuds marqueurs sont en ligne (un enfant d'un paragraphe) alors la situation devient plus complexe, car il est nécessaire de diviser le paragraphe au nœud en ligne, qu'il s'agisse d'une course, de champs de signets, etc. Le contenu des nœuds parent clonés non présents entre les marqueurs est supprimé. Ce processus permet de s'assurer que les nœuds en ligne conserveront le formatage du paragraphe parent.

La méthode va également exécuter des vérifications sur les nœuds passés en tant que paramètres et lance une exception si l'un ou l'autre noeud est invalide. Les paramètres à passer à cette méthode sont:

1. **StartNode** et **EndNode**. Les deux premiers paramètres sont les nœuds qui définissent l'endroit où l'extraction du contenu doit commencer et se terminer à respectivement. Ces nœuds peuvent être à la fois niveau bloc ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) ou niveau en ligne (par exemple [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) etc.):
   1. Pour passer un champ, vous devez passer le **FieldStart** objet.
   1. Pour passer des signets, le **BookmarkStart** et [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) les noeuds doivent être passés.
   1. Pour faire passer les commentaires, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) les noeuds doivent être utilisés.
1. **IsInclusive**. Définit si les marqueurs sont inclus dans l'extraction ou non. Si cette option est définie à false et le même nœud ou nœuds consécutifs sont passés, puis une liste vide sera retournée:

      1. Si **FieldStart** noeud est passé alors cette option définit si le champ entier doit être inclus ou exclu.
      1. Si **BookmarkStart** ou **BookmarkEnd** noeud est passé, cette option définit si le signet est inclus ou juste le contenu entre la plage de signet.
      1. Si **CommentRangeStart** ou **CommentRangeEnd** noeud est passé, cette option définit si le commentaire lui-même doit être inclus ou juste le contenu dans la plage de commentaires.

La mise en œuvre **ExtractContent** méthode que vous pouvez trouver [ici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Cette méthode sera mentionnée dans les scénarios de cet article.

Nous définirons également une méthode personnalisée pour générer facilement un document à partir de nœuds extraits. Cette méthode est utilisée dans de nombreux scénarios ci-dessous et crée simplement un nouveau document et importe le contenu extrait.

L'exemple de code suivant montre comment prendre une liste de nœuds et les insérer dans un nouveau document:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Extraire le contenu entre les paragraphes

Ceci démontre comment utiliser la méthode ci-dessus pour extraire le contenu entre des paragraphes spécifiques. Dans ce cas, nous voulons extraire le corps de la lettre trouvée dans la première moitié du document. Nous pouvons dire que c'est entre le 7e et le 11e paragraphe.

Le code ci-dessous accomplit cette tâche. Les paragraphes appropriés sont extraits à l'aide de [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) méthode sur le document et passage des indices spécifiés. Nous passons ensuite ces nœuds au **ExtractContent** la méthode et indiquent qu'ils doivent être inclus dans l'extraction. Cette méthode renvoie le contenu copié entre ces nœuds qui sont ensuite insérés dans un nouveau document.

L'exemple de code suivant montre comment extraire le contenu entre des paragraphes spécifiques en utilisant le `ExtractContent` méthode ci-dessus:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Le document de sortie contient les deux paragraphes qui ont été extraits.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Extraire du contenu entre différents types de nœuds

Nous pouvons extraire du contenu entre n'importe quelle combinaison de nœuds de niveau de bloc ou d'inline. Dans ce scénario, nous allons extraire le contenu entre le premier paragraphe et le tableau dans la deuxième section inclusivement. Nous obtenons les nœuds des marqueurs en appelant [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) et [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) méthode sur la deuxième section du document pour récupérer **Paragraph** et **Table** les noeuds. Pour une légère variation laissez plutôt dupliquer le contenu et l'insérer sous l'original.

L'exemple de code suivant montre comment extraire le contenu entre un paragraphe et une table en utilisant le **ExtractContent** méthode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Le contenu entre le paragraphe et le tableau a été reproduit ci-dessous est le résultat.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Extraire le contenu entre les paragraphes Basé sur Style

Vous devrez peut-être extraire le contenu entre des paragraphes du même style ou d'un style différent, comme entre des paragraphes marqués de styles de cap.

Le code ci-dessous montre comment y parvenir. Il s'agit d'un exemple simple qui va extraire le contenu entre la première instance des styles "Header 1" et "Header 3" sans extraire les titres. Pour ce faire, nous avons défini le dernier paramètre à false, qui spécifie que les nœuds de marqueur ne doivent pas être inclus.

Dans une mise en œuvre appropriée, cela devrait être exécuté dans une boucle pour extraire le contenu entre tous les paragraphes de ces styles du document. Le contenu extrait est copié dans un nouveau document.

L'exemple de code suivant montre comment extraire du contenu entre des paragraphes avec des styles spécifiques en utilisant le **ExtractContent** méthode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Voici le résultat de l'opération précédente.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Extraire du contenu entre des opérations spécifiques

Vous pouvez extraire du contenu entre les nœuds en ligne comme **Run** aussi. **Runs** de différents paragraphes peuvent être passés comme marqueurs. Le code ci-dessous montre comment extraire un texte spécifique entre les mêmes **Paragraph** noeud.

L'exemple de code suivant montre comment extraire du contenu entre des séries spécifiques du même paragraphe en utilisant le **ExtractContent** méthode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Le texte extrait est affiché sur la console

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Extraire du contenu en utilisant un champ

Pour utiliser un champ comme marqueur, `FieldStart` le noeud doit être passé. Le dernier paramètre du `ExtractContent` la méthode définira si le champ entier doit être inclus ou non. Laissez-nous extraire le contenu entre le champ de fusion de FullName et un paragraphe dans le document. Nous utilisons [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) méthode de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) En cours. Cela rendra le **FieldStart** noeud du nom du champ de fusion passé à lui.

Dans notre cas, les let. **ExtractContent** méthode false pour exclure le champ de l'extraction. Nous rendrons le contenu extrait en PDF.

L'exemple de code suivant montre comment extraire du contenu entre un champ spécifique et un paragraphe dans le document en utilisant **ExtractContent** méthode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Le contenu extrait entre le champ et le paragraphe, sans le champ et les nœuds de repère de paragraphe rendus en PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Extraire du contenu d'un signet

Dans un document, le contenu défini dans un signet est encapsulé par le `BookmarkStart` et les nœuds SignetEnd. Le contenu trouvé entre ces deux nœuds constitue le signet. Vous pouvez passer l'un ou l'autre de ces nœuds comme marqueur, même ceux de différents signets, tant que le marqueur de départ apparaît avant le marqueur de fin dans le document.

Dans notre document d'exemple, nous avons un signet, nommé "Favoris"1. Le contenu de ce signet est mis en évidence dans notre document:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Nous allons extraire ce contenu dans un nouveau document en utilisant le code ci-dessous. Les **IsInclusive** option paramètre montre comment conserver ou jeter le signet.

L'exemple de code suivant montre comment extraire le contenu référencé par un signet **ExtractContent** méthode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

La sortie extraite avec la `IsInclusive` paramètre défini à true. La copie conservera également le signet.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

La sortie extraite avec la **IsInclusive** paramètre défini à false. La copie contient le contenu mais sans signet.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Extrait du contenu d'un commentaire

Un commentaire est composé des nœuds CommentRangeStart, CommentRangeEnd et Comment. Tous ces nœuds sont en ligne. Les deux premiers nœuds encapsulent le contenu du document qui est référencé par le commentaire, comme le montre la capture d'écran ci-dessous.

Les **Comment** le noeud lui-même est un [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) qui peut contenir des paragraphes et des runs. Il représente le message du commentaire vu comme une bulle de commentaires dans le volet de révision. Comme ce noeud est en ligne et un descendant d'un corps, vous pouvez également extraire le contenu de l'intérieur de ce message.

Dans notre document, nous avons un commentaire. Laissez-le afficher en affichant un balisage dans l'onglet Examen:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Le commentaire résume le titre, le premier paragraphe et le tableau de la deuxième section. Laissez-nous extraire ce commentaire dans un nouveau document. Les **IsInclusive** option dicte si le commentaire lui-même est conservé ou rejeté.

L'exemple de code suivant montre comment faire ceci est ci-dessous:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

D'abord la sortie extraite avec la `IsInclusive` paramètre défini à true. La copie contiendra également le commentaire.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Deuxièmement la sortie extraite avec **est inclusif** défini à false. La copie contient le contenu mais sans le commentaire.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Extraire du contenu en utilisant DocumentVisitor

Aspose.Words peut être utilisé non seulement pour créer Microsoft Word les documents en les construisant dynamiquement ou en fusionnant des modèles avec des données, mais aussi pour analyser des documents afin d'extraire des éléments de document distincts tels que des en-têtes, des pied de page, des paragraphes, des tables, des images, etc. Une autre tâche possible est de trouver tout le texte de formatage ou de style spécifique.

Utiliser [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) classe pour mettre en œuvre ce scénario d'utilisation. Cette classe correspond au modèle bien connu du visiteur. Avec [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), vous pouvez définir et exécuter des opérations personnalisées qui nécessitent une énumération sur l'arborescence des documents.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) fournit un ensemble de **VisitXXX** méthodes qui sont invoquées lorsqu'un élément de document particulier (node) est rencontré. Par exemple, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) est appelé lorsque le début d'un paragraphe de texte est trouvé et [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) est appelé lorsque la fin d'un paragraphe de texte est trouvée. Chaque **DocumentVisitor.VisitXXX** méthode accepte l'objet correspondant qu'elle rencontre afin que vous puissiez l'utiliser au besoin (disons récupérer le formatage), par exemple les deux [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) et [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) accepter [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) objet.

Chaque **DocumentVisitor.VisitXXX** méthode retourne a **VisitorAction** valeur qui contrôle le dénombrement des nœuds. Vous pouvez demander soit de continuer le dénombrement, de sauter le noeud courant (mais de continuer le dénombrement), soit d'arrêter le dénombrement des noeuds.

Voici les étapes à suivre pour déterminer et extraire les différentes parties d'un document:

- Créer une classe dérivée [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Surpasser et fournir des implémentations pour certains ou la totalité des **DocumentVisitor.VisitXXX** méthodes pour effectuer certaines opérations personnalisées.
- Appelez [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) sur le nœud d'où vous voulez commencer le dénombrement. Par exemple, si vous voulez énumérer l'ensemble du document, utilisez [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) fournit des implémentations par défaut pour tous les **DocumentVisitor.VisitXXX** méthodes. Il est ainsi plus facile de créer de nouveaux visiteurs de documents car seules les méthodes requises pour le visiteur particulier doivent être dépassées. Il n'est pas nécessaire de dépasser toutes les méthodes des visiteurs.

L'exemple suivant montre comment utiliser le modèle Visiteur pour ajouter de nouvelles opérations à la Aspose.Words modèle d'objet. Dans ce cas, nous créons un simple convertisseur de document en format texte:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Extrait du texte Seulement

Voici les moyens de récupérer le texte du document:

- Utilisation [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) avec [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) pour enregistrer en texte simple dans un fichier ou un flux
- Utilisation [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) et de passer le `SaveFormat.Text` paramètre. En interne, cela invoque l'enregistrement comme texte dans un flux de mémoire et renvoie la chaîne résultante
- Utilisation [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) pour récupérer du texte avec tout Microsoft Word les caractères de contrôle, y compris les codes de champ
- Mettre en œuvre une coutume [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) pour effectuer une extraction personnalisée

### Utilisation `Node.GetText` et `Node.ToString`

A Le document Word peut contenir des caractères de contrôle qui désignent des éléments spéciaux tels que le champ, la fin de la cellule, la fin de la section, etc. La liste complète des possibles caractères de contrôle Word est définie dans la **ControlChar** En cours. Les [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) method retourne le texte avec tous les caractères de contrôle présents dans le noeud.

Calling ToString retourne la représentation texte du document uniquement sans caractères de contrôle. Pour plus d'informations sur l'exportation en tant que texte simple, voir **Using SaveFormat.Text**.

L'exemple de code suivant montre la différence entre **GetText** et [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) méthodes sur un noeud:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Utilisation `SaveFormat.Text`

Cet exemple enregistre le document comme suit:

- Filtre les caractères de champ et les codes de champ, la forme, la note de bas de page, la note de fin et les références de commentaires
- Remplace la fin du paragraphe [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) caractères avec [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) combinaisons
- Utilise l'encodage UTF8

L'exemple de code suivant montre comment enregistrer un document au format TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Extraire des images de formes

Vous devrez peut-être extraire des images de documents pour effectuer certaines tâches. Aspose.Words vous permet de le faire aussi bien.

L'exemple de code suivant montre comment extraire des images d'un document:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}