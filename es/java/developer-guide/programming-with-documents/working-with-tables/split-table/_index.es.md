---
title: Dividir tabla en Java
second_title: Aspose.Words por Java
articleTitle: Mesa Dividida
linktitle: Mesa Dividida
description: "Dividir tabla en Java. Cómo dividir una tabla en dos tablas separadas Java."
type: docs
weight: 100
url: /es/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Una tabla, representada en el Modelo de Objetos de documento Aspose.Words, está formada por filas y celdas independientes, lo que facilita la división de una tabla.

Para manipular una tabla y dividirla en dos tablas, solo necesitamos mover algunas de las filas de la tabla original a la nueva. Para hacer esto, necesitamos elegir la fila por la que queremos dividir la tabla.

Podemos crear dos tablas a partir de la tabla original siguiendo estos sencillos pasos:

1. Cree un clon de la tabla sin clonar los elementos secundarios para mantener las filas movidas e insértelas después de la tabla original
2. Comenzando en la fila especificada, mueva todas las filas subsiguientes a esta segunda tabla

El siguiente ejemplo de código muestra cómo dividir una tabla en dos tablas en una fila específica:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
