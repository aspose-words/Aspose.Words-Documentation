---
title: Trabajar con rangos en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con rangos
linktitle: Trabajar con rangos
description: "Trabajar con rangos en un documento usando Python."
type: docs
weight: 130
url: /es/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

En Aspose.Words, un [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) es una "ventana plana" en un modelo del documento que de otro modo sería similar a un árbol.

{{% /alert %}}

Si ha trabajado con Microsoft Word Automation, probablemente sepa que una de las principales herramientas para examinar y modificar el contenido de un documento es el objeto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) es como una "ventana" al contenido y formato del documento. Aspose.Words también tiene la clase [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) y está diseñado para verse y actuar de manera similar a **Range** en Microsoft Word. Aunque **Range** no puede cubrir una parte arbitraria de un documento y no tiene **Start** ni **End**, puede acceder al rango cubierto por cualquier nodo de documento, incluido el propio [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). En otras palabras, cada nodo tiene su propio rango. El objeto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) le permite acceder y modificar texto, marcadores y campos de formulario dentro del rango.

## Recuperar texto sin formato

Utilice la propiedad [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) para recuperar texto sin formato y sin formato del rango.

El siguiente ejemplo de código muestra cómo obtener un texto sin formato y sin formato de un rango:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Eliminar texto

Range permite eliminar todos los caracteres del rango llamando a [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/).

El siguiente ejemplo de código muestra cómo eliminar todos los caracteres de un rango:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}