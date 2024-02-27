---
title: Arbeiten mit Schriftarten in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Schriftarten
linktitle: Arbeiten mit Schriftarten
description: "Passen Sie die Schriftarteinstellungen mit Python an."
type: docs
weight: 230
url: /de/python-net/working-with-fonts/
---

Eine Schriftart ist eine Reihe von Zeichen mit einer bestimmten Größe, Farbe und einem bestimmten Design. Mit Aspose.Words können Sie mithilfe des [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/)-Moduls und der [Font](https://reference.aspose.com/words/python-net/aspose.words/font/)-Klasse mit Schriftarten arbeiten.

## Schriftartformatierung

Die aktuelle Schriftartformatierung wird durch das **Font**-Objekt dargestellt, das von der [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/)-Eigenschaft zurückgegeben wird. Die **Font**-Klasse enthält eine Vielzahl von Schriftarteigenschaften und repliziert die in Microsoft Word verfügbaren Schriftarten.

Das folgende Codebeispiel zeigt, wie Sie die Schriftartformatierung festlegen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Fülleigenschaften sind jetzt auch für Schriftarten verfügbar, um die Füllformatierung von Text festzulegen. Es bietet die Möglichkeit, beispielsweise die Vordergrundfarbe oder die Transparenz der Textfüllung zu ändern.

## Ermitteln des Schriftzeilenabstands

Der Zeilenabstand der Schrift ist der vertikale Abstand zwischen den Grundlinien zweier aufeinanderfolgender Textzeilen. Der Zeilenabstand umfasst also den Leerraum zwischen den Zeilen sowie die Höhe des Zeichens selbst.

Die [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/)-Eigenschaft wurde in der [Font](https://reference.aspose.com/words/python-net/aspose.words/font/)-Klasse eingeführt, um diesen Wert zu erhalten, wie im folgenden Beispiel gezeigt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Schriftart EmphasisMark

Einige ostasiatische Sprachen verwenden ein besonderes Hervorhebungszeichen, um eine Betonung anzuzeigen. Die **Font**-Klasse stellt die [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/)-Eigenschaft bereit, um [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/)-Aufzählungswerte abzurufen oder festzulegen, die in der Formatierung angewendet werden sollen.

Das folgende Codebeispiel zeigt, wie die **EphasisMark**-Eigenschaft festgelegt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
