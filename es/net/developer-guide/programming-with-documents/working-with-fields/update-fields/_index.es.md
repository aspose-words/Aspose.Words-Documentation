---
title: Actualizar campos C#
second_title: Aspose.Words para .NET
articleTitle: Actualizar campos
linktitle: Actualizar campos
description: "Aprenda cómo actualizar campos en C#. Actualice los campos mediante programación o utilice la actualización automática de campos mediante .NET API."
type: docs
weight: 30
url: /es/net/update-fields/
---

Normalmente, un campo insertado en Microsoft Word ya contiene un valor actualizado. Por ejemplo, si el campo es una fórmula o un número de página, contendrá el valor calculado correcto para la versión dada del documento. Pero si tiene una aplicación que genera o modifica un documento con campos, como fusionar dos documentos o completarlo con datos, lo ideal es que todos los campos se actualicen para que el documento sea útil.

## Cómo actualizar campos

Cuando se carga un documento, Aspose.Words imita el comportamiento de Microsoft Word con la opción de actualizar campos automáticamente desactivada. El comportamiento se puede resumir de la siguiente manera:

- cuando abres/guardas un documento, los campos permanecen intactos
- puede actualizar explícitamente todos los campos de un documento, por ejemplo, reconstruir `TOC`, cuando lo necesite
- cuando imprime/renderiza en PDF o XPS, los campos relacionados con la numeración de páginas en encabezados/pies de página se actualizan
- cuando ejecuta mail merge todos los campos se actualizan automáticamente

### Actualizar campos mediante programación

Para actualizar explícitamente los campos en todo el documento, simplemente llame al método [UpdateFields](https://reference.aspose.com/words/es/net/aspose.words/document/updatefields/). Para actualizar campos contenidos en parte de un documento, obtenga un objeto [Range](https://reference.aspose.com/words/es/net/aspose.words/range/) y llame al método [UpdateFields](https://reference.aspose.com/words/es/net/aspose.words/range/updatefields/). En Aspose.Words, puede obtener un **Range** para cualquier nodo en el árbol del documento, como [Section](https://reference.aspose.com/words/es/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/es/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/), etc. utilizando la propiedad [Node.Range](https://reference.aspose.com/words/es/net/aspose.words/node/range/). Puede actualizar el resultado de un solo campo llamando al método [Update](https://reference.aspose.com/words/es/net/aspose.words.fields/field/update/).

### Actualización automática de campos relacionados con la página durante el renderizado

Cuando ejecuta la conversión de un documento a un formato de página fija, por ejemplo, a PDF o XPS, Aspose.Words actualizará automáticamente los campos `PAGE` relacionados con el diseño de página y `PAGEREF` se encuentra en los encabezados y pies de página del documento. Este comportamiento imita el comportamiento de Microsoft Word al imprimir un documento.

Si desea actualizar todos los demás campos del documento, debe llamar a [UpdateFields](https://reference.aspose.com/words/es/net/aspose.words/document/updatefields/) antes de procesar el documento.

El siguiente ejemplo de código muestra cómo actualizar todos los campos antes de representar un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Actualización automática de campo durante Mail Merge

Cuando ejecuta un mail merge, todos los campos del documento se actualizarán automáticamente. Esto se debe a que el mail merge es un caso de actualización de campo. El programa encuentra un campo mail merge y necesita actualizar su resultado, lo que implica tomar el valor de la fuente de datos e insertarlo en el campo. Por supuesto, la lógica es más complicada, por ejemplo, cuando se llega al final del documento/región mail merge pero todavía hay más datos por fusionar, entonces es necesario duplicar la región y actualizar el nuevo conjunto de campos.

## Actualizar campos que tienen atributos sucios

w:dirty es un atributo a nivel de campo que actualizará solo el campo que especifique cuando se abra el documento. Le indica a MS Word que solo actualice este campo la próxima vez que se abra el documento. Puede utilizar la propiedad [UpdateDirtyFields](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/updatedirtyfields/) para especificar si se actualizan los campos con el atributo sucio. Cuando el valor de **UpdateDirtyFields** se establece en *true*, todos los campos que tienen un valor *true* para la propiedad [Field.IsDirty](https://reference.aspose.com/words/es/net/aspose.words.fields/field/isdirty/) o [FieldChar.IsDirty](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldchar/isdirty/) se actualizan al cargar el documento.

El siguiente ejemplo de código muestra cómo actualizar campos que tienen el atributo sucio:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Actualizar la propiedad LastSavedTime antes de guardar

Puede utilizar la propiedad [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/es/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) para actualizar la propiedad [LastSavedTime](https://reference.aspose.com/words/es/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) del documento incorporado correspondiente al guardar el documento.

El siguiente ejemplo de código muestra cómo actualizar esta propiedad:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
