---
title: Actualizar campos en Java
second_title: Aspose.Words por Java
articleTitle: Campos de Actualización
linktitle: Campos de Actualización
description: "Aprenda a actualizar campos en Java. Actualice los campos mediante programación o use la actualización automática de campos usando Java API"
type: docs
weight: 30
url: /es/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Normalmente, un campo insertado en Microsoft Word ya contiene un valor actualizado. Por ejemplo, si el campo es una fórmula o un número de página, contendrá el valor calculado correcto para la versión dada del documento. Pero si tiene una aplicación que genera o modifica un documento con campos, como fusionar dos documentos o rellenarlo con datos, lo ideal es que todos los campos se actualicen para que el documento sea útil.

## Cómo Actualizar Campos

Cuando se carga un documento, Aspose.Words imita el comportamiento de Microsoft Word con la opción de actualizar campos automáticamente desactivada. El comportamiento se puede resumir de la siguiente manera:

- cuando abre / guarda un documento, los campos permanecen intactos
- puede actualizar explícitamente todos los campos de un documento, por ejemplo, reconstruir `TOC` cuando lo necesite
- cuando imprime / procesa en PDF o XPS, se actualizan los campos relacionados con la numeración de páginas en encabezados/pies de página
- cuando ejecuta Mail Merge, todos los campos se actualizan automáticamente

### Actualizar Campos Mediante Programación

Para actualizar explícitamente los campos en todo el documento, simplemente llame al método [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields). Para actualizar los campos contenidos en parte de un documento, obtenga un objeto [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) y llame al método [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields). En Aspose.Words, puede obtener un **Range** para cualquier nodo en el árbol del documento, como por ejemplo[Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. usando la propiedad [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange). Puede actualizar el resultado de un solo campo llamando al método [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update).

### Actualización Automática de los Campos Relacionados con la Página durante el Procesamiento

Cuando ejecuta la conversión de un documento a un formato de página fija, por ejemplo, a PDF o XPS, Aspose.Words actualizará automáticamente los campos relacionados con el diseño de página `PAGE`, `PAGEREF` que se encuentran en los encabezados/pies de página del documento. Este comportamiento imita el comportamiento de Microsoft Word al imprimir un documento.

Si desea actualizar todos los demás campos del documento, debe llamar a [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) antes de procesar el documento.

El siguiente ejemplo muestra cómo actualizar todos los campos antes de procesar un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Actualización automática de campos durante Mail Merge

Cuando ejecute un mail merge, todos los campos del documento se actualizarán automáticamente. Esto se debe a que Mail Merge es un caso de actualización de campo. El programa encuentra un campo Mail Merge y necesita actualizar su resultado, lo que implica tomar el valor de la fuente de datos e insertarlo en el campo. La lógica es, por supuesto, más complicada, por ejemplo, cuando se alcanza el final de la región del documento/mail merge pero aún quedan más datos por fusionar, entonces la región debe duplicarse y actualizarse el nuevo conjunto de campos.

## Actualizar Campos con Atributo Sucio

El atributo w: dirty es un atributo a nivel de campo que actualizará solo el campo que especifique cuando se abra el documento. Le dice a MS Word que actualice este campo solo la próxima vez que se abra el documento. Puedes usar LoadOptions.propiedad setUpdateDirtyFields () para especificar si se deben actualizar los campos con el atributo dirty. Cuando el valor de LoadOptions.setUpdateDirtyFields () se establece en *true*, todos los campos que tienen un valor *true* para la propiedad `Field.IsDirty` o `FieldChar.IsDirty` se actualizan al cargar el documento.

El siguiente ejemplo de código muestra cómo actualizar los campos que tienen el atributo sucio:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Actualice la Propiedad LastSavedTime Antes de Guardar

Puede usar la propiedad [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) para actualizar la propiedad integrada correspondiente del documento [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) al guardar el documento.

El siguiente ejemplo de código muestra cómo actualizar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
