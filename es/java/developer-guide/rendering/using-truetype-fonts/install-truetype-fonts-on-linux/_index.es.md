---
title: Instalar True Tipo Fuentes en Linux dentro Java
second_title: Aspose.Words para Java
articleTitle: Instalar True Tipo Fuentes en Linux
linktitle: Instalar True Tipo Fuentes en Linux
description: "Aspose.Words para Java permite hacer un documento creado utilizando Microsoft Word on a Linux máquina con la mejor precisión."
type: docs
weight: 20
url: /es/java/install-truetype-fonts-on-linux/
---

Con más frecuencia, usarás Aspose.Words convertir documentos DOC o DOCX en formato PDF. Si necesitas hacer esto en un Linux máquina, este tema le ayudará a aprender cómo asegurar Aspose.Words está renderizando sus documentos con la mejor precisión.

Con más frecuencia, se crearon documentos DOC y DOCX, que necesitan ser convertidos utilizando Microsoft Word, on a Windows o sistema operativo Mac OS. Por lo tanto, la mayoría de las fuentes utilizadas en documentos DOC y DOCX son "Windows fuentes" o "Office fonts", que son las fuentes instaladas con Microsoft Windows o Microsoft Oficina. Estas fuentes incluyen Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings y muchos otros.

El problema es que el `TrueType` fonts listed above are not installed by default on Linux distribuciones. Si usted toma un documento típico DOCX que se formatea con la fuente Cambria y tratar de convertirlo en formato PDF en Linux, Aspose.Words utilizará una fuente diferente porque Cambria no está disponible. Como resultado, el documento PDF se verá diferente, en comparación con el documento DOCX original. Para asegurarse de que los documentos convertidos por Aspose.Words aparece lo más cerca posible al original, necesita instalar "Windows fuentes" en su Linux sistema.

Hay dos formas principales de obtener fuentes de TrueType en un Linux sistema:

- Copia .TTF y. Archivos TTC de un Windows máquina en su Linux máquina
- Instalar un `TrueType` paquete de fuentes, como *msttcorefonts*

## Copiar fuentes de un Windows Máquina

Una manera fácil y rápida de conseguir fuentes de TrueType en un Linux el sistema es copiar. TTF y. Archivos TTC desde `C:\Windows\Fonts` directorio en un Windows máquina a algún directorio en su Linux máquina. Usted no necesita instalar o registrar estas fuentes en Linux de cualquier manera; sólo tiene que especificar la ubicación de las fuentes utilizando el [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) clase en Aspose.Words.

{{% alert color="primary" %}}

Verificar si se requiere licencia de fuentes y leer la EULA cuidadosamente antes de instalar MS Fonts en cualquier Linux sistema operativo.

{{% /alert %}}

## Instalar un `TrueType` Paquete de fuentes

Hay un número de Linux paquetes, que contienen Microsoft TrueType fuentes, que puede descargar e instalar en su Linux máquina. Los pasos exactos pueden ser diferentes en varios Linux distribuciones.

- En marcha. Ubuntu, use Synaptic Package Manager para encontrar e instalar el paquete *ttf-mscorefonts-installer*.
- En openSUSE, utilice Yast2 → Gestión de Software para encontrar e instalar el *fetchmsttfonts* paquete.
- Use Liberation Fonts licensed under OFL, as an alternative to standard Windows fuentes: Arial, Times New Roman, y Courier New.
- Para paquetes de fuentes adecuados a otros Linux distribuciones, búsqueda de documentación disponible en Internet.

Después de instalar el paquete, Aspose.Words encontrará estas fuentes en las carpetas de su sistema y las utilizará cuando trabaje con documentos.

## Vea también

- [Fuentes de Liberación](https://github.com/liberationfonts) como alternativa a la norma Windows fuentes
