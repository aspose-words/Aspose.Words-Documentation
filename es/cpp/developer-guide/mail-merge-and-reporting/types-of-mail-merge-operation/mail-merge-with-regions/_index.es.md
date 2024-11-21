---
title: Mail Merge con regiones en C++
second_title: Aspose.Words para C++
articleTitle: Mail Merge con regiones
linktitle: Mail Merge con regiones
type: docs
description: "Cree diferentes regiones en su plantilla para tener áreas especiales que simplemente puede completar con sus datos. Use el mail merge con regiones si desea insertar tablas, filas con datos repetidos para hacer que sus documentos crezcan dinámicamente."
keywords: "how to execute mail merge c++"
weight: 20
url: /es/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Puede crear diferentes regiones en su plantilla para tener áreas especiales que simplemente puede completar con sus datos. Use el mail merge con regiones si desea insertar tablas, filas con datos repetidos para hacer que sus documentos crezcan dinámicamente especificando esas regiones dentro de su plantilla.

Puede crear regiones anidadas (secundarias), así como fusionar regiones. La principal ventaja de usar este tipo es aumentar dinámicamente las partes dentro de un documento. Consulte más detalles en el siguiente artículo "Anidado Mail Merge con regiones".

{{% alert color="primary" %}}

La información sobre una región mail merge se puede obtener utilizando la clase [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Cómo ejecutar Mail Merge con Regiones

Una región mail merge es una parte específica dentro de un documento que tiene un punto inicial y un punto final. Ambos puntos se representan como mail merge campos que tienen nombres específicos *"TableStart:XXX"* y *"TableEnd:XXX"*. Todo el contenido incluido en una región mail merge se repetirá automáticamente para cada registro de la fuente de datos.

Aspose.Words le permite ejecutar mail merge con regiones utilizando uno de los [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) métodos que aceptan [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) fuente de datos personalizada.

El siguiente ejemplo de código muestra cómo ejecutar mail merge con regiones de la base de datos sqlite con [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Puede notar la diferencia entre el documento antes de ejecutar mail merge con regiones:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Y después de ejecutar mail merge con regiones:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Limitaciones de Mail Merge con regiones

Hay algunos puntos importantes que debe tener en cuenta al realizar un mail merge con regiones:

* El punto inicial *TableStart:Orders* y el punto final *TableEnd:Orders* deben estar en la misma fila o celda. Por ejemplo, si inicia una región de combinación en una celda de una tabla, debe finalizar la región de combinación en la misma fila que la primera celda.
  El nombre del campo de combinación debe coincidir con el nombre de la columna en su DataTable. A menos que especifique campos asignados, mail merge con regiones no tendrá éxito para ningún campo de combinación que tenga un nombre que no sea el nombre de la columna.
* Aspose.Words para C++ solo admite fuentes de datos basadas en [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) y [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). A diferencia de .NET y Java, C++ no tiene una multiplataforma API generalmente aceptada para trabajar con bases de datos (como ADODB, ODBC o JDBC). Para trabajar con una fuente de datos específica, debe implementar la interfaz [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) o [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Si se rompe una de estas reglas, obtendrá resultados inesperados o se puede lanzar una excepción.

{{% alert color="primary" %}}

Si no usa mail merge regiones, será similar a Microsoft Word mail merge y todo el contenido del documento se repetirá para cada registro en la fuente de datos.

{{% /alert %}}

