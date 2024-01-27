---
title: Renderizado en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Representación
linktitle: Representación
description: "Utilice la función de representación Aspose.Words para Python via .NET para formatear un documento de diseño de flujo en páginas y convertir dicho documento o páginas seleccionadas a otros formatos de documentos (PDF, HTML, XPS, etc.) o imágenes (TIFF, PNG, SVG, etc.) para visualizar, realizar más conversiones o imprimir."
type: docs
weight: 20
url: /es/python-net/rendering/
---

Usamos el término "renderizado" en Aspose.Words para describir el proceso de convertir un documento a un formato de archivo o un medio paginado o que tenga el concepto de páginas. Estamos hablando de convertir un documento en páginas. El siguiente diagrama muestra qué es el renderizado en Aspose.Words.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

Las funciones de renderizado de Aspose.Words le permiten realizar lo siguiente:

- Convierta un documento o páginas seleccionadas a formatos PDF, XPS, HTML, XAML, PostScript y PCL.
- Convierta un documento en un documento TIFF de varias páginas, o convierta cualquier página en una imagen rasterizada y guárdela como BMP, PNG o JPEG.
- Convierta una página de documento en una imagen de gráficos vectoriales escalables (SVG), o conviértala en una imagen vectorial y guárdela como EMF.
- Renderizar un objeto [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) por separado del documento a cualquier formato de imagen.

## Formatos de documentos de diseño fluido o de diseño fijo

La mayoría de los formatos de documentos que se pueden cargar en Aspose.Words se conocen como formatos de "diseño de flujo". Los formatos de diseño de flujo incluyen DOC, OOXML, RTF, ODT y HTML. Los documentos en estos formatos constan de varios elementos como párrafos, tablas, encabezados, pies de página, imágenes, campos y su formato, por ejemplo, negrita, cursiva, fuente y tamaño. Sin embargo, los formatos de diseño de flujo no contienen información sobre la posición donde se muestra cada párrafo o carácter en particular en una página.

Por el contrario, los formatos de "diseño fijo" (también conocidos como "página fija") como PDF y XPS contienen información de posición exacta para todos los elementos del documento. Estos formatos conservan la apariencia original de un documento una vez distribuido en páginas, lo que proporciona una mayor precisión en la información mostrada.

## Motor de diseño de página

Aspose.Words implementa su propio motor de diseño de páginas que formatea un documento de diseño de flujo en páginas. Aspose.Words implementa una serie de renderizadores que producen un documento de diseño fijo, como PDF o XPS, o imprimen páginas en otro medio, como impresión o dibujo. Tenga en cuenta que la exportación también se puede paginar para HTML y XAML. Esto significa que un documento se puede guardar como HTML o XAML (formato de diseño de flujo) normal, o como HTML y XAML "paginados" que presentan posiciones absolutas de elementos.

La ventaja más importante de utilizar el motor de diseño de páginas Aspose.Words es que imita la forma en que funciona el motor de diseño de páginas de Microsoft Word. Por lo tanto, cuando convierte un documento Microsoft Word a PDF, XPS o lo imprime usando Aspose.Words, el resultado aparecerá casi exactamente como si estuviera hecho con Microsoft Word. Tenga en cuenta que Aspose.Words no utiliza Microsoft Word.
