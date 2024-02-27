---
title: Tipografía asiática en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con tipografía asiática
linktitle: Trabajar con tipografía asiática
description: "Trabaja con tipografía asiática usando C#. Ajuste el espacio entre el texto asiático y latino en C#."
type: docs
weight: 240
url: /es/net/working-with-asian-typography/
---

La tipografía asiática es un conjunto de opciones para párrafos de texto en documentos escritos en idiomas asiáticos.

Aspose.Words admite tipografía asiática utilizando la clase [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) y algunas de sus propiedades.

## Ajustar automáticamente el espacio entre texto o números asiáticos y latinos

Si está diseñando una plantilla con texto de Asia oriental y latín y desea mejorar la apariencia de su plantilla de formulario controlando los espacios entre ambos tipos de texto, puede configurar su plantilla de formulario para ajustar automáticamente los espacios entre estos dos tipos de texto.. Para lograr esto, puede utilizar las propiedades [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) y [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) de la clase `ParagraphFormat`.

El siguiente ejemplo de código muestra cómo utilizar las propiedades **AddSpaceBetweenFarEastAndAlpha** y **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Establecer opciones de salto de línea

La pestaña Tipografía asiática del cuadro de diálogo de propiedades de párrafo en Microsoft Word tiene un grupo de salto de línea. Las opciones de este grupo se pueden configurar utilizando las propiedades [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) de la clase **ParagraphFormat**.

El siguiente ejemplo de código muestra cómo utilizar estas propiedades:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
