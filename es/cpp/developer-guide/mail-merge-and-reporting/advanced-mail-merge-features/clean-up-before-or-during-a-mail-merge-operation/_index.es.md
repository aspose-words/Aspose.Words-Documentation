---
title: Limpiar Antes o Durante una Operación Mail Merge
second_title: Aspose.Words para C++
articleTitle: Limpiar Antes o Durante una Operación Mail Merge
linktitle: Limpiar Antes o Durante una Operación Mail Merge
type: docs
description: "Aplique diferentes opciones de limpieza y eliminación, como eliminar campos de combinación antes de realizar una operación mail merge o eliminar regiones no utilizadas durante una operación mail merge."
keywords: "cleanup options mail merge c#"
weight: 10
url: /es/cpp/clean-up-before-or-during-mail-merge/
---

Aspose.Words le permite aplicar diferentes opciones de limpieza y eliminación, como eliminar campos de combinación antes de realizar una operación mail merge o eliminar regiones no utilizadas durante una operación mail merge. En esta sección se explicará cómo eliminar campos combinados y cómo configurar una opción de eliminación.

## Eliminar Campos Combinados

Cuando está utilizando una plantilla larga creada por otra persona, es posible que desee eliminar todos los campos de combinación que ya existen en esa plantilla antes de realizar una operación mail merge. Puede utilizar el método [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) si desea eliminar todos los campos de combinación de un documento sin ejecutar una operación mail merge. Este método no se ve afectado por ninguna opción de eliminación de la propiedad [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) y su ejecución solo elimina los campos combinados, no los que contienen campos o párrafos vacíos.

El siguiente ejemplo de código muestra cómo eliminar todos los campos de combinación de su plantilla sin ejecutar una operación mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Configurar una opción `Removing`

Aspose.Words le permite eliminar campos, regiones y párrafos no fusionados de una plantilla durante una operación mail merge mediante las opciones de eliminación.

Use la propiedad **CleanupOptions** junto con la enumeración [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) para establecer la opción de eliminación. Especifique qué elementos desea eliminar eligiendo las siguientes opciones (puede combinar más de una):

* Eliminar párrafos vacíos
* Eliminar regiones no utilizadas
* Eliminar campos no utilizados
* Eliminar campos que los contengan
* Eliminar campos estáticos
* Eliminar filas de tabla vacías

Puede considerar un campo de combinación como no combinado en una de las siguientes condiciones:

1. Si el campo de combinación en el origen de datos no tiene una columna o un campo de asignación.
2. Si el campo de combinación del origen de datos contiene un campo de asignación, pero los datos son nulos.

{{% alert color="primary" %}}

Si está fusionando datos utilizando fuentes de datos separadas, esas opciones de eliminación se habilitarán solo con la última llamada del método de ejecución mail merge.

{{% /alert %}}

### Eliminar Párrafos Vacíos

Un párrafo que solo incluya campos de combinación estará vacío cuando el proceso mail merge elimine todos sus campos de combinación como no combinados. Esos párrafos vacíos pueden agregar espacio no deseado y cambiar el aspecto del informe generado. Puede enfrentar dos situaciones con párrafos durante una operación mail merge:

1. El campo mail merge se combinará con datos vacíos.
2. El campo de combinación no se usa y se eliminará.

En ambas situaciones, la opción **RemoveEmptyParagraphs** eliminará automáticamente los párrafos vacíos del documento. Además, eliminará los campos de combinación `TableStart` y TableEnd si el resto del párrafo está vacío.

El siguiente ejemplo de código muestra cómo eliminar los párrafos vacíos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Eliminar Campos No Utilizados

Aspose.Words le permite eliminar cualquier campo mail merge sin usar asignando el indicador **RemoveUnusedFields** a **CleanupOptions**. Esta opción eliminará los campos de combinación que no tengan los datos correspondientes en la fuente de datos.

El siguiente ejemplo de código muestra cómo eliminar automáticamente los campos de combinación no utilizados de un documento durante una operación mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Eliminación de Campos que Contienen

Un campo de combinación puede estar contenido dentro de otro campo, como un campo **IF** o un campo de fórmula. Elimine este campo externo cuando el campo de combinación se combine o elimine del documento.

El siguiente ejemplo de código muestra cómo eliminar campos que contienen campos de combinación de un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Nota**

### Eliminar Filas de Tabla Vacías

Aspose.Words le permite eliminar filas vacías de la tabla asignando el indicador **RemoveEmptyTableRows** a **CleanupOptions**. Esta opción eliminará las filas de la tabla que contengan campos de combinación vacíos.

El siguiente ejemplo de código muestra cómo eliminar filas de tabla vacías que contienen mail merge regiones de un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
