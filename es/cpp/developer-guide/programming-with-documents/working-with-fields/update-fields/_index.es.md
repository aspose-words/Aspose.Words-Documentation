---
title: Actualizar campos en C++
second_title: Aspose.Words para C++
articleTitle: Campos de Actualización
linktitle: Campos de Actualización
description: "Aprenda a actualizar campos en C++. Actualice los campos mediante programación o utilice la actualización automática de campos mediante la API de C++."
type: docs
weight: 30
url: /es/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Normalmente, un campo insertado en Microsoft Word ya contiene un valor actualizado. Por ejemplo, si el campo es una fórmula o un número de página, contendrá el valor calculado correcto para la versión dada del documento. Pero si tiene una aplicación que genera o modifica un documento con campos, como fusionar dos documentos o rellenarlo con datos, lo ideal es que todos los campos se actualicen para que el documento sea útil.

## Cómo Actualizar Campos

Cuando se carga un documento, Aspose.Words imita el comportamiento de Microsoft Word con la opción de actualizar campos automáticamente desactivada. El comportamiento se puede resumir de la siguiente manera:

- cuando abre / guarda un documento, los campos permanecen intactos
- puede actualizar explícitamente todos los campos de un documento, por ejemplo, reconstruir `TOC`, cuando lo necesite
- cuando se procesa en PDF o XPS, se actualizan los campos relacionados con la numeración de páginas en encabezados/pies de página
- cuando ejecuta mail merge, todos los campos se actualizan automáticamente

### Actualizar Campos Mediante Programación

Para actualizar explícitamente los campos en todo el documento, simplemente llame al método [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Para actualizar los campos contenidos en parte de un documento, obtenga un objeto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) y llame al método [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). En Aspose.Words, puede obtener un **Range** para cualquier nodo del árbol de documentos, como por ejemplo[Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), etc. usando la propiedad [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Puede actualizar el resultado de un solo campo llamando al método [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Actualización Automática de los Campos Relacionados con la Página Durante el Procesamiento

Cuando ejecuta la conversión de un documento a un formato de página fija, por ejemplo, a PDF o XPS, Aspose.Words actualizará automáticamente los campos relacionados con el diseño de página `PAGE`, `PAGEREF` que se encuentran en los encabezados/pies de página del documento. Este comportamiento imita el comportamiento de Microsoft Word al imprimir un documento.

Si desea actualizar todos los demás campos del documento, debe llamar a [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) antes de procesar el documento.

El siguiente ejemplo de código muestra cómo actualizar todos los campos antes de procesar un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Actualización Automática De Campos Durante Mail Merge

Cuando ejecute un mail merge, todos los campos del documento se actualizarán automáticamente. Esto se debe a que mail merge es un caso de actualización de campo. El programa encuentra un campo mail merge y necesita actualizar su resultado, lo que implica tomar el valor de la fuente de datos e insertarlo en el campo. La lógica es, por supuesto, más complicada, por ejemplo, cuando se llega al final de la región del documento/mail merge pero aún quedan más datos por fusionar, entonces es necesario duplicar la región y actualizar el nuevo conjunto de campos.

## Actualice la Propiedad LastSavedTime Antes de Guardar

Puede usar la propiedad [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) para actualizar la propiedad integrada correspondiente del documento [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) al guardar el documento.

El siguiente ejemplo de código muestra cómo actualizar esta propiedad:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


