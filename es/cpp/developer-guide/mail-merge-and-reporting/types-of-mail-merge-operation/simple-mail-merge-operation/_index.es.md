---
title: Operación simple Mail Merge en C++
second_title: Aspose.Words para C++
articleTitle: Operación simple Mail Merge
linktitle: Operación simple Mail Merge
type: docs
description: "Se usa un mail merge simple para completar los campos mail merge dentro de su plantilla con los datos requeridos de su fuente de datos; es similar al mail merge clásico en Microsoft Word. Agregue uno o más campos de combinación en su plantilla y luego ejecute la operación simple mail merge."
keywords: "how to execute mail merge c++"
weight: 10
url: /es/cpp/simple-mail-merge-operation/
---

Se usa un mail merge simple para completar los campos mail merge dentro de su plantilla con los datos requeridos de su fuente de datos (representación de una sola tabla). Por lo tanto, es similar al clásico mail merge en Microsoft Word.

Puede agregar uno o más campos de combinación en su plantilla y luego ejecutar la operación simple mail merge. Se recomienda usarlo si su plantilla no contiene regiones de fusión.

La principal limitación de usar este tipo es que todo el contenido del documento se repetirá para cada registro en la fuente de datos.

## Cómo Ejecutar una Operación Simple Mail Merge

Una vez que su plantilla esté lista, puede comenzar a realizar la operación simple mail merge. Aspose.Words le permite ejecutar una operación mail merge simple utilizando diferentes métodos [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) que aceptan varios objetos de datos como origen de datos.

El siguiente ejemplo de código muestra cómo ejecutar una operación mail merge simple utilizando uno de los métodos [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Puede notar la diferencia entre el documento antes de ejecutar simple mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

Y después de ejecutar simple mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Cómo Crear Varios Documentos Combinados

En Aspose.Words, la operación estándar mail merge llena solo un documento con contenido de su fuente de datos. Por lo tanto, deberá ejecutar la operación mail merge muchas veces para crear algunos documentos combinados como salida.

El siguiente ejemplo de código muestra cómo generar algunos documentos combinados durante una operación mail merge con [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
