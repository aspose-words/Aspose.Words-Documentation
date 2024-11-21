---
title: Advertencias Cuando se ahorra en PDF/A y PDF/UA
second_title: Aspose.Words para Java
articleTitle: Advertencias de Accesibilidad al Ahorrar a PDF/A y PDF/UA
linktitle: Advertencias de Accesibilidad al Ahorrar a PDF/A y PDF/UA
description: "PDF/A y PDF/UA imponen requisitos de accesibilidad relacionados con el contenido de documentos. Al guardar en PDF/A o PDF/UA Java y la cuestión viola el cumplimiento, se emite una advertencia."
type: docs
weight: 29
url: /es/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Los formatos PDF/A y PDF/UA imponen una serie de requisitos de accesibilidad relacionados con el contenido de documentos que no se pueden cumplir durante la conversión automática de Word a PDF. Estos requisitos se describen en el artículo anterior *"Trabajo con PDF/A o PDF/UA"*. Ahora se emiten advertencias para algunos de estos problemas.

Las advertencias se emiten al guardar uno de los formatos PDF/A o PDF/UA y el problema viola el cumplimiento. Por ejemplo, la advertencia sobre el título de documento desaparecido se emitirá cuando se guarde a PDF/UA y no se emitirá cuando se guarde a PDF/A.

Todas las advertencias son de [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLoss** y [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**. Pdf**. Aquí está una lista de los nuevos valores de advertencia Descripción:

|  Descripción valor de advertencia |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "El título de documento está desaparecido. Esto viola los requisitos de cumplimiento. El documento de salida no será plenamente compatible" |                          |   {{< emoticons/tick >}}  |
|  "El documento contiene títulos que no son consecutivos. Esto viola los requisitos de cumplimiento. El documento de salida no será plenamente compatible" |                          |   {{< emoticons/tick >}}  |
|  "Hay formas sin texto alt en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será plenamente compatible" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Hay tablas sin texto alt en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será plenamente compatible" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Hay hipervínculos sin texto alt en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será plenamente compatible" |                          |   {{< emoticons/tick >}}  |
|  "Hay tablas sin renglón de cabecera / columna en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será plenamente compatible" |                          |   {{< emoticons/tick >}}  |
|  "El documento contiene caracteres Unicode PUA. Esto viola los requisitos de cumplimiento. El documento de salida no será plenamente compatible" |   {{< emoticons/tick >}}  |                          |
|  "El documento contiene .notdef glyphs. Esto viola los requisitos de cumplimiento. El documento de salida no será plenamente compatible" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
