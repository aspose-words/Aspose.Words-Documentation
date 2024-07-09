---
title: Cerrar un documento en Java
second_title: Aspose.Words para Java
articleTitle: Clausura de un documento
linktitle: Clausura de un documento
type: docs
description: "Cierra un documento para obtener su copia idéntica. Al crear una copia, nodos y propiedades del documento original se clonan utilizando Java."
weight: 70
url: /es/java/clone-a-document/
---

Cerrar un documento es el proceso de crear una copia idéntica de un documento original, que puede mejorar el rendimiento y ahorrarle de posibles fugas de memoria.

Este artículo explicará los principales casos de uso de la clonación de un documento y cómo crear un clon de documento utilizando Aspose.Words.

## Operaciones con documentos de cierre

La operación clone le permite hacer el proceso de creación de documentos más rápido ya que no necesitará cargar y analizar un documento de un archivo cada vez.

Después de crear un clon de su documento, usted será capaz de editarlo y realizar diferentes operaciones en él, por ejemplo, compararlo con el documento original, apéndice o insertarlo en otro documento. También puede modificar elementos clonados o su contenido antes de insertarlos en otro documento.

## Creación de un clon de documentos

Aspose.Words permite clonar un documento usando el [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) método que realiza una copia profunda del documento y lo devuelve. En otras palabras, obtendrá una copia completa de la DOM. El `Clone` método acelera la generación de documentos, y sólo necesita una línea de código para obtener una copia de su documento.

Cloning produce un nuevo documento con el mismo contenido que el original, pero con una copia única de cada uno de los documentos originales [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). También puede aplicar la operación de clones a un nodo de documento utilizando el nodo [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) método, que permite duplicar los nodos de documento composite con y sin sus nodos infantiles.

{{% alert color="primary" %}}

Tenga en cuenta que al aplicar el método de clonación todas las propiedades del documento serán clonadas.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo clonar un documento y crear un duplicado de una sección en ese documento:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
