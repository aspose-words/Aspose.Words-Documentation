---
title: Cloner un document dans C#
second_title: Aspose.Words pour .NET
articleTitle: Cloner un document
linktitle: Cloner un document
type: docs
description: "Clonez un document pour obtenir sa copie identique à l'aide de C#. Lors de la création d'une copie, les nœuds et les propriétés du document original sont clonés."
weight: 70
url: /fr/net/clone-a-document/
---

Le clonage d'un document est le processus de création d'une copie identique d'un document original, ce qui peut améliorer les performances et vous éviter d'éventuelles fuites de mémoire.

Cet article expliquera les principaux cas d'utilisation du clonage d'un document et comment créer un clone de document à l'aide de Aspose.Words.

## Opérations avec des documents de clonage

L'opération de clonage vous permet d'accélérer le processus de création de documents car vous n'aurez pas besoin de charger et d'analyser un document à partir d'un fichier à chaque fois.

Après avoir créé un clone de votre document, vous pourrez l'éditer et effectuer différentes opérations dessus, par exemple, le comparer avec le document original, l'ajouter ou l'insérer dans un autre document. Vous pouvez également modifier les éléments clonés ou leur contenu avant de les insérer dans un autre document.

## Création d'un clone de document

Aspose.Words vous permet de cloner un document à l'aide de la méthode [Clone](https://reference.aspose.com/words/fr/net/aspose.words/document/clone/) qui effectue une copie complète du document et le renvoie. En d’autres termes, il obtiendra une copie complète du DOM. La méthode `Clone` accélère la génération des documents et vous n'avez besoin que d'une seule ligne de code pour obtenir une copie de votre document.

Le clonage produit un nouveau document avec le même contenu que l'original, mais avec une copie unique de chacun des [nodes](https://reference.aspose.com/words/fr/net/aspose.words/node/) du document original. Vous pouvez également appliquer l'opération de clonage à un nœud de document à l'aide de la méthode node [Clone](https://reference.aspose.com/words/fr/net/aspose.words/node/clone/), qui vous permet de dupliquer des nœuds de document composite avec et sans leurs nœuds enfants.

{{% alert color="primary" %}}

Notez que lors de l'application de la méthode de clonage, toutes les propriétés du document seront clonées.

{{% /alert %}}

L'exemple de code suivant montre comment cloner un document et créer un double d'une section de ce document:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
