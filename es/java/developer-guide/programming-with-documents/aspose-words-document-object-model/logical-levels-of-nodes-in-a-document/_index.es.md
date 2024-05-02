---
title: Niveles lógicos de los nodos en un documento Java
second_title: Aspose.Words para Java
articleTitle: Niveles lógicos de los ganglios en un documento
linktitle: Niveles lógicos de los ganglios en un documento
type: docs
description: "In Aspose.Words para Java documentación mencionó niveles lógicos de nodos – nivel de bloque, nivel de línea o nivel de fila. El nivel del nodo se utiliza para describir la ubicación en el árbol del documento donde se produce el nodo."
weight: 10
url: /es/java/logical-levels-of-nodes-in-a-document/
---

Esta documentación a veces se refiere a un grupo de clases de ganglios como pertenecientes a un "nivel" en un documento, como "block-level", "inline-level" (también conocido como "inline"), o nodos "row-level". Estos niveles en un documento se diferencian puramente lógicamente y no se expresan explícitamente por herencia u otros Aspose.Words DOM significa. El nivel del nodo se utiliza para describir el lugar en el árbol del documento donde normalmente se produciría el nodo.

En el artículo anterior, ya hablamos de la relación entre los nodos y el hecho de que no todos los nodos se permiten ser un niño de ningún nodo. Por ejemplo, Cell sólo puede ser un niño Row, y un Row sólo puede ser un niño de mesa, y así sucesivamente. Estas relaciones también son aplicables para la división lógica de los nodos en niveles en el documento.

Las secciones siguientes describen los niveles lógicos de los ganglios Aspose.Words y las clases que pertenecen a cada nivel.

## Document and Section Logical Level

A El documento de Word consiste en una o más secciones, representadas por el [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) clase y separado por secciones. Una sección puede definir su propio tamaño de página, márgenes, orientación, número de columnas de texto, y cabeceras y pies.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) y [Sección](https://www.aspose.com/api/words/java/com.aspose.words/section) los nodos de nivel tienen la estructura como se muestra en el siguiente diagrama.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Una sección contiene el texto principal, así como cabeceras y calzados para las páginas primera, incluso y extraña. Estos diferentes "flujos" de texto se llaman *stories*.

In Aspose.Words, el **Section** nodo contiene el [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) y [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Nodos de historia. El **Body** objeto almacena el texto principal. El **HeaderFooter** los objetos almacenan el texto para cada cabecera y calzado. El texto de cualquier historia consta de párrafos y cuadros, representados respectivamente por el **Paragraph** y **Table** objetos del nivel del bloque.

Además, cada uno El documento de Word puede contener un glosario, que está representado por el [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) nodo en Aspose.Words. Un documento glosario contiene [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), y [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) entradas.

**GlossaryDocument** Incluye [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) nodos que representan diferentes tipos de entradas de documentos glosarios. Cada uno **BuildingBlock** contiene secciones que se pueden insertar, eliminar y copiar en documentos.

## Nivel lógico del bloque

Los nodos de nivel de bloque representan contenedores para controles de contenido y contenido, y pueden ocurrir en los nodos de árbol de documentos en los siguientes nodos:

- Cuerpo
- Header
- Footer
- Nota al pie de página
- Comentario
- Forma
- GroupForma
- Celular
- Documentación estructuradaTag

Los nodos de nivel básico están representados por las siguientes clases:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) y [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), que son los nodos más importantes de nivel bloque
- Marcas, que ocurren tanto a nivel de bloques como a nivel de línea
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), que representan el marcado personalizado y pueden contener tanto el contenido como los controles de contenido

El siguiente diagrama muestra los elementos del nivel del bloque.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Nivel lógico

Los nodos de nivel inline representan el contenido real del documento y pueden ser contenidos en los siguientes contenedores:

- Párrafo - el contenedor más común
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- Documentación estructuradaTag

Los elementos de nivel inline están representados por las siguientes clases:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – tiradas de texto formateadas de forma diferente
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) y [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) representan marcadores
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) y [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) representan anotaciones
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) y [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) que representan caracteres de campo, y [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) Representación Campos de palabras
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) representa caracteres especiales en el documento
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) y [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) representan formas, dibujos, imágenes, etc.
- SmartTag y Documentos Estructurados Tag represent custom markup

El siguiente diagrama muestra la estructura de los nodos en línea.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Formas en Microsoft Word incluyen los controles Office Art AutoShapes, cajas de texto, imágenes, objetos OLE y ActiveX, todos los cuales están representados usando los `Shape` clase. Algunas formas también pueden contener texto, por lo que los nodos de Forma en Aspose.Words puede contener nodos de nivel de bloque.

Las formas se pueden agrupar entre sí usando GroupTonterías.

{{% /alert %}}

{{% alert color="primary" %}}

Las notas al pie de página y los comentarios pueden contener texto, por lo tanto nodos al pie de página y comentario Aspose.Words puede contener nodos de nivel de bloque.

{{% /alert %}}

## Table, Row, and Cell Node Level

La tabla consta de nodos de filas y células. Los elementos del cuadro están representados por las siguientes clases:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) representa una fila de mesa
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) representa una célula de mesa
- Documento estructurado Tag represent custom markup

El siguiente diagrama muestra las estructuras de nodos de los niveles de Tabla, Fila y Celda.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
