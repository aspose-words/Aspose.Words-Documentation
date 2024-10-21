---
title: Tabla dividida en C++
second_title: Aspose.Words para C++
articleTitle: Mesa Dividida
linktitle: Mesa Dividida
description: "Tabla dividida en C++. Cómo dividir una tabla en dos tablas separadas C++."
type: docs
weight: 100
url: /es/cpp/split-table/
---

Una tabla, representada en el Modelo de Objetos de documento Aspose.Words, está formada por filas y celdas independientes, lo que facilita la división de una tabla.

Para manipular una tabla y dividirla en dos tablas, solo necesitamos mover algunas de las filas de la tabla original a la nueva. Para hacer esto, necesitamos elegir la fila por la que queremos dividir la tabla.

Podemos crear dos tablas a partir de la tabla original siguiendo estos sencillos pasos:

1. Cree un clon de la tabla sin clonar los elementos secundarios para mantener las filas movidas e insértelas después de la tabla original
2. Comenzando en la fila especificada, mueva todas las filas subsiguientes a esta segunda tabla

El siguiente ejemplo de código muestra cómo dividir una tabla en dos tablas en una fila específica:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
