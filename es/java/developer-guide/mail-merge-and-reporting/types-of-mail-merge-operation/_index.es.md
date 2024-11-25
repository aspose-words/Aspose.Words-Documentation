---
title: Tipos de Mail Merge Operaciones en Java
second_title: Aspose.Words por Java
articleTitle: Tipos de Mail Merge Operación
linktitle: Tipos de Mail Merge Operación
type: docs
description: "Realice dos tipos diferentes de operaciones Mail Merge: Mail Merge simple y Mail Merge con regiones. Simple Mail Merge repite todo el documento por cada registro de origen de datos, mientras que Mail Merge con regiones repite solo las regiones designadas por registro usando Java."
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /es/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

La idea principal de Mail Merge es crear automáticamente un documento o varios documentos en función de su plantilla y los datos obtenidos de su fuente de datos. Aspose.Words le permite realizar dos tipos diferentes de operaciones Mail Merge: Mail Merge simple y Mail Merge con regiones.

El ejemplo más común de uso de simple Mail Merge es cuando desea enviar un documento para diferentes clientes incluyendo sus nombres al principio del documento. Para hacer esto, debe crear campos de combinación como *First Name* y *Last Name* en su plantilla y luego completarlos con datos de su fuente de datos. Mientras que el ejemplo más común de usar Mail Merge con regions es cuando desea enviar un documento que incluya pedidos específicos con la lista de todos los artículos dentro de cada pedido. Para hacer esto, deberá crear regiones de combinación dentro de su propia región de plantilla para cada pedido, a fin de completarlo con todos los datos requeridos para los artículos.

La principal diferencia entre ambas operaciones de combinación es que Mail Merge simple (sin regiones) repite todo el documento por cada registro de origen de datos, mientras que Mail Merge con regiones repite solo las regiones designadas por registro. Puede pensar en una operación simple Mail Merge como un caso particular de fusión con regiones donde la única región es todo el documento.

{{% alert color="primary" %}}

La clase [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) representa una funcionalidad Mail Merge. Con sus propiedades, puede personalizar el comportamiento requerido antes de ejecutar una operación Mail Merge.

{{% /alert %}}

## Operación simple Mail Merge {#simple-mail-merge-operation}

Se usa un Mail Merge simple para completar los campos Mail Merge dentro de su plantilla con los datos requeridos de su fuente de datos (representación de una sola tabla). Por lo tanto, es similar al clásico Mail Merge en Microsoft Word.

Puede agregar uno o más campos de combinación en su plantilla y luego ejecutar la operación simple Mail Merge. Se recomienda usarlo si su plantilla no contiene regiones de fusión.

La principal limitación de usar este tipo es que todo el contenido del documento se repetirá para cada registro en la fuente de datos.

### Cómo Ejecutar una Operación Simple Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Una vez que su plantilla esté lista, puede comenzar a realizar la operación simple Mail Merge. Aspose.Words le permite ejecutar una operación Mail Merge simple utilizando diferentes [Métodos de ejecución](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource) que aceptan varios objetos de datos como origen de datos.

El siguiente ejemplo de código muestra cómo ejecutar una operación Mail Merge simple utilizando uno de los métodos [Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

Puede notar la diferencia entre el documento antes de ejecutar simple mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

Y después de ejecutar simple mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### Cómo Crear Varios Documentos Combinados

En Aspose.Words, la operación estándar Mail Merge llena solo un documento con contenido de su fuente de datos. Por lo tanto, deberá ejecutar la operación Mail Merge varias veces para crear varios documentos combinados como salida.

El siguiente ejemplo de código muestra cómo generar varios documentos combinados durante una operación Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge con regiones

Puede crear diferentes regiones en su plantilla para tener áreas especiales que simplemente puede completar con sus datos. Use el Mail Merge con regiones si desea insertar tablas, filas con datos repetidos para hacer que sus documentos crezcan dinámicamente especificando esas regiones dentro de su plantilla.

Puede crear regiones anidadas (secundarias), así como fusionar regiones. La principal ventaja de usar este tipo es aumentar dinámicamente las partes dentro de un documento. Consulte más detalles en el siguiente artículo "Anidado Mail Merge con regiones".

{{% alert color="primary" %}}

La información sobre una región Mail Merge se puede obtener utilizando la clase [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/).

{{% /alert %}}

### Cómo ejecutar Mail Merge con Regiones

Una región Mail Merge es una parte específica dentro de un documento que tiene un punto inicial y un punto final. Ambos puntos se representan como Mail Merge campos que tienen nombres específicos *"TableStart:XXX"* y *"TableEnd:XXX"*. Todo el contenido incluido en una región Mail Merge se repetirá automáticamente para cada registro de la fuente de datos.

Aspose.Words le permite ejecutar Mail Merge con regiones que usan diferentes [Métodos de ejecución](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) que aceptan varios objetos de datos como origen de datos.

Como primer paso, necesitamos crear el `DataSet` para pasarlo más tarde como parámetro de entrada al método `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

El siguiente ejemplo de código muestra cómo ejecutar Mail Merge con regiones usando el método [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

Puede notar la diferencia entre el documento antes de ejecutar Mail Merge con regiones:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

Y después de ejecutar Mail Merge con regiones:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### Limitaciones de Mail Merge con regiones

Hay algunos puntos importantes que debe tener en cuenta al realizar un Mail Merge con regiones:

* El punto inicial *TableStart:Orders* y el punto final *TableEnd:Orders* deben estar en la misma fila o celda. Por ejemplo, si inicia una región de combinación en una celda de una tabla, debe finalizar la región de combinación en la misma fila que la primera celda.
* El nombre del campo de combinación debe coincidir con el nombre de la columna en su DataTable. A menos que haya especificado campos asignados, el Mail Merge con regiones no tendrá éxito para ningún campo de combinación que tenga un nombre diferente al nombre de la columna.

Si se rompe una de estas reglas, obtendrá resultados inesperados o se puede lanzar una excepción.

{{% alert color="primary" %}}

Si no usa Mail Merge regiones, será similar a Microsoft Word mail merge y todo el contenido del documento se repetirá para cada registro en la fuente de datos.

{{% /alert %}}

