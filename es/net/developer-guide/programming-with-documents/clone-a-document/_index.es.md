---
title: Clonar un documento en C#
second_title: Aspose.Words para .NET
articleTitle: Clonar un documento
linktitle: Clonar un documento
type: docs
description: "Clona un documento para obtener su copia idéntica usando C#. Al crear una copia, se clonan nodos y propiedades del documento original."
weight: 70
url: /es/net/clone-a-document/
---

Clonar un documento es el proceso de crear una copia idéntica de un documento original, lo que puede mejorar el rendimiento y evitar posibles pérdidas de memoria.

Este artículo explicará los principales casos de uso de la clonación de un documento y cómo crear una clonación de un documento usando Aspose.Words.

## Operaciones con Clonación de Documentos

La operación de clonación le permite acelerar el proceso de creación de documentos, ya que no necesitará cargar y analizar un documento desde un archivo cada vez.

Después de crear un clon de su documento, podrá editarlo y realizar diferentes operaciones en él, por ejemplo, compararlo con el documento original, agregarlo o insertarlo en otro documento. También puedes modificar los elementos clonados o su contenido antes de insertarlos en otro documento.

## Crear un clon de documento

Aspose.Words le permite clonar un documento utilizando el método [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) que realiza una copia profunda del documento y lo devuelve. En otras palabras, obtendrá una copia completa del DOM. El método `Clone` acelera la generación de documentos y solo necesita una línea de código para obtener una copia de su documento.

La clonación produce un nuevo documento con el mismo contenido que el original, pero con una copia única de cada uno de los [nodes](https://reference.aspose.com/words/net/aspose.words/node/) del documento original. También puede aplicar la operación de clonación a un nodo de documento utilizando el método [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) de nodo, que le permite duplicar nodos de documento compuestos con y sin sus nodos secundarios.

{{% alert color="primary" %}}

Tenga en cuenta que al aplicar el método de clonación se clonarán todas las propiedades del documento.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo clonar un documento y crear un duplicado de una sección de ese documento:

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
