---
title: Arbeiten mit Silbentrennung in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Silbentrennung
linktitle: Arbeiten mit Silbentrennung
description: "Verwenden Sie die Silbentrennung für eine kompaktere Anordnung des Textes mit C#. Es bietet erweiterte Algorithmen für die Arbeit mit Silbentrennungswörterbüchern und verwendet OpenOffice-Wörterbücher."
type: docs
weight: 220
url: /de/net/working-with-hyphenation/
---

Manchmal ist es notwendig, die Silbentrennung zu verwenden, um den Text in einem Dokument kompakter anzuordnen. Gleichzeitig ist es wichtig zu verstehen, dass die Besonderheiten der Worttrennung je nach Sprache unterschiedlich sein können.

Heutzutage wird die Silbentrennung nicht mehr so häufig verwendet wie früher, insbesondere in englischen Texten. Dennoch kann die Verwendung dieser Funktion schwerwiegende Auswirkungen auf Benutzerdokumente haben – die Silbentrennung beeinträchtigt das Layout und damit das Erscheinungsbild der Ausgabedateien, beispielsweise im PDF-Format.

Zur korrekten Aufteilung von Wörtern werden sprachspezifische Silbentrennungswörterbücher verwendet. Aspose.Words verwendet fortschrittliche Algorithmen für die Arbeit mit solchen Wörterbüchern und ermöglicht Ihnen die gleiche Silbentrennung wie in Microsoft Word.

## Silbentrennungswörterbücher

Da verschiedene Sprachen unterschiedliche Normen und Regeln für die Silbentrennung von Wörtern verwenden, ist die Verwendung spezieller Wörterbücher die optimale Lösung für eine korrekte Silbentrennung. Aspose.Words verwendet OpenOffice-Wörterbücher.

Für die Rechtschreibprüfung verwendet OpenOffice [Hunspell-Bibliothek](https://hunspell.github.io/), eine Verallgemeinerung des Silbentrennungsalgorithmus von TeX. Dieser Algorithmus ermöglicht eine automatische, nicht standardmäßige Silbentrennung unter Verwendung konkurrierender Standard- und benutzerdefinierter Silbentrennungsmuster. Hunspell verwendet [Bindestrich](https://github.com/hunspell/hyphen) zur Silbentrennung.

{{% alert color="primary" %}}

Silbentrennungswörterbücher können dem [LibreOffice-Wörterbücher GitHub](https://github.com/LibreOffice/dictionaries) entnommen werden. Zum Beispiel [en-US Silbentrennungswörterbuch](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Da Microsoft Word für die Silbentrennung andere Wörterbücher als OpenOffice-Wörterbücher verwendet, kann die Silbentrennung einiger in OpenOffice-Wörterbüchern definierter Wörter von der Microsoft Word-Silbentrennung abweichen. Aus diesem Grund müssen wir unseren Kunden manchmal raten, die erforderlichen Muster zu ihren Wörterbüchern hinzuzufügen, um die Silbentrennung bestimmter Wörter zu korrigieren.

{{% /alert %}}

## Silbentrennungsalgorithmus

Aspose.Words implementiert [der TeX-Silbentrennungsalgorithmus](https://github.com/hunspell/hyphen/blob/master/README.hyphen) und kann OpenOffice-Silbentrennungswörterbücher wiederverwenden.

Die folgenden Merkmale von Aspose.Words-Algorithmen sollten berücksichtigt werden:

* Im Silbentrennungswörterbuch angegebene Silbentrennungsabstandsparameter (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) werden ignoriert. Aspose.Words verwendet je nach Dokumentkompatibilitätsmodus einen eigenen Satz von Abstandsparametern.
* Der Silbentrennungsalgorithmus in Aspose.Words unterstützt [zusammengesetzte Silbentrennung](https://github.com/hunspell/hyphen/blob/master/README.compound). Aspose.Words teilt jedoch Zeichenfolgen, die gemischte alphabetische und nicht-alphabetische Zeichen enthalten, in nur alphabetische Teile (Wörter) auf und trennt sie separat.
  Beachten Sie, dass die Microsoft Word-Logik der Silbentrennung zusammengesetzter Wörter vom Dokumentkompatibilitätsmodus abhängt.
* Der Silbentrennungsalgorithmus in Aspose.Words implementiert [nicht standardmäßige Silbentrennung](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf) nicht. Nicht standardmäßige Muster werden ignoriert.

## Silbentrennungswörterbücher werden geladen

Um die Silbentrennungsfunktion zu verwenden, registrieren Sie zunächst ein Silbentrennungswörterbuch. Das folgende Codebeispiel zeigt, wie Sie Silbentrennungswörterbücher für die angegebenen Sprachen aus einer Datei laden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Silbentrennungswörterbücher für die angegebene Sprache aus einem Stream geladen werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) herunterladen.

{{% /alert %}}

Alternativ zur Vorregistrierung von Silbentrennungswörterbüchern ist es möglich, nur erforderliche Silbentrennungswörterbücher "auf Anfrage" zu registrieren. Um dies zu erreichen, implementieren Sie die [IHyphenationCallback](https://reference.aspose.com/words/de/net/aspose.words/ihyphenationcallback/)-Schnittstelle und verwenden Sie den statischen Rückruf [Callback](https://reference.aspose.com/words/de/net/aspose.words/hyphenation/callback/).

Das folgende Codebeispiel zeigt, wie die **IHyphenationCallback**-Schnittstelle implementiert wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-CustomHyphenation.cs" >}}

## Einfluss der Silbentrennung auf das Layout

Beim Aufteilen von Text in Zeilen prüft Aspose.Words für jedes Wort, ob es vollständig in die aktuelle Zeile passt. Wenn ein anderes Wort zu lang ist, um am Ende der Zeile zu passen, verschiebt Aspose.Words es standardmäßig an den Anfang der nächsten Zeile, anstatt es zu trennen.

Allerdings kann die Silbentrennungsfunktion in Aspose.Words verwendet werden, um Bindestriche in Wörter einzufügen, um Lücken im Blocksatz zu schließen oder um eine gleichmäßige Zeilenlänge in schmalen Spalten beizubehalten. Dies kann sich natürlich auf die Anzahl der Zeilen und damit auf die Anzahl der Seiten auswirken. Mit anderen Worten: Die Verwendung der Silbentrennungsfunktion wirkt sich auf das Dokumentlayout aus.

## Silbentrennung und Blocksatz (H&amp;J)

Microsoft Word verfügt über eine komplexe Logik zur Auswahl eines Haltepunkts, wenn der Text ausgerichtet und die Silbentrennung aktiviert ist. Kurz gesagt: Microsoft Word zieht es möglicherweise vor, Leerzeichen zu verkleinern oder zu strecken, um eine Zeilentrennung zu vermeiden. Höchstwahrscheinlich basiert diese Logik auf [Knuths Artikel](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementiert seinen eigenen H&amp;J-Algorithmus, der das gleiche Ergebnis wie Microsoft Word liefert und für identische Zeilenumbrüche im Ausgabedokument sorgt.

## Siehe auch

* [Hyphen – Silbentrennungsbibliothek](https://github.com/hunspell/hyphen/blob/master/README)
* [Nicht standardmäßige Silbentrennung](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatische, nicht standardmäßige Silbentrennung in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
