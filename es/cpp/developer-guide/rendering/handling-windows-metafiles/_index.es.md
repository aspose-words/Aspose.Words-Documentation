---
title: Manejo de Metarchivos Windows en C++
second_title: Aspose.Words para C++
articleTitle: Manejo de Windows Metarchivos
linktitle: Manejo de Windows Metarchivos
description: "Aspose.Words para C++ implementa su propio reproductor de metarchivos Windows para reproducir el formato de metarchivo en todas las plataformas y admite el manejo de las funciones básicas de metarchivo y puede realizar respaldo a un tipo diferente de reproductor de metarchivo."
type: docs
weight: 30
url: /es/cpp/handling-windows-metafiles/
---

El formato de metarchivo Windows es un formato de archivo de imagen que puede contener gráficos vectoriales y rasterizados. Este formato se utiliza para almacenar datos gráficos en la memoria o en archivos en disco. Un metarchivo almacena una lista de llamadas a funciones en la Interfaz de Dispositivo Gráfico (GDI) Windows que deben ejecutarse para mostrar la imagen en la pantalla. El sistema interpreta y ejecuta estos comandos en el contexto de visualización.

Anteriormente, Windows Metafile era el único formato de imagen vectorial compatible con Microsoft Word. Microsoft Word ahora también admite el formato SVG, pero el formato de metarchivo todavía se usa comúnmente en documentos de Word. Además, Metafile podría ser un formato de intercambio para algunas otras aplicaciones, como Microsoft Visio. Esencialmente, el propósito principal de Metafile es garantizar el intercambio de información gráfica entre Windows aplicaciones.

Hay 3 versiones de Windows Metafile:

- Las tiendas WMF llaman a GDI de 16 bits.
- EMF-almacena llamadas a Win32 / GDI.
- Los almacenes de metarchivo EMF + llaman a GDI+. El metarchivo EMF + también puede ser dual, describiendo los mismos gráficos con partes EMF y EMF+.

El problema existente con el Metarchivo Windows es que no es compatible con la mayoría de los formatos que no son de Word, en los que generalmente se guardan los documentos. Por lo tanto, es necesario convertir el formato de metarchivo a otros formatos ráster o vectoriales. Es fácil convertir el Metarchivo Windows en imagen rasterizada en .NET simplemente pasándolo a GDI+, pero no es posible en otras plataformas, ya que ni siquiera GDI + proporciona la funcionalidad para extraer los gráficos vectoriales del Metarchivo. Para resolver estos problemas, Aspose.Words implementa su propio reproductor de metarchivos Windows, que puede reproducir gráficos vectoriales y rasterizados en formato Metarchivo en todas las plataformas.

## Controlando el Reproductor de Metarchivos Aspose.Words

