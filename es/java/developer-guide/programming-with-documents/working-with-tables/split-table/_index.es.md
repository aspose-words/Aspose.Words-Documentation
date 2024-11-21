---
title: Mesa dividida en Java
second_title: Aspose.Words para Java
articleTitle: Mesa dividida
linktitle: Mesa dividida
description: "Mesa dividida en Java. Cómo dividir una tabla en dos tablas separadas Java."
type: docs
weight: 100
url: /es/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Una tabla, representada en el Aspose.Words Document Object Model, está formado por filas y células independientes, lo que hace fácil dividir una mesa.

Para manipular una mesa para dividirla en dos tablas, solo necesitamos mover algunas de las filas de la mesa original a la nueva. Para hacer esto, necesitamos elegir la fila por la que queremos dividir la mesa.

Podemos crear dos tablas de la tabla original siguiendo estos sencillos pasos:

1. Crear un clon de la tabla sin clonar a los niños para mantener las filas movidas e insertarlas después de la tabla original
2. Empezando en la fila especificada, mueva todas las filas posteriores a esta segunda tabla

El siguiente ejemplo de código muestra cómo dividir una tabla en dos tablas en una fila específica:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
