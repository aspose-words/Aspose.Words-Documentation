---
title: Arbeiten mit Schriftarten in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Schriftarten
linktitle: Arbeiten mit Schriftarten
description: "Schriftformatierung in Details mit C++."
type: docs
weight: 230
url: /de/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Eine Schriftart ist eine Reihe von Zeichen mit einer bestimmten Größe, Farbe und einem bestimmten Design. Mit Aspose.Words können Sie mit Schriftarten arbeiten, die den [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/)-Namespace und die [Font](https://reference.aspose.com/words/cpp/aspose.words/font/)-Klasse verwenden.

## Schriftformatierung

Die aktuelle Schriftformatierung wird durch das **Font**-Objekt dargestellt, das von der Eigenschaft [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) zurückgegeben wird. Die Klasse **Font** enthält eine Vielzahl von Schrifteigenschaften, die die in Microsoft Word verfügbaren Eigenschaften replizieren.

Das folgende Codebeispiel zeigt, wie Sie die Schriftformatierung festlegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Fülleigenschaften sind jetzt auch für Schriftarten verfügbar, um die Füllformatierung von Text festzulegen. Es bietet die Möglichkeit, beispielsweise die Vordergrundfarbe oder die Transparenz der Textfüllung zu ändern.

## Zeilenabstand für Schriftarten abrufen

Der Zeilenabstand für Schriftarten ist der vertikale Abstand zwischen den Grundlinien zweier aufeinanderfolgender Textzeilen. Der Zeilenabstand umfasst also den Leerraum zwischen den Zeilen zusammen mit der Höhe des Zeichens selbst.

Die Eigenschaft [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) wurde in die Klasse **Font** eingeführt, um diesen Wert zu erhalten, wie im folgenden Beispiel gezeigt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Schriftart EmphasisMark

Einige ostasiatische Sprachen verwenden ein besonderes Betonungszeichen, um eine Betonung anzuzeigen. Die Klasse **Font** stellt die Eigenschaft [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) bereit, um die `EmphasisMark`-Aufzählungswerte abzurufen oder festzulegen, die beim Formatieren angewendet werden sollen.

Das folgende Codebeispiel zeigt, wie die Eigenschaft **EphasisMark** festgelegt wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
