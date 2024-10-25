---
title: Asiatische Typografie in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit asiatischer Typografie
linktitle: Arbeiten mit asiatischer Typografie
description: "Arbeiten Sie mit asiatischer Typografie mit C++. Passen Sie den Abstand zwischen asiatischem und lateinischem Text in C++ an."
type: docs
weight: 240
url: /de/cpp/working-with-asian-typography/
---

Asiatische Typografie ist eine Reihe von Optionen für Textabsätze in Dokumenten, die in asiatischen Sprachen geschrieben sind.

Aspose.Words unterstützt asiatische Typografie mithilfe der Klasse [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) und einiger ihrer Eigenschaften.

## Abstand zwischen asiatischem und lateinischem Text oder Zahlen automatisch anpassen

Wenn Sie eine Vorlage mit ostasiatischem und lateinischem Text entwerfen und die Darstellung Ihrer Formularvorlage verbessern möchten, indem Sie die Abstände zwischen beiden Texttypen steuern, können Sie Ihre Formularvorlage so konfigurieren, dass die Abstände zwischen diesen beiden Texttypen automatisch angepasst werden. Um dies zu erreichen, können Sie die Eigenschaften [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) und [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) der Klasse `ParagraphFormat` verwenden.

Das folgende Codebeispiel zeigt, wie die Eigenschaften **AddSpaceBetweenFarEastAndAlpha** und **AddSpaceBetweenFarEastAndDigit** verwendet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Optionen für Zeilenumbrüche festlegen

Die Registerkarte asiatische Typografie des Dialogfelds Absatzeigenschaften in Microsoft Word enthält die Gruppe Zeilenumbruch. Die Optionen dieser Gruppe können mit der [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) eigenschaften der Klasse **ParagraphFormat**.

Das folgende Codebeispiel zeigt, wie diese Eigenschaften verwendet werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
