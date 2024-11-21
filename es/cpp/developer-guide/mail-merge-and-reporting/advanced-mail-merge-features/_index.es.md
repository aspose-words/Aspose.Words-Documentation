---
title: Características avanzadas de Mail Merge en C++
second_title: Aspose.Words para C++
articleTitle: Funciones avanzadas Mail Merge
linktitle: Funciones avanzadas Mail Merge
type: docs
description: "Aspose.Words para C++ proporciona algunas funciones avanzadas de mail merge que le permiten realizar más personalizaciones de mail merge. Por ejemplo, obtener información sobre la estructura de la plantilla, establecer reglas, limpiar después de una operación mail merge y otros."
keywords: "use advanced mail merge features c++"
weight: 50
url: /es/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words proporciona algunas propiedades y métodos adicionales de mail merge que le permiten realizar una mayor personalización del proceso mail merge en mail merge simple o mail merge con regiones.

Las funciones avanzadas de mail merge incluyen, entre otras, obtener información sobre la estructura de la plantilla antes de realizar una operación mail merge, establecer reglas para una operación mail merge y limpiar durante una operación mail merge. Este artículo cubrirá solo algunas propiedades y ejemplos para mostrarle cómo usar las funciones avanzadas.

## Establecer reglas para las Operaciones Mail Merge

Agregar reglas a su plantilla le permite hacer que el proceso de flujo de trabajo sea más efectivo y flexible. Con las reglas mail merge, puede configurar contenido que se pueda cambiar rápidamente y evitar la necesidad de generar varios documentos.

Aspose.Words le permite personalizar mail merge en función de las reglas que se ejecutan cuando realiza la operación mail merge y controla la información de combinación. Por ejemplo, cuando crea un correo electrónico o una carta para enviar a todos sus clientes. Puede configurar una regla para que la carta contenga varios datos en función de los diferentes valores en ciertos campos de su fuente de datos.

Eche un vistazo a algunas reglas mail merge que puede implementar.

### Implemente el Siguiente campo para Fusionar Registros de Datos en el Documento Actual

Puede implementar el campo [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) para fusionar el siguiente registro de datos en el documento fusionado resultante actual, en lugar de iniciar un nuevo documento fusionado. Se utiliza para mostrar varios registros en un documento.

### Implemente los campos NextIf y SkipIf para Comparar dos Expresiones

Puede usar el campo [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) o el campo [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) si desea comparar dos expresiones (expresiones[right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/)) con [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words fusionará el siguiente registro de datos en el documento de combinación actual, y todos los campos de combinación de la plantilla que estén después del campo *NextIf* se reemplazarán por valores del siguiente registro de datos en lugar del registro de datos actual. | Aspose.Words fusionará el siguiente registro de datos en un nuevo documento de combinación. |
| `SkipIf` | Aspose.Words cancelará el documento de combinación actual, pasará al siguiente registro de datos en el origen de datos e iniciará un nuevo documento de combinación. | Aspose.Words continuará con el documento de combinación actual. |

## Obtener Información Sobre La Estructura De La Plantilla

Aspose.Words le permite recopilar información diferente en su plantilla a través de muchos métodos. Por ejemplo, es posible que necesite obtener los nombres de algunos campos de combinación o la jerarquía de regiones en su plantilla. Ahora te explicaremos las posibles variantes para obtener alguna información específica de tu plantilla.

### Obtener Nombres de Campos de Combinación

Puede encontrarse con un escenario en el que querrá fusionar datos con campos de combinación creados por otros y, en este caso, no estará seguro de los nombres exactos de los campos de combinación. Por lo tanto, para lograr el propósito mail merge, primero deberá leer y mostrar los nombres de todos los campos de combinación. Aspose.Words le permite obtener una colección de nombres de campos de combinación utilizando el método [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

El siguiente ejemplo de código muestra cómo obtener los nombres de todos los campos de combinación en la plantilla:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Obtener Información Sobre La Fusión De Regiones

Es posible que tenga un escenario en el que desee comprender cómo se estructura su plantilla a través de las regiones de combinación especificadas. Puede utilizar algunos métodos para recopilar toda la información necesaria sobre las regiones de combinación o para obtener la jerarquía de regiones de combinación en su plantilla, como el método [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Puede usar las propiedades y métodos de la clase [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).El siguiente ejemplo de código muestra cómo obtener la jerarquía de regiones combinadas:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Agregar Campos Asignados

Aspose.Words le permite asignar automáticamente nombres de campos en su fuente de datos y nombres de mail merge campos en la plantilla usando la propiedad [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Por ejemplo, si tiene un nombre de campo llamado "Apellido" en su plantilla y en su fuente de datos tiene el nombre de campo "Apellido" u otra variación como "Apellido" o " LastName", entonces el campo en la fuente de datos se asignará automáticamente al campo asignado correspondiente. Si una plantilla de combinación se va a combinar con muchas fuentes de datos, los campos asignados hacen innecesario volver a ingresarlos en la plantilla para que coincidan con los nombres de campo de la base de datos.

El siguiente ejemplo de código muestra cómo agregar un campo asignado mediante el método [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) cuando un campo de combinación en una plantilla y un campo de datos en una fuente de datos tienen nombres diferentes:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
