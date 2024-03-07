---
title: Arbeiten mit Schriftarten in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Schriftarten
linktitle: Arbeiten mit Schriftarten
description: "Einzelheiten zur Schriftartformatierung mit C#. Hervorhebungszeichen in C#. Ermitteln Sie den Zeilenabstand der Schriftarten mithilfe von C#."
type: docs
weight: 230
url: /de/net/working-with-fonts/
---

Eine Schriftart ist eine Reihe von Zeichen mit einer bestimmten Größe, Farbe und einem bestimmten Design. Mit Aspose.Words können Sie mit Schriftarten arbeiten, indem Sie den [Fonts](https://reference.aspose.com/words/de/net/aspose.words.fonts/)-Namespace und die [Font](https://reference.aspose.com/words/de/net/aspose.words/font/)-Klasse verwenden.

## Schriftartformatierung

Die aktuelle Schriftartformatierung wird durch das **Font**-Objekt dargestellt, das von der [Font](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/font/)-Eigenschaft zurückgegeben wird. Die **Font**-Klasse enthält eine Vielzahl von Schriftarteigenschaften und repliziert die in Microsoft Word verfügbaren Schriftarten.

Das folgende Codebeispiel zeigt, wie Sie die Schriftartformatierung festlegen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Für Schriftarten sind auch Fülleigenschaften verfügbar, um die Textfüllformatierung festzulegen. Dadurch ist es beispielsweise möglich, die Vordergrundfarbe oder die Transparenz der Textfüllung zu ändern.

## Ermitteln des Schriftzeilenabstands

Der Zeilenabstand der Schrift ist der vertikale Abstand zwischen den Grundlinien zweier aufeinanderfolgender Textzeilen. Der Zeilenabstand umfasst also den Leerraum zwischen den Zeilen sowie die Höhe des Zeichens selbst.

Um diesen Wert zu erhalten, wurde die [LineSpacing](https://reference.aspose.com/words/de/net/aspose.words/font/linespacing/)-Eigenschaft in die **Font**-Klasse eingeführt, wie im folgenden Beispiel gezeigt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Schriftart EmphasisMark

Einige ostasiatische Sprachen verwenden ein besonderes Hervorhebungszeichen, um eine Betonung anzuzeigen. Die **Font**-Klasse stellt die [EmphasisMark](https://reference.aspose.com/words/de/net/aspose.words/font/emphasismark/)-Eigenschaft bereit, um die [EmphasisMark](https://reference.aspose.com/words/de/net/aspose.words/emphasismark/)-Aufzählungswerte abzurufen oder festzulegen, die beim Formatieren angewendet werden sollen.

Das folgende Codebeispiel zeigt, wie die **EphasisMark**-Eigenschaft festgelegt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
