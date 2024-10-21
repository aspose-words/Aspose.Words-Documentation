---
title: Reemplazar campos C++
second_title: Aspose.Words para C++
articleTitle: Reemplazar Campos con Texto Estático
linktitle: Reemplazar Campos con Texto Estático
description: "Aprenda a reemplazar campos con texto en C++. Reemplace los campos con datos estáticos mediante la API de C++."
type: docs
weight: 37
url: /es/cpp/replace-fields/
---

A menudo es necesario reemplazar los campos cuando desea guardar su documento como una copia estática. Por ejemplo, al enviar como archivo adjunto en un correo electrónico. Convertir campos como `DATE` o `TIME` en texto estático permitirá que el documento muestre la misma fecha en que se envió. Además, en algunas situaciones, es posible que deba eliminar los campos condicionales `IF` de su documento y reemplazarlos con el resultado de texto más reciente. Por ejemplo, convertir el resultado del campo `IF` en texto estático para que ya no cambie dinámicamente su valor cuando se actualicen los campos del documento.

El siguiente diagrama muestra cómo se almacena el campo `IF` en un documento:

* el texto está rodeado por los nodos de campo especiales - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) y [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* el nodo [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) separa el texto dentro del campo en el código de campo y el resultado del campo
* el código del campo define el comportamiento general del campo, mientras que el resultado del campo conserva el resultado más reciente cuando este campo se actualiza con Microsoft Word o Aspose.Words
* el resultado del campo es lo que se almacena en el campo y se muestra en el documento cuando se visualiza

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

La estructura también se puede ver a continuación en forma jerárquica utilizando el proyecto de demostración * " DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Campos Que No se pueden Reemplazar con Texto

Reemplazar un campo con texto estático no funciona correctamente para algunos campos en un encabezado o pie de página.

Por ejemplo, al intentar convertir el campo `PAGE` en un encabezado o pie de página en texto estático, se mostrará el mismo valor en todas las páginas. Esto se debe a que los encabezados y pies de página se repiten en varias páginas y, cuando permanecen como campos, se manejan especialmente para que muestren el resultado correcto para cada página.

Sin embargo, en el encabezado, el campo `PAGE` se traduce bien en texto estático. Esta ejecución de texto se evaluará como si fuera la última página de la sección, lo que hará que cualquier campo `PAGE` en el encabezado muestre la última página en todas las páginas.

El siguiente ejemplo de código muestra cómo reemplazar el campo con su resultado más reciente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Convierta Ciertos Tipos de Campos en Partes Específicas del Documento

Dado que el método **ConvertFieldsToStaticText** acepta dos parámetros: las propiedades [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) y la enumeración [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), es posible pasar cualquier nodo compuesto a este método. Esto permite que los campos se conviertan en texto estático solo en partes específicas del documento.

Por ejemplo, puede pasar un objeto [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) y convertir campos del tipo especificado de todo el documento a texto estático, o puede pasar un objeto [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) de una sección y convertir solo los campos que se encuentran en ese cuerpo.

{{% alert color="primary" %}}

Al pasar un nodo a nivel de bloque, como un [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), tenga en cuenta que, en algunos casos, los campos pueden abarcar varios párrafos. Si esto sucede, se recomienda pasar el padre del compuesto en su lugar para evitarlo.

{{% /alert %}}

La enumeración [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) pasada al método **ConvertFieldsToStaticText** especifica qué tipo de campos deben convertirse en texto estático. Cualquier otro tipo de campo que se encuentre en el documento permanecerá sin cambios.

El siguiente ejemplo de código muestra cómo seleccionar campos de un tipo específico - *targetFieldType* en un nodo específico – *compositeNode* y luego convertirlos en texto estático:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

El siguiente ejemplo de código muestra cómo convertir todos los campos `IF` de un documento a texto estático:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

El siguiente ejemplo de código muestra cómo convertir todos los campos `PAGE` en un Cuerpo de un documento a texto estático:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

El siguiente ejemplo de código muestra cómo convertir todos los campos `IF` del último párrafo a texto estático:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}