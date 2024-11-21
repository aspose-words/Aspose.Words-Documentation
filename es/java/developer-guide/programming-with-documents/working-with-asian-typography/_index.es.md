---
title: Tipografía asiática en Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con la tipografía asiática
linktitle: Trabajar con la tipografía asiática
description: "Trabajo con tipografía asiática usando Java. Ajuste del espacio entre el texto asiático y el latín Java."
type: docs
weight: 240
url: /es/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

La tipografía asiática es un conjunto de opciones para los párrafos de texto en los documentos escritos en idiomas asiáticos.

Aspose.Words soporta la tipografía asiática utilizando [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) clase y algunas de sus propiedades.

## Ajuste automático del espacio entre textos asiáticos y latinos o números

Si está diseñando una plantilla con texto tanto de Asia oriental como latín y desea mejorar la apariencia de su plantilla de formulario controlando los espacios entre ambos tipos de texto, puede configurar su plantilla de formulario para ajustar automáticamente los espacios entre estos dos tipos de texto. Para lograr esto, se puede utilizar [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) y [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) propiedades de la `ParagraphFormat` clase.

El siguiente ejemplo de código muestra cómo utilizar **AddSpaceBetweenFarEastAndAlpha** y **AddSpaceBetweenFarEastAndDigit** propiedades:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Opciones de ruptura de línea

La ficha asiática de tipografía del cuadro de diálogo de propiedades del párrafo Microsoft Word tiene un grupo de ruptura de línea. Las opciones de este grupo se pueden configurar utilizando [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) propiedades de la **ParagraphFormat** clase.

El siguiente ejemplo de código muestra cómo utilizar estas propiedades:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Cambio de párrafo asiático

El siguiente ejemplo de código muestra cómo cambiar el espaciamiento de los párrafos de Asia e indents:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
