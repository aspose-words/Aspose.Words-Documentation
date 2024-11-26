---
title: Advertencias al guardar en PDF/A y PDF/UA
second_title: Aspose.Words para .NET
articleTitle: Advertencias de problemas de accesibilidad al guardar en PDF/A y PDF/UA
linktitle: Advertencias de problemas de accesibilidad al guardar en PDF/A y PDF/UA
description: "PDF/A y PDF/UA imponen requisitos de accesibilidad relacionados con el contenido del documento. Al guardar en PDF/A o PDF/UA en C# y el problema infringe el cumplimiento, se emite una advertencia."
type: docs
weight: 29
url: /es/net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Los formatos PDF/A y PDF/UA imponen una serie de requisitos de accesibilidad relacionados con el contenido del documento que no se pueden cumplir durante la conversión automática de Word a PDF. Estos requisitos se describen en el artículo anterior *"Trabajar con PDF/A o PDF/UA"*. Ahora se emiten advertencias por algunos de estos problemas.

Se emiten advertencias al guardar en uno de los formatos PDF/A o PDF/UA y el problema infringe el cumplimiento. Por ejemplo, la advertencia sobre el título del documento faltante se emitirá al guardar en PDF/UA y no se emitirá al guardar en PDF/A.

Todas las advertencias son de [WarningType](https://reference.aspose.com/words/es/net/aspose.words/warningtype/)**.Pérdida de formato menor** y [WarningSource](https://reference.aspose.com/words/es/net/aspose.words/warningsource/)**.pdf**. Aquí hay una lista de los nuevos valores de advertencia de Descripción:

|  Descripción valor de advertencia |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Falta el título del documento. Esto viola los requisitos de cumplimiento. El documento de salida no cumplirá totalmente". |                          |  {{< emoticons/tick >}} |
|  "El documento contiene encabezados cuyos niveles no son consecutivos. Esto viola los requisitos de cumplimiento. El documento resultante no será totalmente compatible". |                          |  {{< emoticons/tick >}} |
|  "Hay formas sin texto alternativo en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible". |  {{< emoticons/tick >}} |  {{< emoticons/tick >}} |
|  "Hay tablas sin texto alternativo en el documento. Esto viola los requisitos de cumplimiento. El documento resultante no cumplirá totalmente". |  {{< emoticons/tick >}} |  {{< emoticons/tick >}} |
|  "Hay hipervínculos sin texto alternativo en el documento. Esto viola los requisitos de cumplimiento. El documento resultante no cumplirá totalmente". |                          |  {{< emoticons/tick >}} |
|  "Hay tablas sin fila/columna de encabezado en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible". |                          |  {{< emoticons/tick >}} |
|  "El documento contiene caracteres PUA Unicode. Esto viola los requisitos de cumplimiento. El documento resultante no será totalmente compatible". |  {{< emoticons/tick >}} |                          |
|  "El documento contiene glifos .notdef. Esto viola los requisitos de cumplimiento. El documento resultante no será totalmente compatible". |  {{< emoticons/tick >}} |  {{< emoticons/tick >}} |