La clase [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) le permite controlar el reproductor de metarchivos. Por ejemplo, puede determinar cómo se deben representar las imágenes de metarchivo utilizando la propiedad [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), que tiene un significado especial al convertir a mapas de bits (consulte también la propiedad [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Guardar en un mapa de bits funciona de manera diferente en plataformas distintas de .NET. Si bien la representación .NET GDI + es una referencia que funciona casi a la perfección incluso para el formato de metarchivo más complejo, en otras plataformas puede causar problemas o no ser compatible en absoluto.

## Soporte de Operaciones Ráster

Las operaciones ráster son una característica compleja de metarchivo que actualmente tiene un soporte limitado. Las operaciones ráster están disponibles en formatos de metarchivo WMF y EMF. El formato de metarchivo EMF+ no utiliza operaciones ráster directamente, pero puede contener partes EMF, WMF incrustado o metarchivos EMF.

Hay operaciones ráster binarias y ternarias:

- Las operaciones ráster binarias se aplican a los comandos de dibujo con lápiz, como dibujar líneas y curvas. Al dibujar una línea, el color del lápiz se combina con el color del mapa de bits de destino (el color del píxel correspondiente en la superficie del dispositivo) mediante operaciones lógicas bit a bit especificadas con valores de color hexadecimales. El ejemplo de imagen a continuación ilustra el efecto de las 16 operaciones ráster binarias aplicadas a 20 barras de colores diferentes. Las barras de color verticales se dibujan primero, las barras horizontales se dibujan después de aplicar cada operación de trama binaria. Para los casos simples, R2_BLACK dibuja negro, R2_NOT invierte el color, R2_NOP no cambia el fondo y R2_WHITE dibuja blanco.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Las operaciones ráster ternarias se aplican al dibujar imágenes de mapa de bits. Combinan los colores de los píxeles de la imagen de mapa de bits correspondientes, el pincel y el mapa de bits de destino mediante operaciones lógicas bit a bit con valores de color hexadecimal especificados. Uno de los propósitos más comunes del uso de operaciones ráster ternarias es la emulación de transparencia. La imagen proporcionada en el siguiente ejemplo demuestra cómo se puede emular la transparencia de los iconos. Hay dos tipos de mapas de bits: el mapa de bits de máscara en blanco y negro y el mapa de bits en color. Primero, el mapa de bits de la máscara se dibuja con la operación SRCAND raster. Cambia la región del icono opaco a blanco y negro, dejando la región transparente sin cambios. Luego, se dibuja el segundo mapa de bits con la operación ráster SRCINVERT. Muestra los píxeles de color en la región negra, dejando la región transparente sin cambios.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Las operaciones ráster no se pueden convertir directamente en gráficos vectoriales. Aspose.Words emula operaciones ráster rasterizando parcialmente la superficie del dispositivo afectada por las operaciones ráster. Para este propósito, se usa la propiedad [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/).

{{% alert color="primary" %}}

Aunque actualmente no se admiten operaciones ráster binarias y Aspose.Words admite el número limitado de operaciones ráster ternarias, puede manejar los casos básicos de conversión a gráficos vectoriales directamente, por ejemplo, R2_BLACK, R2_WHITE, R2_NOP. Además, la rasterización de la superficie del dispositivo afecta significativamente al rendimiento, especialmente cuando está involucrado el número significativo de registros de operación de trama.

{{% /alert %}}

El ejemplo que se muestra a continuación demuestra cómo Aspose.Words representa un metarchivo en un mapa de bits cuando no es posible representar correctamente algunos de los registros del metarchivo en gráficos vectoriales:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Configuración de Reserva de Metarchivo

Aspose.Words no admite una serie de características de metarchivo que son más complejas o raras. Los usuarios pueden implementar la interfaz [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) y recibir mensajes de advertencia. Si Aspose.Words encuentra características no compatibles en un metarchivo, emite un mensaje de advertencia con [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. En este caso, Aspose.Words puede realizar una alternativa a un tipo diferente de reproductor de metarchivos. También se emite el mensaje de advertencia con respecto al respaldo.

En primer lugar, Aspose.Words realiza un respaldo del reproductor de metarchivo vectorial al ráster, que está controlado por la propiedad [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Si la función alternativa está deshabilitada, Aspose.Words intenta representar algunos gráficos de sustitución en lugar de las funciones que no son compatibles.

Aspose.Words reproduce correctamente el metarchivo en ráster usando GDI + en .NET, lo que hace que esta opción de devolución de llamada sea segura.

En segundo lugar, hay una opción para que el metarchivo dual EMF + retroceda de reproducir la parte EMF + a la parte EMF. Está controlado por [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Si se producen algunos problemas al reproducir la parte EMF, también se puede realizar un respaldo a la trama.

En cuanto a las operaciones ráster, si [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) está deshabilitado, entonces las operaciones ráster se consideran no compatibles, lo que desencadena el respaldo al reproductor de metarchivos de mapa de bits si está habilitado. Por lo tanto, si tiene un metarchivo con operaciones ráster, pero no desea utilizar la emulación de operaciones ráster y, sin embargo, desea obtener la salida vectorial con gráficos de sustitución, seleccione [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
