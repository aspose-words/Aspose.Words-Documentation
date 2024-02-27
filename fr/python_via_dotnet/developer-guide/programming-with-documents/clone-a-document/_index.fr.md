---
title: Cloner un document dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Cloner un document
linktitle: Cloner un document
type: docs
description: "Clonez un document pour obtenir sa copie identique à l'aide de Python. Lors de la création d'une copie, les nœuds et les propriétés du document original sont clonés."
weight: 70
url: /fr/python-net/clone-a-document/
---

Le clonage d'un document est le processus de création d'une copie identique d'un document original, ce qui peut améliorer les performances et vous éviter d'éventuelles fuites de mémoire.

Cet article expliquera les principaux cas d'utilisation du clonage d'un document et comment créer un clone de document à l'aide de Aspose.Words.

## Opérations avec des documents de clonage

L'opération de clonage vous permet d'accélérer le processus de création de documents car vous n'aurez pas besoin de charger et d'analyser un document à partir d'un fichier à chaque fois.

Après avoir créé un clone de votre document, vous pourrez l'éditer et effectuer différentes opérations dessus, par exemple, le comparer avec le document original, l'ajouter ou l'insérer dans un autre document. Vous pouvez également modifier les éléments clonés ou leur contenu avant de les insérer dans un autre document.

## Création d'un clone de document

Aspose.Words vous permet de cloner un document à l'aide de la méthode [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) qui effectue une copie complète du document et le renvoie. En d’autres termes, il obtiendra une copie complète du DOM. La méthode [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) accélère la génération des documents et vous n'avez besoin que d'une seule ligne de code pour obtenir une copie de votre document.

Le clonage produit un nouveau document avec le même contenu que l'original, mais avec une copie unique de chacun des nœuds du document original. Vous pouvez également appliquer l'opération de clonage à un nœud de document à l'aide de la méthode node [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/), qui vous permet de dupliquer des nœuds de document composite avec et sans leurs nœuds enfants.

{{% alert color="primary" %}}

Notez que lors de l'application de la méthode de clonage, toutes les propriétés du document seront clonées.

{{% /alert %}}

L'exemple de code suivant montre comment cloner un document et créer un double d'une section de ce document:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
