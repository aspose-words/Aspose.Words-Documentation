---
title: Clonar un documento en C++
second_title: Aspose.Words para C++
articleTitle: Clonar un Documento
linktitle: Clonar un Documento
type: docs
description: "Clone un documento para obtener su copia idéntica usando C++. Al crear una copia, se clonan los nodos y las propiedades del documento original."
weight: 70
url: /es/cpp/clone-a-document/
---

La clonación de un documento es el proceso de crear una copia idéntica de un documento original, lo que puede mejorar el rendimiento y salvarlo de posibles pérdidas de memoria.

Este artículo explicará los principales casos de uso de la clonación de un documento y cómo crear un clon de documento usando Aspose.Words.

## Operaciones con Clonación de Documentos

La operación de clonación le permite acelerar el proceso de creación de documentos, ya que no necesitará cargar y analizar un documento desde un archivo cada vez.

Después de crear un clon de su documento, podrá editarlo y realizar diferentes operaciones en él, por ejemplo, compararlo con el documento original, agregarlo o insertarlo en otro documento. También puede modificar los elementos clonados o su contenido antes de insertarlos en otro documento.

## Creación de un Clon de Documento

Aspose.Words le permite clonar un documento utilizando el método [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) que realiza una copia profunda del documento y lo devuelve. En otras palabras, obtendrá una copia completa del DOM. El método `Clone` acelera la generación de documentos y solo necesita una línea de código para obtener una copia de su documento.

La clonación produce un nuevo documento con el mismo contenido que el original, pero con una copia única de cada [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node) del documento original. También puede aplicar la operación de clonación a un nodo de documento mediante el método node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/), que le permite duplicar nodos de documentos compuestos con y sin sus nodos secundarios.

{{% alert color="primary" %}}

Tenga en cuenta que al aplicar el método de clonación, se clonarán todas las propiedades del documento.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo clonar un documento y crear un duplicado de una sección en ese documento:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
