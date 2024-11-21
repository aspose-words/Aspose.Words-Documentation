---
title: Rendering in Java
second_title: Aspose.Words para Java
articleTitle: Rendering
linktitle: Rendering
description: "Uso Aspose.Words para Java renderizar la función para formatear un documento de flujo en páginas y convertir dicho documento o páginas seleccionadas a otro documento (PDF, HTML, XPS, etc.) o formatos de imagen (TIFF, PNG, SVG, etc.) para visualización, nuevas conversiones o impresión."
type: docs
weight: 30
url: /es/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Utilizamos el término "rendering" en Aspose.Words para describir el proceso de conversión de un documento en un formato de archivo o un medio que está paginado o tiene el concepto de páginas. Estamos hablando de la presentación de un documento en páginas. El siguiente diagrama muestra en qué consiste la renderización Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Las características de renderización de Aspose.Words le permite realizar lo siguiente:

- Convertir un documento o páginas seleccionadas en PDF, XPS, Formatos HTML, XAML, PostScript y PCL.
- Convertir un documento en un documento TIFF multipágina, o convertir cualquier página en una imagen de mapa y guardarlo como BMP, PNG o JPEG.
- Convertir una página de documento en una imagen Scalable Vector Graphics (SVG), o convertirla en una imagen vectorial y guardarla como EMF.
- Render (draw) una página de documento a un tamaño o escala específico en el `Graphics` objeto para crear miniaturas, imágenes de tamaño completo o escaladas de páginas de documentos.
- Render a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objeto separado del documento a cualquier formato de imagen o a un `Graphics` objeto.
- Mostrar cualquier página de un documento en un componente Swing.
- Imprimir o previsualizar páginas de documentos usando el estándar Java infraestructura de impresión.

## Flow-layout o Fixed-layout Formatos de documento {#flow-layout-or-fixed-layout-document-formats}

La mayoría de los formatos de documentos que se pueden cargar Aspose.Words son conocidos como formatos de "flujo de salida". Los formatos Flow-layout incluyen DOC, OOXML, RTF, ODT y HTML. Los documentos en estos formatos consisten en varios elementos como párrafos, tablas, cabeceras, pies, imágenes, campos y su formato, por ejemplo, negrita, itálica, fuente, tamaño. Sin embargo, los formatos de flujo-función no contienen información sobre la posición en que cada párrafo o personaje en particular se muestra en una página.

En contraste, los formatos "fixed-layout" (también conocidos como "pagina fija") como PDF y PDF XPS contener información exacta de posicionamiento para todos los elementos de documento. Estos formatos conservan la apariencia original de un documento después de que fue establecido en páginas, proporcionando mayor precisión de la información mostrada.

## Page Layout Engine {#page-layout-engine}

Aspose.Words implementa su propio motor de diseño de página que formatea un documento de flujo en páginas. Aspose.Words implementa una serie de renderizadores que producen un documento de eliminación fija como PDF o XPS, o páginas de salida en otro medio como impresión o dibujo. Tenga en cuenta que la exportación también se puede paginar para HTML y XAML. Esto significa que un documento se puede guardar como HTML regular o XAML (formato de salida), o como HTML "paginado" y XAML que tienen posiciones absolutas de elementos.

La ventaja más importante de utilizar Aspose.Words el motor de diseño de página es que imita la manera Microsoft Word’s página de diseño del motor funciona. Por lo tanto, cuando usted convierte un Microsoft Word documento en PDF, XPS, o imprimirlo usando Aspose.Words, la salida aparecerá casi exactamente como si fuera hecha por Microsoft Word. Note que Aspose.Words no utiliza Microsoft Word.
