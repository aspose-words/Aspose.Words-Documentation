---
title: Funciones avanzadas de Mail Merge en C#
second_title: Aspose.Words por .NET
articleTitle: Funciones avanzadas Mail Merge
linktitle: Funciones avanzadas Mail Merge
type: docs
description: "Aspose.Words para .NET proporciona algunas funciones avanzadas de Mail Merge que le permiten realizar más personalizaciones de Mail Merge con C#. Por ejemplo, obtener información sobre la estructura de la plantilla, establecer reglas, limpiar después de una operación Mail Merge y otros."
keywords: "use advanced Mail Merge features c#"
weight: 50
url: /es/net/advanced-mail-merge-features/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words proporciona algunas propiedades y métodos adicionales de Mail Merge que le permiten realizar una mayor personalización del proceso Mail Merge en Mail Merge simple o Mail Merge con regiones.

Las funciones avanzadas de Mail Merge incluyen, entre otras, obtener información sobre la estructura de la plantilla antes de realizar una operación Mail Merge, establecer reglas para una operación Mail Merge y limpiar durante una operación Mail Merge. Este artículo cubrirá solo algunas propiedades y ejemplos para mostrarle cómo usar las funciones avanzadas.

## Establecer reglas para las Operaciones Mail Merge

Agregar reglas a su plantilla le permite hacer que el proceso de flujo de trabajo sea más efectivo y flexible. Con las reglas Mail Merge, puede configurar contenido que se pueda cambiar rápidamente y evitar la necesidad de generar varios documentos.

Aspose.Words le permite personalizar Mail Merge en función de las reglas que se ejecutan cuando realiza la operación Mail Merge y controla la información de combinación. Por ejemplo, cuando crea un correo electrónico o una carta para enviar a todos sus clientes. Puede configurar una regla para que la carta contenga varios datos en función de los diferentes valores en ciertos campos de su fuente de datos.

Eche un vistazo a algunas reglas Mail Merge que puede implementar.

### Implemente el Siguiente campo para Fusionar Registros de Datos en el Documento Actual

Puede implementar el campo [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) para fusionar el siguiente registro de datos en el documento fusionado resultante actual, en lugar de iniciar un nuevo documento fusionado. Se utiliza para mostrar varios registros en un documento.

### Implemente los campos NextIf y SkipIf para Comparar dos Expresiones

Puede usar el campo [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) o el campo [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) si desea comparar dos expresiones ([right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) y [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/) expresiones) por [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words fusionará el siguiente registro de datos en el documento de combinación actual, y todos los campos de combinación de la plantilla que estén después del campo *NextIf* se reemplazarán por valores del siguiente registro de datos en lugar del registro de datos actual. | Aspose.Words fusionará el siguiente registro de datos en un nuevo documento de combinación. |
| `SkipIf` | Aspose.Words cancelará el documento de combinación actual, pasará al siguiente registro de datos en el origen de datos e iniciará un nuevo documento de combinación. | Aspose.Words continuará con el documento de combinación actual. |

El siguiente ejemplo de código muestra cómo comparar dos expresiones con **NextIf** o **SkipIf**:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## Obtener Información Sobre La Estructura De La Plantilla

Aspose.Words le permite recopilar información diferente en su plantilla a través de muchos métodos. Por ejemplo, es posible que necesite obtener los nombres de algunos campos de combinación o la jerarquía de regiones en su plantilla. Ahora te explicaremos las posibles variantes para obtener alguna información específica de tu plantilla.

### Obtener Nombres de Campos de Combinación

Puede encontrarse con un escenario en el que querrá fusionar datos con campos de combinación creados por otros y, en este caso, no estará seguro de los nombres exactos de los campos de combinación. Por lo tanto, para lograr el propósito Mail Merge, primero deberá leer y mostrar los nombres de todos los campos de combinación. Aspose.Words le permite obtener una colección de nombres de campos de combinación utilizando el método [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

El siguiente ejemplo de código muestra cómo obtener los nombres de todos los campos de combinación en la plantilla:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### Obtener Información Sobre La Fusión De Regiones

Es posible que tenga un escenario en el que desee comprender cómo se estructura su plantilla a través de las regiones de combinación especificadas. Puede utilizar algunos métodos para recopilar toda la información necesaria sobre las regiones de combinación o para obtener la jerarquía de regiones de combinación en su plantilla, como el método [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Puede usar las propiedades y métodos de la clase [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).El siguiente ejemplo de código muestra cómo obtener la jerarquía de regiones combinadas:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

El siguiente ejemplo de código muestra cómo obtener regiones de combinación específicas dentro de su plantilla en función de sus nombres:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### Agregar Campos Asignados

Aspose.Words le permite asignar automáticamente nombres de campos en su fuente de datos y nombres de Mail Merge campos en la plantilla usando la propiedad [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/). Por ejemplo, si tiene un nombre de campo llamado "Apellido" en su plantilla y en su fuente de datos tiene el nombre de campo "Apellido" u otra variación como "Last_Name " o " LastName", entonces el campo en la fuente de datos se asignará automáticamente al campo asignado correspondiente. Si una plantilla de combinación se va a combinar con muchas fuentes de datos, los campos asignados hacen innecesario volver a ingresarlos en la plantilla para que coincidan con los nombres de campo de la base de datos.

El siguiente ejemplo de código muestra cómo agregar un campo asignado mediante el método [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) cuando un campo de combinación en una plantilla y un campo de datos en una fuente de datos tienen nombres diferentes:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}
