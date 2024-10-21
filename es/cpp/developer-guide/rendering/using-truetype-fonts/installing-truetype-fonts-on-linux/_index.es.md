---
title: Instalar TrueType fuentes en Linux en C++
second_title: Aspose.Words para C++
articleTitle: Instalar TrueType Fuentes en Linux
linktitle: Instalar TrueType Fuentes en Linux
description: "Aspose.Words para C++ permite renderizar un documento creado con Microsoft Word en una máquina Linux con la mejor precisión. Para lograr esto, copie los archivos de fuentes de una máquina Windows o Instale un paquete de fuentes `TrueType` en su máquina Linux."
type: docs
weight: 20
url: /es/cpp/install-truetype-fonts-on-linux/
---

La mayoría de las veces, usará Aspose.Words para convertir documentos DOC o DOCX al formato PDF. Si necesita hacer esto en una máquina Linux, este tema lo ayudará a aprender cómo asegurarse de que Aspose.Words procese sus documentos con la mayor precisión.

Con mayor frecuencia, los documentos DOC y DOCX, que deben convertirse, se crearon con Microsoft Word, en un sistema operativo Windows o Mac OS. Por lo tanto, la mayoría de las fuentes utilizadas en los documentos DOC y DOCX son "fuentesWindows" o "fuentes de Office", que son las fuentes instaladas con Microsoft Windows o Microsoft Office. Estas fuentes incluyen Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings y muchas otras.

El problema es que las fuentes `TrueType` enumeradas anteriormente no están instaladas de forma predeterminada en las distribuciones Linux. Si toma un documento DOCX típico que está formateado con la fuente Cambria e intenta convertirlo al formato PDF en Linux, Aspose.Words usará una fuente diferente porque Cambria no está disponible. Como resultado, el documento PDF tendrá un aspecto diferente en comparación con el documento DOCX original. Para asegurarse de que los documentos convertidos por Aspose.Words se parezcan lo más posible al original, debe instalar "fuentesWindows" en su sistema Linux.

Hay dos formas principales de obtener fuentes TrueType en un sistema Linux:

- Copiado .TTF y .Archivos TTC de una máquina Windows a su máquina Linux
- Instale un paquete de fuentes `TrueType`, como *msttcorefonts*

## Copiar fuentes de una máquina Windows

Una forma fácil y rápida de obtener fuentes TrueType en un sistema Linux es copiar .TTF y .Archivos TTC del directorio C: \Windows\Fonts en una máquina Windows a algún directorio en su máquina Linux. No necesita instalar o registrar estas fuentes en Linux de ninguna manera; solo necesita especificar la ubicación de las fuentes usando la clase [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) en Aspose.Words.

{{% alert color="primary" %}}

Verifique si se requieren licencias de fuentes y lea atentamente el EULA antes de instalar fuentes MS en cualquier sistema operativo Linux.

{{% /alert %}}

## Instalar un Paquete de Fuentes `TrueType`

Hay una serie de paquetes Linux, que contienen fuentes TrueType de Microsoft, que puede descargar e instalar en su máquina Linux. Los pasos exactos pueden ser diferentes en varias distribuciones Linux.

- En Ubuntu, use el Administrador de paquetes Synaptic para buscar e instalar el paquete *ttf-mscorefonts-installer*.
- En openSUSE, use Yast2 → Administración de software para buscar e instalar el paquete *fetchmsttfonts*.
- Utilice fuentes Liberation con licencia de OFL, como alternativa a las fuentes Windows estándar: Arial, Times New Roman y Courier New.
- Para paquetes de fuentes adecuados para otras distribuciones Linux, busque la documentación disponible en Internet.

Después de instalar el paquete, Aspose.Words encontrará estas fuentes en las carpetas de su sistema y las usará cuando trabaje con documentos.

## Véase También

- [Fuentes de Liberación](https://github.com/liberationfonts) como alternativa a las fuentes Windows estándar
