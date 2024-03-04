---
title: Personalizar propiedades de campo en C#
second_title: Aspose.Words para .NET
articleTitle: Personalizar propiedades de campo
linktitle: Personalizar propiedades de campo
description: "Aprenda a personalizar las propiedades de los campos en C#. Cambie el nombre de los campos de combinación u obtenga resultados para campos sin nodo separador en .NET."
type: docs
weight: 27
url: /es/net/customize-field-properties/
---

Aspose.Words brinda la capacidad de interactuar mediante programación con varias propiedades de campo. En este artículo, veremos un par de ejemplos para que comprenda el principio básico de trabajar con propiedades de campo. Puede ver la lista completa de propiedades para cada tipo de campo en la clase correspondiente en el [Espacio de nombres de campos](https://reference.aspose.com/words/es/net/aspose.words.fields/).

## Actualización de propiedad de campo

A veces los usuarios necesitan cambiar el valor de una propiedad de campo. Por ejemplo, actualice la propiedad [AuthorName](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldauthor/authorname/) del campo `AUTHOR` o cambie la propiedad [FieldName](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldmergefield/fieldname/) del campo `MERGEFIELD`.

El siguiente ejemplo de código muestra cómo cambiar el nombre de los campos de combinación en un documento de Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Resultado de visualización de campo

Aspose.Words proporciona una propiedad para obtener el resultado del campo para los campos que no tienen un nodo separador de campos. A esto lo llamamos "resultado falso" o resultado de visualización; MS Word lo muestra en el documento calculando el valor del campo sobre la marcha, pero no existe tal valor en el modelo del documento.

El siguiente ejemplo de código muestra el uso de la propiedad [DisplayResult](https://reference.aspose.com/words/es/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
