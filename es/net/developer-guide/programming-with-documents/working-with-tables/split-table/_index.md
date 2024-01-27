---
title: Tabla dividida en C#
second_title: Aspose.Words para .NET
articleTitle: Tabla dividida
linktitle: Tabla dividida
description: "Tabla dividida en C#. Cómo dividir una tabla en dos tablas C# separadas."
type: docs
weight: 100
url: /es/net/split-table/
---

Una tabla, representada en el modelo de objetos de documento Aspose.Words, se compone de filas y celdas independientes, lo que facilita la división de una tabla.

Para manipular una tabla para dividirla en dos tablas, solo necesitamos mover algunas de las filas de la tabla original a la nueva. Para hacer esto, debemos elegir la fila por la cual queremos dividir la tabla.

Podemos crear dos tablas a partir de la tabla original siguiendo estos sencillos pasos:

1. Cree un clon de la tabla sin clonar los hijos para mantener las filas movidas e insertarlas después de la tabla original.
2. Comenzando en la fila especificada, mueva todas las filas siguientes a esta segunda tabla.

El siguiente ejemplo de código muestra cómo dividir una tabla en dos tablas en una fila específica:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
