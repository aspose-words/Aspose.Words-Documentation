---
title: Asiatische Typografie Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit asiatischer Typografie
linktitle: Arbeiten mit asiatischer Typografie
description: "Arbeiten mit asiatischer Typografie Java. Platz zwischen asiatischem und lateinischem Text anpassen Java."
type: docs
weight: 240
url: /de/java/working-with-asian-typography/
---

Asian Typography ist eine Reihe von Optionen für Textabsätze in Dokumenten geschrieben in asiatischen Sprachen.

Aspose.Words unterstützt asiatische Typografie mit [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) Klasse und einige seiner Eigenschaften.

## Automatische Anpassung des Raumes zwischen asiatischem und lateinischem Text oder Zahlen

Wenn Sie eine Vorlage mit ostasiatischen und lateinischen Text entwerfen und das Erscheinungsbild Ihrer Formularvorlage verbessern möchten, indem Sie die Leerzeichen zwischen beiden Textarten steuern, können Sie Ihre Formularvorlage so konfigurieren, dass Sie die Leerzeichen zwischen diesen beiden Textarten automatisch anpassen. Um dies zu erreichen, können Sie verwenden [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) und [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) Eigenschaften der `ParagraphFormat` Klasse.

Das folgende Codebeispiel zeigt, wie man **AddSpaceBetweenFarEastAndAlpha** und **AddSpaceBetweenFarEastAndDigit** Eigenschaften:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Line Break Optionen einstellen

Die asiatische Typografie Registerkarte der Absatzeigenschaften Dialogfeld in Microsoft Word hat Line Break-Gruppe. Die Optionen dieser Gruppe können über die [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) Eigenschaften der **ParagraphFormat** Klasse.

Das folgende Codebeispiel zeigt, wie man diese Eigenschaften verwendet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Ändern asiatische Absatz Spacing und Eindrücke

Das folgende Codebeispiel zeigt, wie man den asiatischen Absatzabstand und die Eindrücke ändert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}