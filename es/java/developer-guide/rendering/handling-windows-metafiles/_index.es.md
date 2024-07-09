---
title: Manejo Windows Metafiles en Java
second_title: Aspose.Words para Java
articleTitle: Manejo Windows Metafiles
linktitle: Manejo Windows Metafiles
description: "Aspose.Words para Java implementa su propio Windows Reproductor de metafile para reproducir el formato Metafile en todas las plataformas y soporta el manejo de las características básicas de metafile y puede realizar retroceso a un tipo diferente de reproductor de metafile."
type: docs
weight: 30
url: /es/java/handling-windows-metafiles/
---

Windows El formato Metafile es un formato de archivo de imagen que puede contener tanto gráficos vectoriales como de raster. Este formato se utiliza para almacenar datos gráficos en memoria o archivos en disco. Un metafile almacena una lista de llamadas de función en el Windows Interfaz de dispositivo gráfico (GDI) que debe ejecutarse para mostrar la imagen en la pantalla. El sistema interpreta y ejecuta estos comandos en el contexto de visualización.

Anteriormente, Windows Metafile fue el único formato de imagen vectorial apoyado por Microsoft Word. Microsoft Word ahora también soporta el formato SVG, pero el formato metafile sigue siendo utilizado comúnmente en documentos Word. Además, Metafile podría ser un formato de intercambio para algunas otras aplicaciones, como Microsoft Visio. Esencialmente, el objetivo principal de Metafile es asegurar el intercambio de información gráfica entre Windows aplicaciones.

Hay 3 versiones de Windows Metafile:

- WMF – las tiendas llaman a 16bit GDI.
- EMF – las tiendas llaman a Win32/GDI.
- EMF+ Las tiendas Metafile llaman a GDI+. EMF+ Metafile también puede ser dual, describiendo los mismos gráficos con partes EMF y EMF+.

La cuestión existente con Windows Metafile es que no es compatible con la mayoría de los formatos no deseados, a los que los documentos suelen ser guardados. Por lo tanto, es necesario convertir el formato Metafile a otros formatos de raster o vector. Es fácil de convertir Windows Metafile a una imagen de raster en .NET simplemente pasar a GDI+, pero no es posible en otras plataformas ya que incluso GDI+ no proporciona la funcionalidad para extraer los gráficos vectoriales de Metafile. Para resolver estos problemas, Aspose.Words implementa su propio Windows Reproductor de Metafile, que es capaz de reproducir el formato Metafile tanto vectorial como gráficos de raster en todas las plataformas.

## Controlar el Aspose.Words Metafile Player

El [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) clase te permite controlar el metafiler. Por ejemplo, usted puede determinar cómo las imágenes de metafile deben ser renderizadas usando el [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) propiedad, que tiene un significado especial al convertir a bitmaps (ver también el [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) propiedad).

## Apoyo a las operaciones de Raster

Las operaciones de Raster son una característica compleja de metafile, que actualmente tiene un apoyo limitado. Las operaciones de Raster están disponibles en formatos de metafile WMF y EMF. El formato de metafile EMF+ no utiliza operaciones de raster directamente sino que puede contener partes EMF, metáforos WMF integrados o EMF.

Existen operaciones binarias y ternarias de raster:

- Las operaciones binarias de raster se aplican a los comandos de dibujo de plumas, como líneas de dibujo y curvas. Al dibujar una línea, el color de la pluma se combina con el color bitmap de destino (el color del píxel correspondiente en la superficie del dispositivo) mediante operaciones lógicas bitwise especificadas con valores de color hex. El ejemplo de imagen a continuación ilustra el efecto de las 16 operaciones binarias de raster aplicadas a 20 barras de color diferentes. Las barras verticales de color se dibujan primero, las barras horizontales se dibujan después de cada operación de raster binario. Para los casos simples, R2_BLACK dibuja negro, R2_NO invierte el color, R2_NOP no cambia el fondo, y R2_WHITE dibuja blanco.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Se aplican operaciones de raster terribles al dibujar imágenes de mapa de bits. Combinan colores de píxeles de imagen bitmap correspondientes, el cepillo y el bitmap de destino utilizando operaciones lógicas bitwise con valores de color hex especificados. Uno de los propósitos más comunes de usar operaciones de raster ternario es la emulación de la transparencia. La imagen proporcionada en el ejemplo siguiente muestra cómo se puede emular la transparencia del icono. Hay dos tipos de bitmaps: el bitmap b/w máscara y el bitmap color. En primer lugar, el mapa de máscaras se dibuja con la operación de raster SRCAND. Cambia la región del icono opaco a blanco y negro, dejando la región transparente sin cambios. Luego el segundo bitmap se dibuja con la operación de raster SRCINVERT. Muestra los píxeles de color en la región negra, dejando la región transparente sin cambios.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Las operaciones de Raster no se pueden convertir directamente en gráficos vectoriales. Aspose.Words emula operaciones de rasterización parcial de la superficie del dispositivo afectada por operaciones de raster. Para ello, el [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) propiedad se utiliza.

{{% alert color="primary" %}}

Mientras que las operaciones binarias de raster no están actualmente respaldadas y el número limitado de operaciones de raster ternario están respaldadas por Aspose.Words, puede manejar los casos básicos de conversión a gráficos vectoriales directamente, por ejemplo, R2_BLACK, R2_WHITE, R2_NOP. Además, la rasterización de la superficie del dispositivo afecta significativamente el rendimiento, especialmente cuando el número significativo de registros de operaciones de raster está involucrado.

{{% /alert %}}

El ejemplo que se muestra a continuación demuestra cómo Aspose.Words hace un metafile a un bitmap cuando no es posible renderizar correctamente algunos de los archivos metafiles a gráficos vectoriales:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
