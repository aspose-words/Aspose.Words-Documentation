---
title: Personalizar Propiedades de Campo
second_title: Aspose.Words por Java
articleTitle: Personalizar Propiedades de Campo
linktitle: Personalizar Propiedades de Campo
description: "Aprenda a personalizar las propiedades de campo en Java. Cambie el nombre de los campos de combinación u obtenga resultados para los campos sin nodo separador en Java."
type: docs
weight: 27
url: /es/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words proporciona la capacidad de interactuar mediante programación con varias propiedades de campo. En este artículo, veremos un par de ejemplos para que comprenda el principio básico de trabajar con propiedades de campo. Puede ver la lista completa de propiedades para cada tipo de campo en la clase correspondiente.

## Actualización de la Propiedad del Campo

A veces, los usuarios necesitan cambiar el valor de una propiedad de campo. Por ejemplo, actualice la propiedad [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) del campo `AUTHOR` o cambie la propiedad [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) del campo `MERGEFIELD`.

El siguiente ejemplo de código muestra cómo cambiar el nombre de los campos de combinación en un documento de Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Resultado de la Pantalla de Campo

Aspose.Words proporciona una propiedad para obtener el resultado del campo para los campos que no tienen un nodo separador de campos. Llamamos a esto "resultado falso" o resultado de visualización; MS Word lo muestra en el documento calculando el valor del campo sobre la marcha, pero no existe tal valor en el modelo del documento.

El siguiente ejemplo de código muestra el uso de la propiedad [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
