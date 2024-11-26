---
title: Resumen de la Tabla
second_title: Aspose.Words por Java
articleTitle: Resumen de la Tabla
linktitle: Resumen de la Tabla
description: "Trabaje con tablas y sus componentes, como celdas, filas, columnas en Aspose.Words por Java. Cómo trabajar con tablas en Java."
type: docs
weight: 10
url: /es/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words es una biblioteca de clases diseñada para el procesamiento del lado del servidor de documentos en varios formatos (PDF, HTML, diferentes formatos Microsoft Word y otros) y admite tablas de las siguientes maneras:

* las tablas de un documento se conservan durante la apertura / guardado y las conversiones
* es posible editar la tabla, el contenido y su formato, y luego exportar los cambios a un archivo en un formato que admita tablas

En este artículo, aprenderemos más sobre la estructura de la tabla, las celdas, las filas y las columnas admitidas por Aspose.Words, y los detalles de cómo trabajar con dichas tablas.

## Estructura de la Mesa

Como ya se mencionó, la tabla consta de elementos tales como **Cell**, **Row** y **Column**. Estos son conceptos que son comunes a todas las tablas en general, independientemente del formato del documento.

Este es un ejemplo común de una tabla que se encuentra en un documento Microsoft Word:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Nodos de Tabla

Una tabla de cualquier documento cargado en Aspose.Words se importa como **Table node**. La tabla se puede encontrar como hijo de:

- texto principal
- una historia en línea, como un comentario o una nota al pie
- celdas cuando una tabla está anidada dentro de otra tabla

{{% alert color="primary" %}}

Tenga en cuenta que las tablas se pueden anidar dentro de otras tablas a cualquier profundidad.

{{% /alert %}}

### Contenido de la Tabla

El nodo de la tabla no contiene ningún contenido real; en cambio, es un contenedor para otros nodos similares que componen el contenido:

- **Table** contiene muchos **Row** nodos. La tabla proporciona todos los elementos de nodo habituales, lo que le permite mover, modificar y eliminar libremente la tabla en el documento.
- **Row** representa una sola fila de la tabla y contiene muchos **Cell** nodos. Además, **Row** proporciona elementos que definen cómo se muestra la fila, como la altura y la alineación.
- **Cell** es lo que contiene el contenido verdadero visible en la tabla y está formado por un **Paragraph** y otros nodos a nivel de bloque. Además, las celdas pueden contener tablas anidadas.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Puede verificar la estructura de los nodos de la tabla en un documento usando **DocumentExplorer**.

{{% /alert %}}

### Párrafo vacío después de la Tabla

La imagen de arriba muestra que el documento contiene una tabla de varias filas, que a su vez consta de dos celdas. Cada una de las dos celdas incluye un párrafo, que es el contenedor del texto formateado de la celda.

También vale la pena señalar que separar dos tablas consecutivas en un documento requiere al menos un párrafo vacío después de la tabla. Sin dicho párrafo, las tablas consecutivas se unirían en una sola. Este comportamiento es idéntico tanto en Microsoft Word como en Aspose.Words.

Aspose.Words tiene una serie de clases relacionadas con tablas– [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), y otros.

## Véase También

* [Aspose.Words Modelo de objetos de documento (DOM)](/words/java/aspose-words-document-object-model/)
* [Niveles Lógicos de Nodos en un Documento](/words/java/logical-levels-of-nodes-in-a-document/)
