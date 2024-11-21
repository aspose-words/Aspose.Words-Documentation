---
title: Tipografía asiática en Python
second_title: Aspose.Words para Python
articleTitle: Trabajar con tipografía asiática
linktitle: Trabajar con tipografía asiática
description: "Trabaja con tipografía asiática usando Python. Ajuste el espacio entre el texto asiático y latino en Python."
type: docs
weight: 240
url: /es/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

La tipografía asiática es un conjunto de opciones para párrafos de texto en documentos escritos en idiomas asiáticos.

Aspose.Words admite tipografía asiática utilizando la clase [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) y algunas de sus propiedades.

## Ajustar automáticamente el espacio entre texto o números asiáticos y latinos

Si está diseñando una plantilla con texto latino y de Asia oriental y desea mejorar la apariencia de su plantilla de formulario controlando los espacios entre ambos tipos de texto, puede configurar su plantilla de formulario para ajustar automáticamente los espacios entre estos dos tipos de texto.. Para lograr esto, puede utilizar las propiedades [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) y [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) de la clase `ParagraphFormat`.

El siguiente ejemplo de código muestra cómo utilizar las propiedades **AddSpaceBetweenFarEastAndAlpha** y **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Establecer opciones de salto de línea

La pestaña Tipografía asiática del cuadro de diálogo de propiedades de párrafo en Microsoft Word tiene un grupo de salto de línea. Las opciones de este grupo se pueden configurar utilizando las propiedades [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) de la clase **ParagraphFormat**.

El siguiente ejemplo de código muestra cómo utilizar estas propiedades:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
