---
title: Niveles lógicos de nodos en un documento
second_title: Aspose.Words para Python via .NET
articleTitle: Niveles lógicos de nodos en un documento
linktitle: Niveles lógicos de nodos en un documento
type: docs
description: "En la documentación Aspose.Words para Python via .NET se mencionan niveles lógicos de nodos: nivel de bloque, nivel en línea o nivel de fila. El nivel de nodo se utiliza para describir la ubicación en el árbol del documento donde normalmente se encuentra el nodo."
weight: 10
url: /es/python-net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Esta documentación a veces se refiere a un grupo de clases de nodos como pertenecientes a un "nivel" en un documento, como nodos "nivel de bloque", "nivel en línea" (también conocido como "en línea") o "nivel de fila".. Estos niveles en un documento se diferencian de forma puramente lógica y no se expresan explícitamente por herencia u otros medios Aspose.Words DOM. El nivel de nodo se utiliza para describir el lugar en el árbol del documento donde normalmente ocurriría el nodo.

En el artículo anterior, ya hablamos sobre la relación entre nodos y el hecho de que no todos los nodos pueden ser hijos de ningún nodo. Por ejemplo, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) sólo puede ser un hijo [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) y un [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) sólo puede ser un hijo [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), y así sucesivamente. Estas relaciones también son aplicables para la división lógica de nodos en niveles en el documento.

Las siguientes secciones describen los niveles lógicos de los nodos en Aspose.Words y las clases que pertenecen a cada nivel.

## Nivel lógico de documento y sección

Un documento de Word consta de una o más secciones, representadas por la clase [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) y separadas por saltos de sección. Una sección puede definir su propio tamaño de página, márgenes, orientación, número de columnas de texto y encabezados y pies de página.

Los nodos de nivel [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) y [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) tienen la estructura que se muestra en el siguiente diagrama.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="documento-y-nivel-de-sección-como-palabras" style="width:700px"/>

Una sección contiene el texto principal, así como encabezados y pies de página de las páginas primera, par e impar. Estos diferentes "flujos" de texto se denominan *stories*.

En Aspose.Words, el nodo [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) contiene los nodos de historia [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) y [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). El objeto [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) almacena el texto principal. Los objetos [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) almacenan el texto de cada encabezado y pie de página. El texto de cualquier historia consta de párrafos y tablas, representados respectivamente por los objetos [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) y [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) del nivel de bloque.

Además, cada documento de Word puede contener un glosario, que está representado por el nodo [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) en Aspose.Words. Un documento de glosario contiene entradas [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) y [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) incluye nodos [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) que representan diferentes tipos de entradas de documentos del glosario. Cada [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) contiene secciones que se pueden insertar, eliminar y copiar en documentos.

## Bloquear nivel lógico

Los nodos a nivel de bloque representan contenedores para contenido y controles de contenido, y pueden aparecer en los nodos secundarios del árbol de documentos en los siguientes nodos:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Los nodos a nivel de bloque están representados por las siguientes clases:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) y [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), que son los nodos a nivel de bloque más importantes
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), que ocurre tanto a nivel de bloque como a nivel de línea
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), que representa un marcado personalizado y puede contener contenido y controles de contenido.

El siguiente diagrama muestra elementos a nivel de bloque.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="palabras-aspose-a-nivel-de-bloque" style="width:550px"/>

## Nivel lógico en línea

Los nodos de nivel en línea representan el contenido real del documento y pueden estar contenidos en los siguientes contenedores:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – el contenedor más común
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Los elementos de nivel en línea están representados por las siguientes clases:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/): tiradas de texto con formato diferente
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) y [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) representan marcadores
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) y [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) representan anotaciones
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) y [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) que representan caracteres de campo y [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) representan campos de Word
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) representa caracteres especiales en el documento.
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) y [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) representan formas, dibujos, imágenes, etc.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) y [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) representan marcado personalizado

El siguiente diagrama muestra la estructura de nodos de nivel en línea.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="palabras-aspose-de-nivel-en-línea" style="width:785px"/>

{{% alert color="primary" %}}

Las formas en Microsoft Word incluyen autoformas de Office Art, cuadros de texto, imágenes, objetos OLE y controles ActiveX, todos los cuales se representan mediante la clase `Shape`. Algunas formas también pueden contener texto, por lo que los nodos de formas en Aspose.Words pueden contener nodos a nivel de bloque.

Las formas se pueden agrupar unas dentro de otras mediante nodos [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

Las notas a pie de página y los comentarios pueden contener texto; por lo tanto, los nodos [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) y [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) en Aspose.Words pueden contener nodos a nivel de bloque.

{{% /alert %}}

## Nivel de nodo de tabla, fila y celda

La tabla consta de nodos de filas y celdas. Los elementos [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) están representados por las siguientes clases:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) representa una fila de la tabla
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) representa una celda de la tabla
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) representa marcado personalizado

El siguiente diagrama muestra las estructuras de nodos de los niveles [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="tabla-fila-celda-aspose-palabras" style="width:910px"/>
