---
title: Comparer des documents dans C#
second_title: Aspose.Words pour .NET
articleTitle: Comparer des documents
linktitle: Comparer des documents
description: "Comparez deux documents dans tous les formats pris en charge et affiche les modifications de contenu à l'aide de C#. Vous pouvez appliquer des options avancées lors de la comparaison."
type: docs
weight: 60
url: /fr/net/compare-documents/
---

La comparaison de documents est un processus qui identifie les modifications entre deux documents et contient les modifications sous forme de révisions. Ce processus compare deux documents, y compris les versions d'un document spécifique, puis les modifications entre les deux documents seront affichées sous forme de révisions dans le premier document.

La méthode de comparaison est obtenue en comparant les mots au niveau des caractères ou au niveau des mots. Si un mot contient un changement d'au moins un caractère, dans le résultat, la différence sera affichée comme un changement du mot entier et non d'un caractère. Ce processus de comparaison est une tâche habituelle dans les secteurs juridique et financier.

Au lieu de rechercher manuellement les différences entre les documents ou entre leurs différentes versions, vous pouvez utiliser Aspose.Words pour comparer des documents et obtenir des modifications de contenu en termes de formatage, d'en-tête/pied de page, de tableaux, etc.

Cet article explique comment comparer des documents et comment spécifier les propriétés de comparaison avancées.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez comparer deux documents en ligne en utilisant l'outil [Comparaison de documents en ligne](https://products.aspose.app/words/comparison).

Notez que la méthode de comparaison, décrite ci-dessous, est utilisée dans cet outil pour garantir l'obtention de résultats égaux. Ainsi, vous obtiendrez les mêmes résultats même en utilisant l’outil de comparaison en ligne ou en utilisant la méthode de comparaison dans Aspose.Words.

{{% /alert %}}

## Limitations et formats de fichiers pris en charge {#limitations-and-supported-file-formats}

La comparaison de documents est une fonctionnalité très complexe. Il existe diverses parties de la combinaison de contenu qui doivent être analysées pour reconnaître toutes les différences. La raison de cette complexité est due au fait que Aspose.Words vise à obtenir les mêmes résultats de comparaison que l'algorithme de comparaison Microsoft Word.

La limitation générale pour deux documents comparés est qu'ils ne doivent pas avoir de révisions avant d'appeler la méthode de comparaison car cette limitation existe dans Microsoft Word.

{{% alert color="primary" %}}

Notez que vous pouvez comparer deux documents quelconques dans le [Formats de documents pris en charge](/words/fr/net/supported-document-formats/). Fondamentalement, vous pouvez comparer des objets de document et même créer ces objets à partir de zéro sans avoir de format spécifique.

{{% /alert %}}

## Comparer deux documents {#compare-two-documents}

Lorsque vous comparez des documents, les différences entre ce dernier et le premier apparaissent sous forme de révisions du premier. Lorsque vous modifiez un document, chaque modification aura sa propre révision après avoir exécuté la méthode de comparaison.

Aspose.Words vous permet d'identifier les différences entre les documents à l'aide de la méthode [Compare](https://reference.aspose.com/words/fr/net/aspose.words/document/compare/#compare/), similaire à la fonction de comparaison de documents Microsoft Word. Il vous permet de vérifier des documents ou des versions de documents pour trouver des différences et des modifications, y compris des modifications de formatage telles que des changements de police, des changements d'espacement, l'ajout de mots et de paragraphes.

À la suite d'une comparaison, les documents peuvent être déterminés comme étant égaux ou non. Le terme documents "égaux" signifie que la méthode de comparaison n’est pas capable de représenter les changements comme des révisions. Cela signifie que le texte du document et le formatage du texte sont identiques. Mais il peut y avoir d’autres différences entre les documents. Par exemple, Microsoft Word prend uniquement en charge les révisions de format pour les styles et vous ne pouvez pas représenter l'insertion/suppression de styles. Ainsi, les documents peuvent avoir un ensemble de styles différent et la méthode **Compare** ne produit toujours aucune révision.

L'exemple de code suivant montre comment vérifier si deux documents sont égaux ou non:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

L'exemple de code suivant montre comment appliquer simplement la méthode `Compare` à deux documents:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Spécifier les options de comparaison avancées {#specify-advanced-comparing-properties}

Il existe de nombreuses propriétés différentes de la classe [CompareOptions](https://reference.aspose.com/words/fr/net/aspose.words.comparing/compareoptions/) que vous pouvez appliquer lorsque vous souhaitez comparer des documents.

Par exemple, Aspose.Words permet d'ignorer les modifications apportées lors d'une opération de comparaison pour certains types d'objets au sein du document d'origine. Vous pouvez sélectionner la propriété appropriée pour le type d'objet, tel que [IgnoreHeadersAndFooters](https://reference.aspose.com/words/fr/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/fr/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/fr/net/aspose.words.comparing/compareoptions/ignorecomments/) et autres en les définissant sur "true".

De plus, Aspose.Words fournit la propriété [Granularity](https://reference.aspose.com/words/fr/net/aspose.words.comparing/compareoptions/granularity/) avec laquelle vous pouvez spécifier si vous souhaitez suivre les modifications par caractère ou par mot.

Une autre propriété courante est le choix du document dans lequel afficher les changements de comparaison. Par exemple, la "boîte de dialogue Comparer les documents" dans Microsoft Word a l'option "Afficher les modifications dans" – cela affecte également les résultats de la comparaison. Aspose.Words fournit la propriété [Target](https://reference.aspose.com/words/fr/net/aspose.words.comparing/compareoptions/target/) qui sert à cet effet.

L'exemple de code suivant montre comment définir les propriétés de comparaison avancées:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
