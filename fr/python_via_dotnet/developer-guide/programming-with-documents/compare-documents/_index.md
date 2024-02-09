---
title: Comparer des documents dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Comparer des documents
linktitle: Comparer des documents
description: "Comparez deux documents dans tous les formats pris en charge et affiche les modifications de contenu à l'aide de Python. Vous pouvez appliquer des options avancées lors de la comparaison."
type: docs
weight: 60
url: /fr/python-net/compare-documents/
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

Notez que vous pouvez comparer deux documents quelconques dans le [Formats de documents pris en charge](/words/fr/python-net/supported-document-formats/). Fondamentalement, vous pouvez comparer des objets de document et même créer ces objets à partir de zéro sans avoir de format spécifique.

{{% /alert %}}

## Comparer deux documents {#compare-two-documents}

Lorsque vous comparez des documents, les différences entre ce dernier et le premier apparaissent sous forme de révisions du premier. Lorsque vous modifiez un document, chaque modification aura sa propre révision après avoir exécuté la méthode de comparaison.

Aspose.Words vous permet d'identifier les différences entre les documents à l'aide de la méthode [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/), similaire à la fonction de comparaison de documents Microsoft Word. Il vous permet de vérifier des documents ou des versions de documents pour trouver des différences et des modifications, y compris des modifications de formatage telles que des changements de police, des changements d'espacement, l'ajout de mots et de paragraphes.

À la suite d'une comparaison, les documents peuvent être déterminés comme étant égaux ou non. Le terme documents "égaux" signifie que la méthode de comparaison n'est pas capable de représenter les changements comme des révisions. Cela signifie que le texte du document et le formatage du texte sont identiques. Mais il peut y avoir d’autres différences entre les documents. Par exemple, Microsoft Word prend uniquement en charge les révisions de format pour les styles et vous ne pouvez pas représenter l'insertion/suppression de styles. Ainsi, les documents peuvent avoir un ensemble de styles différent et la méthode [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) ne produit toujours aucune révision.

L'exemple de code suivant montre comment vérifier si deux documents sont égaux ou non:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

L'exemple de code suivant montre comment appliquer simplement la méthode `Compare` à deux documents:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## Spécifier les propriétés de comparaison avancées {#specify-advanced-comparing-properties}

Il existe de nombreuses propriétés différentes de la classe [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) que vous pouvez appliquer lorsque vous souhaitez comparer des documents.

Par exemple, Aspose.Words permet d'ignorer les modifications apportées lors d'une opération de comparaison pour certains types d'objets au sein du document d'origine. Vous pouvez sélectionner la propriété appropriée pour le type d'objet, tel que [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) et autres, en les définissant sur `True`.

De plus, Aspose.Words fournit la propriété [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) avec laquelle vous pouvez spécifier si vous souhaitez suivre les modifications par caractère ou par mot.

Une autre propriété courante est le choix du document dans lequel afficher les changements de comparaison. Par exemple, la "boîte de dialogue Comparer les documents" dans Microsoft Word a l'option "Afficher les modifications dans" – cela affecte également les résultats de la comparaison. Aspose.Words fournit la propriété [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) qui sert à cet effet.

L'exemple de code suivant montre comment définir les propriétés de comparaison avancées:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
