---
title: Personalizar las propiedades de campo
second_title: Aspose.Words para Java
articleTitle: Personalizar las propiedades de campo
linktitle: Personalizar las propiedades de campo
description: "Aprender a personalizar las propiedades de campo en Java. Renombre fusionar campos o obtener resultados para campos sin nodo separador en Java."
type: docs
weight: 27
url: /es/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words proporciona la capacidad de interactuar programáticamente con varias propiedades de campo. En este artículo, vamos a ver un par de ejemplos para que usted entienda el principio básico de trabajar con propiedades de campo. Puedes ver la lista completa de propiedades para cada tipo de campo en la clase correspondiente.

## Actualización de la propiedad sobre el terreno

A veces los usuarios necesitan cambiar el valor de una propiedad de campo. Por ejemplo, actualice la [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) propiedad de la `AUTHOR` o cambiar el campo [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) propiedad de la `MERGEFIELD` campo.

El siguiente ejemplo de código muestra cómo renombrar campos fusionados en un documento de Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Resultado de la pantalla de campo

Aspose.Words proporciona una propiedad para obtener el resultado del campo para campos que no tienen un nodo separador de campo. Llamamos a este "producto falso" o resultado de visualización; MS Word lo muestra en el documento calculando el valor del campo en la mosca, pero no hay tal valor en el modelo de documento.

El siguiente ejemplo de código muestra el uso de [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
