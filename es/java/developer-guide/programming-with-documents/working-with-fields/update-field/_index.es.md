---
title: Actualizar campos en Java
second_title: Aspose.Words para Java
articleTitle: Actualizar campos
linktitle: Actualizar campos
description: "Aprender a actualizar campos en Java. Actualizar campos programáticamente o utilizar actualización automática de campo utilizando Java API"
type: docs
weight: 30
url: /es/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Típicamente, un campo insertado en Microsoft Word ya contiene un valor actualizado. Por ejemplo, si el campo es una fórmula o un número de página, contendrá el valor calculado correcto para la versión dada del documento. Pero si usted tiene una aplicación que genera o modifica un documento con campos como la fusión de dos documentos o la populación con datos, entonces idealmente todos los campos deben ser actualizados para que el documento sea útil.

## Cómo actualizar campos

Cuando se carga un documento, Aspose.Words imita el comportamiento de Microsoft Word con la opción para actualizar automáticamente los campos se apaga. El comportamiento puede resumirse como sigue:

- cuando abra/salva un documento los campos permanecen intactos
- puede actualizar explícitamente todos los campos en un documento, por ejemplo, reconstruir `TOC` cuando necesites
- cuando imprima/render a PDF o XPS los campos relacionados con la numeración de página en cabeceras / pies se actualizan
- cuando se ejecuta Mail Merge todos los campos se actualizan automáticamente

### Update Fields Programmatically

Para actualizar explícitamente los campos en todo el documento, simplemente llame al [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) método. Para actualizar los campos contenidos en parte de un documento, obtener un [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) objeto y llamar al [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) método. In Aspose.Words, usted puede obtener un **Range** para cualquier nodo en el árbol de documentos, como [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) propiedad. Puede actualizar el resultado de un solo campo llamando al [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) método.

### Actualización automática de campos relacionados con la página durante el Rendering

Cuando ejecuta la conversión de un documento a un formato de página fija por ejemplo a PDF o XPS, entonces Aspose.Words actualizará automáticamente los campos relacionados con el diseño de página `PAGE`, `PAGEREF` encontrado en cabeceras / pies del documento. Este comportamiento imita el comportamiento de Microsoft Word cuando imprima un documento.

Si desea actualizar todos los demás campos del documento, entonces necesita llamar [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) antes de presentar el documento.

El siguiente ejemplo muestra cómo actualizar todos los campos antes de presentar un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Actualización automática de campo Mail Merge

Cuando ejecutas un mail merge," todos los campos del documento serán actualizados automáticamente. Esto es porque el Mail Merge es un caso de actualización de campo. El programa encuentra un Mail Merge campo y necesita actualizar su resultado, lo que implica agarrar el valor de la fuente de datos e insertarlo en el campo. La lógica es, por supuesto, más complicada, por ejemplo, cuando finaliza el documento/mail merge se llega a la región, pero todavía hay más datos que se fusionan, entonces la región necesita ser duplicada y el nuevo conjunto de campos actualizado.

## Actualizar campos teniendo Dirty Attribute

El w:dirty es un atributo a nivel de campo que refrescará sólo el campo que especifique cuando se abra el documento. Le dice a MS Word que sólo refresque este campo la próxima vez que se abra el documento. Puede utilizar la propiedad LoadOptions.setUpdateDirtyFields() para especificar si actualizar los campos con el atributo sucio. Cuando el valor de LoadOptions.setUpdateDirtyFields() se establece en *true*" todos los campos teniendo *true* valor para `Field.IsDirty` o `FieldChar.IsDirty` propiedad se actualiza en la carga de documento

El siguiente ejemplo de código muestra cómo actualizar campos que tienen el atributo sucio:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Actualizar propiedad LastSavedTime antes de ahorrar

Puedes usar el [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) propiedad para actualizar la propiedad correspondiente del documento incorporado [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) al guardar el documento.

El siguiente ejemplo de código muestra cómo actualizar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
