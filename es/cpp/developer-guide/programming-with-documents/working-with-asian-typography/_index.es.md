---
title: Tipografía asiática en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Tipografía Asiática
linktitle: Trabajar con Tipografía Asiática
description: "Trabaja con tipografía asiática usando C++. Ajuste el espacio entre el texto asiático y latino en C++."
type: docs
weight: 240
url: /es/cpp/working-with-asian-typography/
---

La tipografía asiática es un conjunto de opciones para párrafos de texto en documentos escritos en idiomas asiáticos.

Aspose.Words admite tipografía asiática utilizando la clase [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) y algunas de sus propiedades.

## Ajusta automáticamente el Espacio entre Texto o Números Asiáticos y Latinos

Si está diseñando una plantilla con texto de Asia Oriental y latín y desea mejorar la apariencia de su plantilla de formulario controlando los espacios entre ambos tipos de texto, puede configurar su plantilla de formulario para ajustar automáticamente los espacios entre estos dos tipos de texto. Para lograr esto, puede usar las propiedades [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) y [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) de la clase `ParagraphFormat`.

El siguiente ejemplo de código muestra cómo usar las propiedades **AddSpaceBetweenFarEastAndAlpha** y **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Establecer Opciones de Salto de Línea

La pestaña Tipografía asiática del cuadro de diálogo propiedades de párrafo en Microsoft Word tiene un grupo de saltos de línea. Las opciones de este grupo se pueden configurar usando el [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) propiedades de la clase **ParagraphFormat**.

El siguiente ejemplo de código muestra cómo usar estas propiedades:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
