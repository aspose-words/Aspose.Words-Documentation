---
title: Tipografía asiática en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Tipografía Asiática
linktitle: Trabajar con Tipografía Asiática
description: "Trabaja con tipografía asiática usando Java. Ajuste el espacio entre el texto asiático y latino en Java."
type: docs
weight: 240
url: /es/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

La tipografía asiática es un conjunto de opciones para párrafos de texto en documentos escritos en idiomas asiáticos.

Aspose.Words admite tipografía asiática utilizando la clase [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) y algunas de sus propiedades.

## Ajusta automáticamente el Espacio entre Texto o Números Asiáticos y Latinos

Si está diseñando una plantilla con texto de Asia Oriental y latín y desea mejorar la apariencia de su plantilla de formulario controlando los espacios entre ambos tipos de texto, puede configurar su plantilla de formulario para ajustar automáticamente los espacios entre estos dos tipos de texto. Para lograr esto, puede usar las propiedades [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) y [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) de la clase `ParagraphFormat`.

El siguiente ejemplo de código muestra cómo usar las propiedades **AddSpaceBetweenFarEastAndAlpha** y **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Establecer Opciones de Salto de Línea

La pestaña Tipografía asiática del cuadro de diálogo propiedades de párrafo en Microsoft Word tiene un grupo de saltos de línea. Las opciones de este grupo se pueden configurar usando el [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) propiedades de la clase **ParagraphFormat**.

El siguiente ejemplo de código muestra cómo usar estas propiedades:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Cambiar el Espaciado y las Sangrías de los Párrafos Asiáticos

El siguiente ejemplo de código muestra cómo cambiar el espaciado y las sangrías de los párrafos asiáticos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
