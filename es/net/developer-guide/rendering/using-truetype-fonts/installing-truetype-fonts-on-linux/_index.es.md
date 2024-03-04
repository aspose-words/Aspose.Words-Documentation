---
title: Instale fuentes TrueType en Linux en C#
second_title: Aspose.Words para .NET
articleTitle: Instalar fuentes TrueType en Linux
linktitle: Instalar fuentes TrueType en Linux
description: "Aspose.Words para .NET permite representar un documento creado con Microsoft Word en una máquina Linux con la mayor precisión utilizando C#. Para lograr esto, copie archivos de fuentes desde una máquina Windows o instale un paquete de fuentes `TrueType` en su máquina Linux en C#."
type: docs
weight: 20
url: /es/net/installing-truetype-fonts-on-linux/
---

La mayoría de las veces, utilizará Aspose.Words para convertir documentos DOC o DOCX al formato PDF. Si necesita hacer esto en una máquina Linux, este tema le ayudará a aprender cómo garantizar que Aspose.Words represente sus documentos con la mayor precisión.

La mayoría de las veces, los documentos DOC y DOCX que deben convertirse se crearon utilizando Microsoft Word, en un sistema operativo Windows o Mac OS. Por lo tanto, la mayoría de las fuentes utilizadas en los documentos DOC y DOCX son "fuentes Windows" o "fuentes Office", que son las fuentes instaladas con Microsoft Windows o Microsoft Office. Estas fuentes incluyen Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings y muchas otras.

El problema es que las fuentes `TrueType` enumeradas anteriormente no están instaladas de forma predeterminada en las distribuciones Linux. Si toma un documento DOCX típico formateado con la fuente Cambria e intenta convertirlo al formato PDF en Linux, Aspose.Words usará una fuente diferente porque Cambria no está disponible. Como resultado, el documento PDF tendrá un aspecto diferente en comparación con el documento DOCX original. Para asegurarse de que los documentos convertidos mediante Aspose.Words se parezcan lo más posible al original, debe instalar "fuentes Windows" en su sistema Linux.

Hay dos formas principales de obtener fuentes TrueType en un sistema Linux:

- Copie archivos .TTF y .TTC desde una máquina Windows a su máquina Linux
- Instalar un paquete de fuentes `TrueType`, como *msttcorefonts*

## Copiar fuentes desde una máquina Windows

Una manera fácil y rápida de obtener fuentes TrueType en un sistema Linux es copiar archivos .TTF y .TTC del directorio `C:\Windows\Fonts` en una máquina Windows a algún directorio en su máquina Linux. No es necesario instalar ni registrar estas fuentes en Linux de ninguna manera; sólo necesitas especificar la ubicación de las fuentes usando la clase [FontSettings](https://reference.aspose.com/words/es/net/aspose.words.fonts/fontsettings/) en Aspose.Words.

{{% alert color="primary" %}}

Verifique si se requiere una licencia de fuentes y lea atentamente el CLUF antes de instalar MS Fonts en cualquier sistema operativo Linux.

{{% /alert %}}

## Instalar un paquete de fuentes `TrueType`

Hay varios paquetes Linux que contienen fuentes Microsoft TrueType que puede descargar e instalar en su máquina Linux. Los pasos exactos pueden ser diferentes en varias distribuciones Linux.

- En Ubuntu, utilice el Administrador de paquetes Synaptic para buscar e instalar el paquete *ttf-mscorefonts-installer*.
- En openSUSE, utilice Yast2 → Gestión de software para buscar e instalar el paquete *fetchmsttfonts*.
- Utilice Liberation Fonts con licencia OFL, como alternativa a las fuentes Windows estándar: Arial, Times New Roman y Courier New.
- Para paquetes de fuentes adecuados para otras distribuciones Linux, busque la documentación disponible en Internet.

Después de instalar el paquete, Aspose.Words encontrará estas fuentes en las carpetas de su sistema y las utilizará cuando trabaje con documentos.

## Ver también

- [Fuentes de liberación](https://github.com/liberationfonts) como alternativa a las fuentes Windows estándar
