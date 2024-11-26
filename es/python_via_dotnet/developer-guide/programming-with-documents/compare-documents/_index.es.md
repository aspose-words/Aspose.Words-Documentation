---
title: Comparar documentos en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Comparar documentos
linktitle: Comparar documentos
description: "Compara dos documentos en cualquier formato compatible y muestra los cambios de contenido usando Python. Puede aplicar opciones avanzadas al comparar."
type: docs
weight: 60
url: /es/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Comparar documentos es un proceso que identifica cambios entre dos documentos y contiene los cambios como revisiones. Este proceso compara dos documentos cualesquiera, incluidas las versiones de un documento específico, luego los cambios entre ambos documentos se mostrarán como revisiones en el primer documento.

El método de comparación se logra comparando palabras a nivel de carácter o a nivel de palabra. Si una palabra contiene un cambio de al menos un carácter, en el resultado la diferencia se mostrará como un cambio de la palabra completa, no de un carácter. Este proceso de comparación es una tarea habitual en las industrias jurídica y financiera.

En lugar de buscar manualmente diferencias entre documentos o entre diferentes versiones de ellos, puede usar Aspose.Words para comparar documentos y obtener cambios de contenido en formato, encabezado/pie de página, tablas y más.

Este artículo explica cómo comparar documentos y cómo especificar las propiedades de comparación avanzadas.

{{% alert color="primary" %}}

**Pruebe en línea**

Puede comparar dos documentos en línea utilizando la herramienta [Comparación de documentos en línea](https://products.aspose.app/words/comparison).

Tenga en cuenta que en esta herramienta se utiliza el método de comparación, que se describe a continuación, para garantizar la obtención de resultados iguales. Por lo tanto, obtendrá los mismos resultados incluso utilizando la herramienta de comparación en línea o utilizando el método de comparación en Aspose.Words.

{{% /alert %}}

## Limitaciones y formatos de archivos admitidos {#limitations-and-supported-file-formats}

Comparar documentos es una característica muy compleja. Hay diversas partes de la combinación de contenidos que deben analizarse para reconocer todas las diferencias. La razón de esta complejidad se debe al hecho de que Aspose.Words pretende obtener los mismos resultados de comparación que el algoritmo de comparación de Microsoft Word.

La limitación general para dos documentos que se comparan es que no deben tener revisiones antes de llamar al método de comparación, ya que esta limitación existe en Microsoft Word.

{{% alert color="primary" %}}

Tenga en cuenta que puede comparar dos documentos cualesquiera dentro del [Formatos de documentos admitidos](/words/es/python-net/supported-document-formats/). Básicamente, puedes comparar objetos de documentos e incluso puedes crear esos objetos desde cero sin tener ningún formato específico.

{{% /alert %}}

## Comparar dos documentos {#compare-two-documents}

Cuando compara documentos, las diferencias entre el último documento y el primero aparecen como revisiones del primero. Cuando modifica un documento, cada edición tendrá su propia revisión después de ejecutar el método de comparación.

Aspose.Words le permite identificar diferencias entre documentos utilizando el método [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/); esto es similar a la función de comparación de documentos Microsoft de Word. Le permite verificar documentos o versiones de documentos para encontrar diferencias y cambios, incluidas modificaciones de formato, como cambios de fuente, cambios de espaciado, adición de palabras y párrafos.

Como resultado de la comparación, se puede determinar que los documentos son iguales o no iguales. El término documentos "iguales" significa que el método de comparación no puede representar cambios como revisiones. Esto significa que tanto el texto del documento como el formato del texto son iguales. Pero puede haber otras diferencias entre los documentos. Por ejemplo, Microsoft Word solo admite revisiones de formato para estilos y no puede representar la inserción/eliminación de estilos. Por lo tanto, los documentos pueden tener un conjunto diferente de estilos y el método [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) aún no produce revisiones.

El siguiente ejemplo de código muestra cómo comprobar si dos documentos son iguales o no:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

El siguiente ejemplo de código muestra cómo aplicar simplemente el método `Compare` a dos documentos:

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

## Especificar propiedades de comparación avanzadas {#specify-advanced-comparing-properties}

Hay muchas propiedades diferentes de la clase [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) que puede aplicar cuando desee comparar documentos.

Por ejemplo, Aspose.Words le permite ignorar los cambios realizados durante una operación de comparación para ciertos tipos de objetos dentro del documento original. Puede seleccionar la propiedad adecuada para el tipo de objeto, como [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) y otras, configurándolas en `True`.

Además, Aspose.Words proporciona la propiedad [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) con la que puede especificar si desea realizar un seguimiento de los cambios por carácter o por palabra.

Otra propiedad común es la posibilidad de elegir en qué documento mostrar los cambios de comparación. Por ejemplo, el "cuadro de diálogo Comparar documentos" en Microsoft Word tiene la opción "Mostrar cambios en"; esto también afecta los resultados de la comparación. Aspose.Words proporciona la propiedad [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) que sirve para este propósito.

El siguiente ejemplo de código muestra cómo configurar las propiedades de comparación avanzadas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
