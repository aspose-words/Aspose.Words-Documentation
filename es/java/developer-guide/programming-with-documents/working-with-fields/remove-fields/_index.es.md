---
title: Eliminar campos en Java
second_title: Aspose.Words para Java
articleTitle: Quitar campos
linktitle: Quitar campos
description: "Aprender a eliminar campos en Java. Quitar los campos programáticamente utilizando Java API."
type: docs
weight: 35
url: /es/java/remove-fields/
---

A veces es necesario eliminar un campo del documento. Esto puede ocurrir cuando debe ser reemplazado por un tipo de campo diferente o cuando el campo ya no es necesario en el documento. Por ejemplo a `TOC` campo cuando se guarda en HTML.

Para eliminar un campo insertado en un documento [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), use the returned [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) objeto, que proporciona un conveniente [Remove](https://reference.aspose.com/words/java/com.aspose.words/field/#remove) método para eliminar fácilmente el campo del documento.

El siguiente ejemplo de código muestra cómo eliminar un campo del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RemoveField-RemoveField.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}
