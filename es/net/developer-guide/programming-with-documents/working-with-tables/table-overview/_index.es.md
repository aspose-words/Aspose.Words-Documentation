---
title: Descripción general de la tabla
second_title: Aspose.Words para .NET
articleTitle: Descripción general de la tabla
linktitle: Descripción general de la tabla
description: "Trabaje con tablas y sus componentes, como celdas, filas y columnas en Aspose.Words para .NET. Cómo trabajar con tablas en C#."
type: docs
weight: 10
url: /es/net/table-overview/
---

Aspose.Words es una biblioteca de clases diseñada para el procesamiento de documentos en varios formatos (PDF, HTML, diferentes formatos de Microsoft Word y otros) en el lado del servidor y admite tablas de las siguientes maneras:

* las tablas de un documento se conservan durante la apertura/guardado y las conversiones
* es posible editar la tabla, el contenido y su formato, y luego exportar los cambios a un archivo en un formato que admita tablas

En este artículo, aprenderemos más sobre la estructura de las tablas, celdas, filas y columnas admitidas por Aspose.Words, y los detalles de cómo trabajar con dichas tablas.

## Estructura de la tabla

Como ya se mencionó, la tabla consta de elementos como **Cell**, **Row** y **Column**. Son conceptos comunes a todas las tablas en general, independientemente del formato del documento.

Este es un ejemplo común de una tabla que se encuentra en un documento Microsoft de Word:

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### Nodos de tabla

Una tabla de cualquier documento cargado en Aspose.Words se importa como **Nodo de tabla**. La tabla se puede encontrar como hija de:

- texto principal
- una historia en línea, como un comentario o una nota al pie
- celdas cuando una tabla está anidada dentro de otra tabla

{{% alert color="primary" %}}

Tenga en cuenta que las tablas se pueden anidar dentro de otras tablas hasta cualquier profundidad.

{{% /alert %}}

### Contenido de la tabla

El nodo de la tabla no contiene ningún contenido real; en cambio, es un contenedor para otros nodos similares que conforman el contenido:

- **Table** contiene muchos nodos **Row**. La tabla proporciona todos los elementos de nodo habituales, lo que le permite mover, modificar y eliminar libremente la tabla en el documento.
- **Row** representa una única fila de la tabla y contiene muchos nodos **Cell**. Además, el **Row** proporciona elementos que definen cómo se muestra la fila, como la altura y la alineación.
- **Cell** es lo que contiene el verdadero contenido visible en la tabla y está formado por un **Paragraph** y otros nodos a nivel de bloque. Además, las celdas pueden contener tablas anidadas.

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Puede comprobar la estructura de los nodos de la tabla en un documento utilizando **DocumentExplorer**.

{{% /alert %}}

### Párrafo vacío después de la tabla

La imagen de arriba muestra que el documento contiene una tabla de varias filas, que a su vez consta de dos celdas. Cada una de las dos celdas incluye un párrafo, que es el contenedor del texto formateado de la celda.

También vale la pena señalar que separar dos tablas consecutivas en un documento requiere al menos un párrafo vacío después de la tabla. Sin ese párrafo, los cuadros consecutivos se unirían en uno solo. Este comportamiento es idéntico tanto en Microsoft Word como en Aspose.Words.

En Aspose.Words, todas las clases y propiedades relacionadas con las tablas están contenidas en el espacio de nombres [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/).

## Ver también

* [Modelo de objetos de documento Aspose.Words (DOM)](/words/es/net/aspose-words-document-object-model/)
* [Niveles lógicos de nodos en un documento](/words/es/net/logical-levels-of-nodes-in-a-document/)