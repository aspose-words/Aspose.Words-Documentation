---
title: Renderizado en Java
second_title: Aspose.Words por Java
articleTitle: Renderizado
linktitle: Renderizado
description: "Utilice la función de representación Aspose.Words para Java para formatear un documento de diseño de flujo en páginas y convertir dicho documento o páginas seleccionadas en otro documento (PDF, HTML, XPS, etc.) o imagen (TIFF, PNG, SVG, etc.) formatos para visualización, conversiones adicionales o impresión."
type: docs
weight: 30
url: /es/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Usamos el término "representación" en Aspose.Words para describir el proceso de conversión de un documento a un formato de archivo o un medio paginado o que tiene el concepto de páginas. Estamos hablando de la representación de un documento en páginas. El siguiente diagrama muestra qué representación hay en Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Las funciones de representación de Aspose.Words le permiten realizar lo siguiente:

- Convertir un documento o páginas seleccionadas a PDF, XPS, HTML, XAML, PostScript, y PCL formatos.
- Convierta un documento en un documento TIFF de varias páginas o convierta cualquier página en una imagen rasterizada y guárdela como BMP, PNG o JPEG.
- Convierta una página de documento en una imagen de gráficos vectoriales escalables (SVG) o conviértala en una imagen vectorial y guárdela como EMF.
- Renderice (dibuje) una página de documento a un tamaño o escala específicos en el objeto `Graphics` para crear miniaturas, imágenes a tamaño completo o a escala de páginas de documentos.
- Procese un objeto [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) por separado del documento en cualquier formato de imagen o en un objeto `Graphics`.
- Mostrar cualquier página de un documento en un componente Swing.
- Imprima o previsualice páginas de documentos utilizando la infraestructura de impresión Java estándar.

## Formatos de documento de diseño de flujo o Diseño fijo {#flow-layout-or-fixed-layout-document-formats}

La mayoría de los formatos de documentos que se pueden cargar en Aspose.Words se conocen como formatos de "diseño de flujo". Los formatos de diseño de flujo incluyen DOC, OOXML, RTF, ODT, y HTML. Los documentos en estos formatos constan de varios elementos, como párrafos, tablas, encabezados, pies de página, imágenes, campos y su formato, por ejemplo, negrita, cursiva, fuente, tamaño. Sin embargo, los formatos de diseño de flujo no contienen información sobre la posición en la que se muestra cada párrafo o carácter en particular en una página.

Por el contrario, los formatos de" diseño fijo "(también conocidos como" página fija") como PDF y XPS contienen información de posicionamiento exacto para todos los elementos del documento. Estos formatos conservan la apariencia original de un documento después de que se haya distribuido en páginas, lo que proporciona una mayor precisión de la información mostrada.

## Motor de Diseño de página {#page-layout-engine}

Aspose.Words implementa su propio motor de diseño de página que formatea un documento de diseño de flujo en pages. Aspose.Words implementa una serie de procesadores que producen un documento de diseño fijo, como PDF o XPS, o generan páginas en otro medio, como impresión o dibujo. Tenga en cuenta que la exportación también se puede paginar para HTML y XAML. Esto significa que un documento se puede guardar como HTML o XAML normal (formato de diseño de flujo), o como HTML y XAML" paginados " que presentan posiciones absolutas de elementos.

La ventaja más importante de usar el motor de diseño de página Aspose.Words es que imita la forma en que funciona el motor de diseño de página Microsoft Word. Por lo tanto, cuando convierta un documento Microsoft Word en PDF, XPS o lo imprima con Aspose.Words, el resultado aparecerá casi exactamente como si lo hubiera hecho Microsoft Word. Tenga en cuenta que Aspose.Words no utiliza Microsoft Word.
