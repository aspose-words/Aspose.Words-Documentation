---
title: Comparer des documents dans Java
second_title: Aspose.Words pour Java
articleTitle: Comparer des Documents
linktitle: Comparer des Documents
type: docs
description: "Comparez deux documents dans tous les formats pris en charge et affichez les modifications de contenu. Vous pouvez appliquer des options avancées lors de la comparaison à l'aide de Java."
weight: 60
url: /fr/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

La comparaison de documents est un processus qui identifie les modifications entre deux documents et contient les modifications en tant que révisions. Ce processus compare deux documents quelconques, y compris les versions d'un document spécifique, puis les modifications entre les deux documents seront affichées sous forme de révisions dans le premier document.

La méthode de comparaison est réalisée en comparant des mots au niveau des caractères ou au niveau des mots. Si un mot contient un changement d'au moins un caractère, dans le résultat, la différence sera affichée comme un changement du mot entier, pas d'un caractère. Ce processus de comparaison est une tâche habituelle dans les industries juridiques et financières.

Au lieu de rechercher manuellement les différences entre les documents ou entre différentes versions de ceux-ci, vous pouvez utiliser Aspose.Words pour comparer des documents et obtenir des modifications de contenu dans la mise en forme, l'en-tête/pied de page, les tableaux, etc.

Cet article explique comment comparer des documents et comment spécifier des propriétés de comparaison avancées.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez comparer deux documents en ligne en utilisant le [Comparaison de documents en ligne](https://products.aspose.app/words/comparison) outil.

Notez que la méthode de comparaison, décrite ci-dessous, est utilisée dans cet outil pour garantir des résultats égaux. Ainsi, vous obtiendrez les mêmes résultats même en utilisant l'outil de comparaison en ligne ou en utilisant la méthode de comparaison dans Aspose.Words.

{{% /alert %}}

## Limitations et Formats de fichiers pris en charge {#limitations-and-supported-file-formats}

La comparaison de documents est une fonctionnalité très complexe. Il existe diverses parties de la combinaison de contenu qui doivent être analysées pour reconnaître toutes les différences. La raison de cette complexité est que Aspose.Words vise à obtenir les mêmes résultats de comparaison que l'algorithme de comparaison Microsoft Word.

La limitation générale pour deux documents comparés est qu'ils ne doivent pas avoir de révisions avant d'appeler la méthode compare car cette limitation existe dans Microsoft Word.

{{% alert color="primary" %}}

Notez que vous pouvez comparer deux documents quelconques dans le [formats de fichiers pris en charge](/words/java/supported-document-formats/). Fondamentalement, vous pouvez comparer des objets de document et même créer ces objets à partir de zéro sans avoir de format spécifique.

{{% /alert %}}

## Comparer deux Documents {#compare-two-documents}

Lorsque vous comparez des documents,les différences entre ce dernier document et le premier apparaissent comme des révisions du premier. Lorsque vous modifiez un document, chaque modification aura sa propre révision après l'exécution de la méthode de comparaison.

Aspose.Words vous permet d'identifier les différences entre les documents à l'aide de la méthode [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date), similaire à la fonction de comparaison de documents Microsoft Word. Il vous permet de vérifier des documents ou des versions de documents pour trouver des différences et des modifications, y compris des modifications de formatage telles que des changements de police, des changements d'espacement, l'ajout de mots et de paragraphes.

À la suite de la comparaison, les documents peuvent être déterminés comme égaux ou non égaux. Le terme "documents égaux" signifie que la méthode de comparaison ne peut pas représenter les changements comme des révisions. Cela signifie que le texte du document et la mise en forme du texte sont identiques. Mais il peut y avoir d'autres différences entre les documents. Par exemple, Microsoft Word ne prend en charge que les révisions de format pour les styles, et vous ne pouvez pas représenter l'insertion/suppression de style. Ainsi, les documents peuvent avoir un ensemble de styles différent, et la méthode **Compare** ne produit toujours aucune révision.

L'exemple de code suivant montre comment vérifier si deux documents sont égaux ou non:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

L'exemple de code suivant montre comment appliquer simplement la méthode `Compare` à deux documents:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Spécifiez les Options de Comparaison Avancées {#specify-advanced-comparing-properties}

Il existe de nombreuses propriétés différentes de la classe [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) que vous pouvez appliquer lorsque vous souhaitez comparer des documents.

Par exemple, Aspose.Words vous permet d'ignorer les modifications apportées lors d'une opération de comparaison pour certains types d'objets dans le document d'origine. Vous pouvez sélectionner la propriété appropriée pour le type d'objet, par exemple [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), et d'autres en les réglant sur "vrai".

De plus, Aspose.Words fournit la propriété [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) avec laquelle vous pouvez spécifier si vous souhaitez suivre les modifications par caractère ou par mot.

Une autre propriété commune est le choix du document dans lequel afficher les modifications de comparaison. Par exemple, la" boîte de dialogue Comparer les documents "dans Microsoft Word a l'option "Afficher les modifications dans" – cela affecte également les résultats de la comparaison. Aspose.Words fournit la propriété [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) qui sert à cette fin.

L'exemple de code suivant montre comment définir les propriétés de comparaison avancées:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
