---
title: Reemplazar campos con texto Java
second_title: Aspose.Words para Java
articleTitle: Reemplazar campos con texto estatico
linktitle: Reemplazar campos con texto estatico
description: "Aprende cómo reemplazar los campos con texto Java. Reemplazar campos con datos estáticos utilizando Java API."
type: docs
weight: 37
url: /es/java/replace-fields/
---

Reemplazar campos se requiere a menudo cuando desea guardar su documento como una copia estática. Por ejemplo, cuando se envía como adjunto en un correo electrónico. Convertir campos como `DATE` o `TIME` a texto estático permitirá que el documento muestre la misma fecha que cuando fue enviado. Además, en algunas situaciones, es posible que necesite eliminar el condicional `IF` campos de su documento y reemplazarlos con el resultado de texto más reciente en su lugar. Por ejemplo, convertir el resultado del `IF` campo a texto estático para que ya no cambie dinámicamente su valor cuando se actualizan los campos del documento.

El diagrama de abajo muestra cómo `IF` campo se almacena en un documento:

* el texto está rodeado por los nodos especiales de campo – [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) y [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) nodo separa el texto dentro del campo en el código de campo y resultado de campo
* el código de campo define el comportamiento general del campo, mientras que el resultado de campo conserva el resultado más reciente cuando este campo se actualiza utilizando Microsoft Word o Aspose.Words
* el resultado de campo es lo que se almacena en el campo y se muestra en el documento cuando se ve

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

La estructura también se puede ver abajo en forma jerárquica utilizando el proyecto demo **“DocumentExplorer”**, que nave con **Aspose.Words** instalador.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Campos que no pueden ser reemplazados por texto

Reemplazar un campo con texto estático no funciona correctamente para algunos campos en un encabezado o un pie de página.

Por ejemplo, tratando de convertir el `PAGE` campo en un encabezado o un pie a texto estático resultará en el mismo valor que se muestra en todas las páginas. Esto se debe a que los encabezados y los pies se repiten a través de múltiples páginas, y cuando permanecen como campos, se manejan especialmente para que muestren el resultado correcto para cada página.

Sin embargo, en el encabezado, el `PAGE` el campo traduce bien a la ejecución estática del texto. Esta ejecución de texto será evaluada como si fuera la última página de la sección, que causará cualquier `PAGE` campo en el encabezado para mostrar la última página en todas las páginas.

El siguiente ejemplo de código muestra cómo reemplazar el campo con su resultado más reciente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Convertir ciertos tipos de campo en piezas específicas de documentos

Desde **ConvertFieldsToStaticText** método acepta dos parámetros – el [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) propiedades y [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumeración, es posible pasar cualquier nodo compuesto a este método. Esto permite que los campos se conviertan a texto estático sólo en partes específicas del documento.

Por ejemplo, puede pasar un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objeto y convertir campos del tipo especificado de todo el documento a texto estático, o puede pasar un [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) objeto de una sección y sólo convertir los campos encontrados en ese cuerpo.

{{% alert color="primary" %}}

Cuando pasa un nodo de nivel bloque como un [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), ser consciente de que en algunos casos, los campos pueden abarcar varios párrafos. Si esto sucede, se recomienda pasar al padre del compuesto en lugar de evitarlo.

{{% /alert %}}

El [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumeration passed to the **ConvertFieldsToStaticText** método especifica qué tipo de campos debe ser convertido a texto estático. Cualquier otro tipo de campo encontrado en el documento permanecerá sin cambios.

El siguiente ejemplo de código muestra cómo seleccionar campos de un tipo específico – *targetFieldType* en un nodo específico – *compositeNode* y luego convertirlos en texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

El siguiente ejemplo de código muestra cómo convertir todo `IF` campos en un documento a texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

El siguiente ejemplo de código muestra cómo convertir todo `PAGE` campos en un Cuerpo de un documento a texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

El siguiente ejemplo de código muestra cómo convertir todo `IF` campos del último párrafo al texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
