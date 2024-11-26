---
title: Manejo de metarchivos Windows
second_title: Aspose.Words para Python via .NET
articleTitle: Manejo de metarchivos Windows
linktitle: Manejo de metarchivos Windows
description: "Aspose.Words para Python via .NET implementa su propio reproductor de metarchivos Windows para reproducir el formato de metarchivos en todas las plataformas y admite el manejo de las funciones básicas de metarchivos y puede realizar un respaldo a un tipo diferente de reproductor de metarchivos."
type: docs
weight: 30
url: /es/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

El formato Windows Metafile es un formato de archivo de imagen que puede contener gráficos vectoriales y rasterizados. Este formato se utiliza para almacenar datos gráficos en la memoria o archivos en disco. Un metarchivo almacena una lista de llamadas a funciones en la interfaz del dispositivo gráfico (GDI) Windows que deben ejecutarse para mostrar la imagen en la pantalla. El sistema interpreta y ejecuta estos comandos en el contexto de visualización.

Anteriormente, Windows Metafile era el único formato de imagen vectorial admitido por Microsoft Word. Microsoft Word ahora también admite el formato SVG, pero el formato de metarchivo todavía se usa comúnmente en documentos de Word. Además, Metafile podría ser un formato de intercambio para otras aplicaciones, como Microsoft Visio. Esencialmente, el objetivo principal de Metafile es garantizar el intercambio de información gráfica entre aplicaciones Windows.

Hay 3 versiones del metarchivo Windows:

- WMF: almacena llamadas en GDI de 16 bits.
- EMF: almacena llamadas a Win32/GDI.
- El metarchivo EMF+ almacena llamadas a GDI+. El metarchivo EMF+ también puede ser dual y describir los mismos gráficos con partes EMF y EMF+.

El problema existente con Windows Metafile es que no es compatible con la mayoría de los formatos distintos de Word, en los que normalmente se guardan los documentos. Por lo tanto, es necesario convertir el formato Metafile a otros formatos ráster o vectoriales. Es fácil convertir Windows Metafile en una imagen rasterizada en .NET simplemente pasándola a GDI+, pero no es posible en otras plataformas ya que ni siquiera GDI+ proporciona la funcionalidad para extraer los gráficos vectoriales de Metafile. Para resolver estos problemas, Aspose.Words implementa su propio reproductor Windows Metafile, que es capaz de reproducir gráficos en formato Metafile tanto vectoriales como rasterizados en todas las plataformas.

## Controlar el reproductor de metarchivos Aspose.Words

La clase [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) le permite controlar el reproductor de metarchivos. Por ejemplo, puede determinar cómo se deben representar las imágenes de metarchivo utilizando la propiedad [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/), que tiene un significado especial al convertir a mapas de bits (consulte también la propiedad [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)).

Guardar en un mapa de bits funciona de manera diferente en plataformas distintas a .NET. Si bien la representación .NET GDI+ es una referencia que funciona casi perfecta incluso para el formato de metarchivo más complejo, en otras plataformas puede causar problemas o no ser compatible en absoluto.

## Soporte de operaciones ráster

Las operaciones ráster son una característica de metarchivo compleja que actualmente tiene soporte limitado. Las operaciones ráster están disponibles en formatos de metarchivo WMF y EMF. El formato de metarchivo EMF+ no utiliza operaciones ráster directamente, pero puede contener partes EMF, WMF incrustados o metarchivos EMF.

Hay operaciones ráster binarias y ternarias:

- Las operaciones de trama binaria se aplican a los comandos de dibujo con lápiz, como dibujar líneas y curvas. Al dibujar una línea, el color del lápiz se combina con el color del mapa de bits de destino (el color del píxel correspondiente en la superficie del dispositivo) mediante operaciones lógicas bit a bit especificadas con valores de color hexadecimales. La imagen de ejemplo siguiente ilustra el efecto de las 16 operaciones de trama binaria aplicadas a 20 barras de colores diferentes. Las barras de color verticales se dibujan primero, las barras horizontales se dibujan después de aplicar cada operación de trama binaria. Para los casos simples, R2_BLACK dibuja negro, R2_NOT invierte el color, R2_NOP no cambia el fondo y R2_WHITE dibuja blanco.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="manejo-metarchivos-windows-aspose-words-net-1" style="width:650px"/>

- Se aplican operaciones ráster ternarias al dibujar imágenes de mapa de bits. Combinan los colores de los píxeles de la imagen de mapa de bits correspondientes, el pincel y el mapa de bits de destino mediante operaciones lógicas bit a bit con valores de color hexadecimales específicos. Uno de los propósitos más comunes del uso de operaciones ráster ternarias es la emulación de transparencia. La imagen proporcionada en el siguiente ejemplo demuestra cómo se puede emular la transparencia del icono. Hay dos tipos de mapas de bits: el mapa de bits con máscara en blanco y negro y el mapa de bits en color. Primero, el mapa de bits de la máscara se dibuja con la operación ráster SRCAND. Cambia la región del icono opaco a blanco y negro, dejando la región transparente sin cambios. Luego se dibuja el segundo mapa de bits con la operación ráster SRCINVERT. Muestra los píxeles de color en la región negra, dejando la región transparente sin cambios.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="manejo-metarchivos-windows-aspose-words-net-2" style="width:650px"/>

Las operaciones ráster no se pueden convertir directamente en gráficos vectoriales. Aspose.Words emula operaciones ráster rasterizando parcialmente la superficie del dispositivo afectada por las operaciones ráster. Para ello se utiliza la propiedad [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/).

{{% alert color="primary" %}}

Si bien las operaciones ráster binarias no son compatibles actualmente y Aspose.Words admite un número limitado de operaciones ráster ternarias, puede manejar los casos básicos de conversión a gráficos vectoriales directamente, por ejemplo, R2_BLACK, R2_WHITE, R2_NOP. Además, la rasterización de la superficie del dispositivo afecta significativamente el rendimiento, especialmente cuando está involucrado un número significativo de registros de operación de rasterización.

{{% /alert %}}

El ejemplo que se muestra a continuación demuestra cómo Aspose.Words representa un metarchivo en un mapa de bits cuando no es posible representar correctamente algunos registros de metarchivo en gráficos vectoriales:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Configuración de reserva de metarchivo

Aspose.Words no admite una serie de funciones de metarchivos que son las más complejas o raras. En este caso, Aspose.Words puede recurrir a un tipo diferente de reproductor de metarchivos.

En primer lugar, Aspose.Words realiza un retroceso desde el reproductor de metarchivos vectoriales a ráster, que está controlado por la propiedad [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/). Si la función alternativa está deshabilitada, Aspose.Words intenta representar algunos gráficos de sustitución en lugar de las funciones que no son compatibles.

Aspose.Words reproduce correctamente el metarchivo en ráster usando GDI+ en .NET, lo que hace que esta opción de devolución de llamada sea segura.

En segundo lugar, existe una opción para que el metarchivo dual EMF+ pase de reproducir la parte EMF+ a la parte EMF. Está controlado por [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). Si se producen algunos problemas al reproducir la parte EMF, también se puede realizar el retroceso a ráster.

En cuanto a las operaciones ráster, si [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) está deshabilitado, entonces las operaciones ráster se consideran no compatibles, lo que activa el recurso al reproductor de metarchivos de mapas de bits si está habilitado. Por lo tanto, si tiene un metarchivo con operaciones ráster, pero no desea utilizar la emulación de operaciones ráster y aun así desea obtener la salida vectorial con gráficos de sustitución, seleccione [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
