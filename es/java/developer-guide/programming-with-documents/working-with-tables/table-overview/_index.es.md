---
title: Cuadro sinóptico
second_title: Aspose.Words para Java
articleTitle: Cuadro sinóptico
linktitle: Cuadro sinóptico
description: "Trabajar con tablas y sus componentes tales como células, filas, columnas en Aspose.Words para Java. Cómo trabajar con tablas en Java."
type: docs
weight: 10
url: /es/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words es una biblioteca de clases diseñada para el procesamiento lado servidor de documentos en varios formatos – PDF, HTML, diferentes Microsoft Word formatos y otros – y soporta tablas de las siguientes maneras:

* las tablas en un documento se conservan durante la apertura/salida y las conversiones
* es posible editar tabla, contenido y formato, y luego exportar los cambios a un archivo en un formato que soporta tablas

En este artículo, vamos a aprender más sobre la estructura de mesa, células, filas y columnas apoyadas por Aspose.Words, y los detalles de trabajar con esos cuadros.

## Estructura

Como ya se ha mencionado, el cuadro consta de elementos tales como **Cell**, **Row** y **Column**. Estos son conceptos que son comunes a todos los cuadros en general, independientemente del formato de documento.

Este es un ejemplo común de una tabla encontrada en un Microsoft Word documento:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Nodos

Una tabla de cualquier documento cargado Aspose.Words importado como **Nodos**. La tabla se puede encontrar como un niño de:

- texto principal
- una historia inline como un comentario o una nota de pie de página
- células cuando una mesa está anida dentro de otra mesa

{{% alert color="primary" %}}

Tenga en cuenta que las tablas pueden ser anidadas dentro de otras tablas a cualquier profundidad.

{{% /alert %}}

### Índice

El nodo de mesa no contiene ningún contenido real – en cambio, es un contenedor para otros nodos que componen el contenido:

- **Table** contiene muchos **Row** nodos. La tabla proporciona todos los elementos habituales del nodo, lo que le permite moverse libremente, modificar y eliminar la tabla en el documento.
- **Row** representa una sola fila de mesa y contiene muchos **Cell** nodos. Además, el **Row** proporciona elementos que definen cómo se muestra la fila, como altura y alineación.
- **Cell** es lo que contiene true contenido visible en la tabla y se compone de un **Paragraph** y otros ganglios de nivel bloque. Además, las células pueden contener tablas anidadas.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Puede comprobar la estructura de los nodos de mesa en un documento usando el **DocumentExplorer**.

{{% /alert %}}

### Empty Paragraph after Table

La imagen anterior muestra que el documento contiene una tabla de varias filas, que a su vez consta de dos células. Cada una de las dos células incluye un párrafo, que es el contenedor para el texto formateado de la célula.

También vale la pena señalar que la separación de dos cuadros consecutivos en un documento requiere al menos un párrafo vacío después del cuadro. Sin ese párrafo, se unirían en uno cuadros consecutivos. Este comportamiento es idéntico en ambos Microsoft Word y Aspose.Words.

Aspose.Words tiene una serie de clases relacionadas con tablas – [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), y otros.

## Vea también

* [Aspose.Words Document Object Model (DOM)](/words/es/java/aspose-words-document-object-model/)
* [Niveles lógicos de los ganglios en un documento](/words/es/java/logical-levels-of-nodes-in-a-document/)
