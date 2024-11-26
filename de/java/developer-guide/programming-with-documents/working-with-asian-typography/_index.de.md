---
title: Asiatische Typografie in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit asiatischer Typografie
linktitle: Arbeiten mit asiatischer Typografie
description: "Arbeiten Sie mit asiatischer Typografie mit Java. Passen Sie den Abstand zwischen asiatischem und lateinischem Text in Java an."
type: docs
weight: 240
url: /de/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

Asiatische Typografie ist eine Reihe von Optionen für Textabsätze in Dokumenten, die in asiatischen Sprachen geschrieben sind.

Aspose.Words unterstützt asiatische Typografie mithilfe der Klasse [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) und einiger ihrer Eigenschaften.

## Abstand zwischen asiatischem und lateinischem Text oder Zahlen automatisch anpassen

Wenn Sie eine Vorlage mit ostasiatischem und lateinischem Text entwerfen und die Darstellung Ihrer Formularvorlage verbessern möchten, indem Sie die Abstände zwischen beiden Texttypen steuern, können Sie Ihre Formularvorlage so konfigurieren, dass die Abstände zwischen diesen beiden Texttypen automatisch angepasst werden. Um dies zu erreichen, können Sie die Eigenschaften [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) und [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) der Klasse `ParagraphFormat` verwenden.

Das folgende Codebeispiel zeigt, wie die Eigenschaften **AddSpaceBetweenFarEastAndAlpha** und **AddSpaceBetweenFarEastAndDigit** verwendet werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Optionen für Zeilenumbrüche festlegen

Die Registerkarte asiatische Typografie des Dialogfelds Absatzeigenschaften in Microsoft Word enthält die Gruppe Zeilenumbruch. Die Optionen dieser Gruppe können mit der [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) eigenschaften der Klasse **ParagraphFormat**.

Das folgende Codebeispiel zeigt, wie diese Eigenschaften verwendet werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Asiatische Absatzabstände und Einzüge ändern

Das folgende Codebeispiel zeigt, wie asiatische Absatzabstände und Einzüge geändert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
