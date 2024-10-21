---
title: Niveles Lógicos de Nodos en un Documento en C++
second_title: Aspose.Words para C++
articleTitle: Niveles Lógicos de Nodos en un Documento
linktitle: Niveles Lógicos de Nodos en un Documento
type: docs
description: "En Aspose.Words para C++ la documentación mencionaba niveles lógicos de nodos: nivel de bloque, nivel en línea o nivel de fila. El nivel de nodo se usa para describir la ubicación en el árbol de documentos donde normalmente se encuentra el nodo."
weight: 10
url: /es/cpp/logical-levels-of-nodes-in-a-document/
---

Esta documentación a veces se refiere a un grupo de clases de nodos como pertenecientes a un "nivel" en un documento, como nodos de "nivel de bloque", "nivel en línea" (también conocido como "en línea") o "nivel de fila". Estos niveles en un documento se diferencian de forma puramente lógica y no se expresan explícitamente por herencia u otros medios DOM Aspose.Words. El nivel de nodo se usa para describir el lugar en el árbol de documentos donde normalmente se produciría el nodo.

En el artículo anterior, ya hablamos sobre la relación entre nodos y el hecho de que no todos los nodos pueden ser hijos de ningún nodo. Por ejemplo, la celda solo puede ser un elemento secundario de fila, y una fila solo puede ser un elemento secundario de tabla, y así sucesivamente. Estas relaciones también son aplicables para la división lógica de nodos en niveles en el documento.

Las siguientes secciones describen los niveles lógicos de los nodos en Aspose.Words y las clases que pertenecen a cada nivel.

## Nivel Lógico de Documento y Sección

Un documento de Word consta de una o más secciones, representadas por la clase [Section](https://reference.aspose.com/words/cpp/aspose.words/section) y separadas por saltos de sección. Una sección puede definir su propio tamaño de página, márgenes, orientación, número de columnas de texto y encabezados y pies de página.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) y [Sección](https://www.aspose.com/api/words/cpp/aspose.words/section/) los nodos de nivel tienen la estructura que se muestra en el siguiente diagrama.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Una sección contiene el texto principal, así como encabezados y pies de página para las páginas primera, par e impar. Estos diferentes "flujos" de texto se denominan *stories*.

En Aspose.Words, el nodo **Section** contiene los nodos de historia [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) y [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). El objeto **Body** almacena el texto principal. Los objetos **HeaderFooter** almacenan el texto de cada encabezado y pie de página. El texto de cualquier historia consta de párrafos y tablas, representados respectivamente por los objetos **Paragraph** y **Table** del nivel de bloque.

Además, cada documento de Word puede contener un glosario, que está representado por el nodo [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) en Aspose.Words. Un documento de glosario contiene [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) y [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) entradas.

**GlossaryDocument**

## Nivel Lógico de Bloque

Los nodos a nivel de bloque representan contenedores para contenido y controles de contenido, y pueden aparecer en los nodos secundarios del árbol de documentos en los siguientes nodos:

- Cuerpo
- Cabecera
- Pie de página
- Nota a pie de página
- Comentario
- Forma
- GroupShape
- Célula
- StructuredDocumentTag

Los nodos a nivel de bloque están representados por las siguientes clases:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) y [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), que son los nodos a nivel de bloque más importantes
- Marcadores, que ocurre tanto a nivel de bloque como a nivel de línea
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), que representan marcas personalizadas y pueden contener contenido y controles de contenido

El siguiente diagrama muestra los elementos a nivel de bloque.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Nivel Lógico en Línea

Los nodos de nivel en línea representan el contenido real del documento y pueden estar contenidos en los siguientes contenedores:

- Párrafo-el contenedor más común
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Los elementos de nivel en línea están representados por las siguientes clases:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - ejecuciones de texto con formato diferente
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) y [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) representan marcadores
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) y [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) representan anotaciones
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) y [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) que representan caracteres de campo, y [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) representan campos de palabras
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) representa caracteres especiales en el documento
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) y [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) representan formas, dibujos, imágenes, etc.
- SmartTag y StructuredDocumentTag representan marcado personalizado

El siguiente diagrama muestra la estructura de los nodos de nivel en línea.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Las formas en Microsoft Word incluyen ilustraciones de Office AutoShapes, cuadros de texto, imágenes, objetos OLE y controles ActiveX, todos los cuales se representan con la clase `Shape`. Algunas formas también pueden contener texto, por lo que los nodos de forma en Aspose.Words pueden contener nodos a nivel de bloque.

Las formas se pueden agrupar unas dentro de otras usando GroupShape nodos.

{{% /alert %}}

{{% alert color="primary" %}}

Las notas al pie y los comentarios pueden contener texto, por lo tanto, los nodos de notas al pie y Comentarios en Aspose.Words pueden contener nodos a nivel de bloque..

{{% /alert %}}

## Nivel de Nodo de Tabla, Fila y Celda

La tabla consta de nodos de filas y celdas. Los elementos de la tabla están representados por las siguientes clases:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) representa una fila de la tabla
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) representa una celda de tabla
- StructuredDocumentTag representar marcado personalizado

El siguiente diagrama muestra las estructuras de nodos de los niveles de tabla, Fila y Celda.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
