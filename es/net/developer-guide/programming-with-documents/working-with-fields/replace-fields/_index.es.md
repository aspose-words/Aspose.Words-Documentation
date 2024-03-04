---
title: Reemplazar campos C#
second_title: Aspose.Words para .NET
articleTitle: Reemplazar campos con texto estático
linktitle: Reemplazar campos con texto estático
description: "Aprenda a reemplazar campos con texto en C#. Reemplace campos con datos estáticos usando .NET API."
type: docs
weight: 37
url: /es/net/replace-fields/
---

A menudo es necesario reemplazar campos cuando desea guardar su documento como una copia estática. Por ejemplo, al enviar como archivo adjunto en un correo electrónico. La conversión de campos como `DATE` o `TIME` a texto estático permitirá que el documento muestre la misma fecha que cuando se envió. Además, en algunas situaciones, es posible que deba eliminar los campos `IF` condicionales de su documento y reemplazarlos con el resultado de texto más reciente. Por ejemplo, convertir el resultado del campo `IF` en texto estático para que ya no cambie dinámicamente su valor cuando se actualicen los campos del documento.

El siguiente diagrama muestra cómo se almacena el campo `IF` en un documento:

* el texto está rodeado por los nodos de campo especiales – [FieldStart](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldstart/) y [FieldEnd](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldend)
* el nodo [FieldSeparator](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldseparator/) separa el texto dentro del campo en el código de campo y el resultado del campo
* el código de campo define el comportamiento general del campo, mientras que el resultado del campo conserva el resultado más reciente cuando este campo se actualiza usando Microsoft Word o Aspose.Words
* el resultado del campo es lo que se almacena en el campo y se muestra en el documento cuando se ve

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

La estructura también se puede ver a continuación en forma jerárquica usando el [proyecto de demostración DocumentExplorer](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## Campos que no se pueden reemplazar por texto

Reemplazar un campo con texto estático no funciona correctamente para algunos campos en un encabezado o pie de página.

Por ejemplo, intentar convertir el campo `PAGE` en un encabezado o pie de página en texto estático dará como resultado que se muestre el mismo valor en todas las páginas. Esto se debe a que los encabezados y pies de página se repiten en varias páginas y, cuando permanecen como campos, se manejan especialmente para que muestren el resultado correcto para cada página.

Sin embargo, en el encabezado, el campo `PAGE` se traduce bien como una ejecución de texto estático. Esta ejecución de texto se evaluará como si fuera la última página de la sección, lo que hará que cualquier campo `PAGE` en el encabezado muestre la última página sobre todas las páginas.

El siguiente ejemplo de código muestra cómo reemplazar el campo con su resultado más reciente:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## Convertir ciertos tipos de campos en partes específicas del documento

Dado que el método **ConvertFieldsToStaticText** acepta dos parámetros: las propiedades [CompositeNode](https://reference.aspose.com/words/es/net/aspose.words/compositenode/) y la enumeración [FieldType](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldtype/), es posible pasar cualquier nodo compuesto a este método. Esto permite convertir campos a texto estático solo en partes específicas del documento.

Por ejemplo, puede pasar un objeto [Document](https://reference.aspose.com/words/es/net/aspose.words/document/) y convertir campos del tipo especificado de todo el documento a texto estático, o puede pasar un objeto [Body](https://reference.aspose.com/words/es/net/aspose.words/body/) de una sección y convertir solo los campos que se encuentran en ese cuerpo.

{{% alert color="primary" %}}

Al pasar un nodo a nivel de bloque, como un [Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/), tenga en cuenta que, en algunos casos, los campos pueden abarcar varios párrafos. Si esto sucede, se recomienda pasar el padre del compuesto para evitarlo.

{{% /alert %}}

La enumeración [FieldType](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldtype/) pasada al método **ConvertFieldsToStaticText** especifica qué tipo de campos deben convertirse en texto estático. Cualquier otro tipo de campo que se encuentre en el documento permanecerá sin cambios.

El siguiente ejemplo de código muestra cómo seleccionar campos de un tipo específico – *targetFieldType* en un nodo específico – *compositeNode* y luego convertirlos a texto estático:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

El siguiente ejemplo de código muestra cómo convertir todos los campos `IF` de un documento en texto estático:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo convertir todos los campos `PAGE` en el cuerpo de un documento en texto estático:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

El siguiente ejemplo de código muestra cómo convertir todos los campos `IF` del último párrafo en texto estático:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
