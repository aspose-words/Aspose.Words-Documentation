---
title: Advertencias Al guardar en PDF/A y PDF/UA
second_title: Aspose.Words para C++
articleTitle: Advertencias sobre problemas de Accesibilidad Al Guardar en PDF/A y PDF/UA
linktitle: Advertencias sobre problemas de Accesibilidad Al Guardar en PDF/A y PDF/UA
description: "PDF/A y PDF/UA imponen requisitos de accesibilidad relacionados con el contenido del documento. Cuando se guarda en PDF/A o PDF/UA en C++ y el problema infringe el cumplimiento, se emite una advertencia."
type: docs
weight: 39
url: /es/cpp/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Los formatos PDF/A y PDF/UA imponen una serie de requisitos de accesibilidad relacionados con el contenido del documento que no se pueden cumplir durante la conversión automática de Word a PDF. Estos requisitos se describen en el artículo anterior * " Trabajar con PDF/A o PDF/UA"*. Ahora se emiten advertencias para algunos de estos problemas.

Se emiten advertencias al guardar en uno de los formatos PDF/A o PDF/UA y el problema infringe el cumplimiento. Por ejemplo, la advertencia sobre la falta del título del documento se emitirá al guardar en PDF/UA y no se emitirá al guardar en PDF/A.

Todas las advertencias son de **WarningType.MinorFormattingLoss** y **WarningSource.Pdf**. Aquí hay una lista de los nuevos valores de advertencia de descripción:

| Descripción valor de advertencia | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Falta el título del documento. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible." || {{< emoticons/tick >}} |
| "El documento contiene encabezados cuyos niveles no son consecutivos. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible." || {{< emoticons/tick >}} |
| "Hay formas sin texto alternativo en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Hay tablas sin texto alternativo en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Hay hipervínculos sin texto alternativo en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible." || {{< emoticons/tick >}} |
| "Hay tablas sin fila/columna de encabezado en el documento. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible." || {{< emoticons/tick >}} |
| "El documento contiene caracteres Unicode PUA. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible." | {{< emoticons/tick >}} ||
| "El documento contiene .glifos notdef. Esto viola los requisitos de cumplimiento. El documento de salida no será totalmente compatible." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
