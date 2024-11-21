---
title: Personalizar propiedades de campo en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Personalizar propiedades de campo
linktitle: Personalizar propiedades de campo
description: "Aprenda a personalizar las propiedades de los campos en Python. Cambie el nombre de los campos de combinación u obtenga resultados para campos sin nodo separador en Python via .NET."
type: docs
weight: 27
url: /es/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words brinda la capacidad de interactuar mediante programación con varias propiedades de campo. En este artículo, veremos un par de ejemplos para que comprenda el principio básico de trabajar con propiedades de campo. Puede ver la lista completa de propiedades para cada tipo de campo en la clase correspondiente en el [Módulo de campos](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Actualización de propiedad de campo

A veces los usuarios necesitan cambiar el valor de una propiedad de campo. Por ejemplo, actualice la propiedad [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) del campo `AUTHOR` o cambie la propiedad [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) del campo `MERGEFIELD`.

El siguiente ejemplo de código muestra cómo cambiar el nombre de los campos de combinación en un documento de Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Resultado de visualización de campo

Aspose.Words proporciona una propiedad para obtener el resultado del campo para los campos que no tienen un nodo separador de campos. A esto lo llamamos "resultado falso" o resultado de visualización; MS Word lo muestra en el documento calculando el valor del campo sobre la marcha, pero no existe tal valor en el modelo del documento.

El siguiente ejemplo de código muestra el uso de la propiedad [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
