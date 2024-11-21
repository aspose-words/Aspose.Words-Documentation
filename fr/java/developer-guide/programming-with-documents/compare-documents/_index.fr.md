---
title: Comparer les documents Java
second_title: Aspose.Words pour Java
articleTitle: Comparer les documents
linktitle: Comparer les documents
type: docs
description: "Comparez deux documents dans n'importe quel format pris en charge et affiche les changements de contenu. Vous pouvez appliquer des options avancées lors de la comparaison Java."
weight: 60
url: /fr/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

La comparaison des documents est un processus qui identifie les changements entre deux documents et contient les changements comme révisions. Ce processus compare deux documents, y compris des versions d'un document particulier, puis les changements entre les deux documents seront présentés sous forme de révisions dans le premier document.

La méthode de comparaison est obtenue en comparant les mots au niveau des caractères ou au niveau des mots. Si un mot contient un changement d'au moins un caractère, dans le résultat, la différence sera affichée comme un changement du mot entier, pas un caractère. Ce processus de comparaison est une tâche courante dans les secteurs juridique et financier.

Au lieu de rechercher manuellement des différences entre les documents ou entre les différentes versions d'entre eux, vous pouvez utiliser Aspose.Words pour comparer les documents et obtenir des changements de contenu dans le formatage, l'en-tête / pied de page, les tables, et plus.

Cet article explique comment comparer des documents et comment spécifier des propriétés de comparaison avancées.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez comparer deux documents en ligne en utilisant [Comparaison des documents en ligne](https://products.aspose.app/words/comparison) outil.

Veuillez noter que la méthode de comparaison décrite ci-dessous est utilisée dans cet outil pour obtenir des résultats égaux. Ainsi, vous obtiendrez les mêmes résultats même en utilisant l'outil de comparaison en ligne ou en utilisant la méthode de comparaison dans Aspose.Words.

{{% /alert %}}

## Limitations et formats de fichiers pris en charge {#limitations-and-supported-file-formats}

La comparaison des documents est une caractéristique très complexe. Il existe différentes parties de la combinaison de contenu qui doivent être analysées pour reconnaître toutes les différences. La raison de cette complexité est que Aspose.Words a pour objectif d'obtenir les mêmes résultats de comparaison que les Microsoft Word algorithme de comparaison.

La limite générale pour deux documents comparés est qu'ils ne doivent pas avoir de révisions avant d'appeler la méthode de comparaison puisque cette limitation existe dans Microsoft Word.

{{% alert color="primary" %}}

Notez que vous pouvez comparer deux documents dans la [Formats de documents pris en charge](/words/fr/java/supported-document-formats/). Fondamentalement, vous pouvez comparer des objets document et même vous pouvez créer ces objets à partir de zéro sans avoir aucun format spécifique.

{{% /alert %}}

## Comparer deux documents {#compare-two-documents}

Lorsque vous comparez des documents, les différences entre le dernier document et le premier apparaissent comme des révisions au premier. Lorsque vous modifiez un document, chaque modification aura sa propre révision après avoir exécuté la méthode de comparaison.

Aspose.Words vous permet d'identifier les différences de documents [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) méthode – c'est similaire à la Microsoft Word fonction de comparaison du document. Il vous permet de vérifier les documents ou les versions de documents pour trouver les différences et les changements, y compris les modifications de formatage telles que les modifications de police, les changements d'espacement, l'ajout de mots et de paragraphes.

À la suite de la comparaison, les documents peuvent être considérés comme égaux ou non. Le terme "documents égaux" signifie que la méthode de comparaison n'est pas capable de représenter les changements comme des révisions. Cela signifie que le texte du document et le formatage du texte sont les mêmes. Mais il peut y avoir d'autres différences entre les documents. Par exemple, Microsoft Word ne prend en charge que les révisions de format pour les styles, et vous ne pouvez pas représenter l'insertion/suppression de style. Ainsi, les documents peuvent avoir un ensemble différent de styles, et le **Compare** méthode ne produit toujours aucune révision.

L'exemple de code suivant montre comment vérifier si deux documents sont égaux ou non:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

L'exemple de code suivant montre comment appliquer simplement `Compare` méthode à deux documents:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Spécifier les options de comparaison avancées {#specify-advanced-comparing-properties}

Il ya beaucoup de propriétés différentes de la [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) classe que vous pouvez appliquer lorsque vous voulez comparer des documents.

Par exemple, Aspose.Words vous permet d'ignorer les modifications apportées lors d'une opération de comparaison pour certains types d'objets dans le document original. Vous pouvez sélectionner la propriété appropriée pour le type d'objet, comme [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), et les autres en les mettant à "true".

En outre, Aspose.Words fournit les [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) propriété avec laquelle vous pouvez spécifier si suivre les modifications par caractère ou par mot.

Une autre propriété commune est un choix dans lequel le document pour montrer des changements de comparaison. Par exemple, la boîte de dialogue "Compare documents" dans Microsoft Word a l'option Afficher les changements en – cela affecte également les résultats de comparaison. Aspose.Words fournit les [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) une propriété qui sert cet objectif.

L'exemple de code suivant montre comment définir les propriétés de comparaison avancées:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
