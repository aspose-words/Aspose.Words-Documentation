---
title: Limpiar Antes o Durante una Operación Mail Merge
second_title: Aspose.Words por Java
articleTitle: Limpiar Antes o Durante una Operación Mail Merge
linktitle: Limpiar Antes o Durante una Operación Mail Merge
type: docs
description: "Aplique diferentes opciones de limpieza y eliminación, como eliminar campos de combinación antes de realizar una operación Mail Merge o eliminar regiones no utilizadas durante una operación Mail Merge con Java."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /es/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words le permite aplicar diferentes opciones de limpieza y eliminación, como eliminar campos de combinación antes de realizar una operación Mail Merge o eliminar regiones no utilizadas durante una operación Mail Merge. En esta sección se explicará cómo eliminar campos combinados y cómo configurar una opción de eliminación.

## Eliminar Campos Combinados

Cuando está utilizando una plantilla larga creada por otra persona, es posible que desee eliminar todos los campos de combinación que ya existen en esa plantilla antes de realizar una operación Mail Merge. Puede utilizar el método [DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields) si desea eliminar todos los campos de combinación de un documento sin ejecutar una operación Mail Merge. Este método no se ve afectado por ninguna opción de eliminación de la propiedad [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions) y su ejecución solo elimina los campos combinados, no los que contienen campos o párrafos vacíos.

El siguiente ejemplo de código muestra cómo eliminar todos los campos de combinación de su plantilla sin ejecutar una operación Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## Configurar una opción `Removing`

Aspose.Words le permite eliminar campos, regiones y párrafos no fusionados de una plantilla durante una operación Mail Merge mediante las opciones de eliminación.

Use la propiedad **CleanupOptions** junto con la enumeración [MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) para establecer la opción de eliminación. Especifique qué elementos desea eliminar eligiendo las siguientes opciones (puede combinar más de una):

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

Si está fusionando datos utilizando fuentes de datos separadas, esas opciones de eliminación se habilitarán solo con la última llamada del método de ejecución Mail Merge.

{{% /alert %}}

### Eliminar Párrafos Vacíos

Un párrafo que solo incluya campos de combinación estará vacío cuando el proceso Mail Merge elimine todos sus campos de combinación como no combinados. Esos párrafos vacíos pueden agregar espacio no deseado y cambiar el aspecto del informe generado. Puede enfrentar dos situaciones con párrafos durante una operación Mail Merge:

1. El campo Mail Merge se combinará con datos vacíos.
2. El campo de combinación no se usa y se eliminará.

En ambas situaciones, la opción **RemoveEmptyParagraphs** eliminará automáticamente los párrafos vacíos del documento. Además, eliminará los campos de combinación `TableStart` y TableEnd si el resto del párrafo está vacío.

El siguiente ejemplo de código muestra cómo eliminar los párrafos vacíos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Eliminar Regiones No Utilizadas

En versiones anteriores de Aspose.Words, los pasajes vacíos de Mail Merge se eliminaban del documento automáticamente durante la operación Mail Merge. Con la última versión de Aspose.palabras, las regiones Mail Merge vacías permanecen después de la operación Mail Merge de forma predeterminada. Sin embargo, puede usar la opción **RemoveUnusedRegions** para eliminar las regiones Mail Merge no utilizadas durante la operación Mail Merge. Por ejemplo, puede combinar un documento con una fuente de datos vacía que no contenga tablas de datos que lleven a regiones no utilizadas en el documento.

El siguiente ejemplo de código muestra cómo eliminar las regiones de combinación no utilizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Nota**

### Eliminar Campos No Utilizados

Aspose.Words le permite eliminar cualquier campo Mail Merge sin usar asignando el indicador **RemoveUnusedFields** a **CleanupOptions**. Esta opción eliminará los campos de combinación que no tengan los datos correspondientes en la fuente de datos.

El siguiente ejemplo de código muestra cómo eliminar automáticamente los campos de combinación no utilizados de un documento durante una operación Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### Eliminación de Campos que Contienen

Un campo de combinación puede estar contenido dentro de otro campo, como un campo **IF** o un campo de fórmula. Elimine este campo externo cuando el campo de combinación se combine o elimine del documento.

El siguiente ejemplo de código muestra cómo eliminar campos que contienen campos de combinación de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**Nota**

### Eliminar Filas de Tabla Vacías

Aspose.Words le permite eliminar filas vacías de la tabla asignando el indicador **RemoveEmptyTableRows** a **CleanupOptions**. Esta opción eliminará las filas de la tabla que contengan campos de combinación vacíos.

El siguiente ejemplo de código muestra cómo eliminar filas de tabla vacías que contienen Mail Merge regiones de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}
