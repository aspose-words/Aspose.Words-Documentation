---
title: Personalizar propiedades de campo en C++
second_title: Aspose.Words para C++
articleTitle: Personalizar Propiedades de Campo
linktitle: Personalizar Propiedades de Campo
description: "Aprenda a personalizar las propiedades de los campos en C++. Cambie el nombre de los campos de combinación u obtenga resultados para campos sin nodo separador en C++."
type: docs
weight: 27
url: /es/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words proporciona la capacidad de interactuar mediante programación con varias propiedades de campo. En este artículo, veremos un par de ejemplos para que comprenda el principio básico de trabajar con propiedades de campo. Puede ver la lista completa de propiedades para cada tipo de campo en la clase correspondiente en [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Actualización de la Propiedad del Campo

A veces, los usuarios necesitan cambiar el valor de una propiedad de campo. Por ejemplo, actualice la propiedad [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) del campo `AUTHOR` o cambie la propiedad [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) del campo `MERGEFIELD`.

El siguiente ejemplo de código muestra cómo cambiar el nombre de los campos de combinación en un documento de Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Resultado de la Pantalla de Campo

Aspose.Words proporciona una propiedad para obtener el resultado del campo para los campos que no tienen un nodo separador de campos. A esto lo llamamos "resultado falso" o resultado de visualización; Microsoft Word lo muestra en el documento calculando el valor del campo sobre la marcha, pero no existe tal valor en el modelo del documento.

El siguiente ejemplo de código muestra el uso de la propiedad [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
