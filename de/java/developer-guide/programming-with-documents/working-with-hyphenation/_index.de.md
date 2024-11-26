---
title: Arbeiten mit Silbentrennung in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Silbentrennung
linktitle: Arbeiten mit Silbentrennung
description: "Verwenden Sie Silbentrennung für eine kompaktere Anordnung von Text. Es bietet erweiterte Algorithmen für die Arbeit mit Silbentrennungswörterbüchern und verwendet OpenOffice -Wörterbücher mit Java."
type: docs
weight: 220
url: /de/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Manchmal ist es notwendig, Silbentrennung für eine kompaktere Anordnung von Text in einem Dokument zu verwenden. Gleichzeitig ist es wichtig zu verstehen, dass die Besonderheiten der Worttrennung für jede Sprache unterschiedlich sein können.

Gegenwärtig wird die Silbentrennung nicht mehr so oft verwendet wie früher, insbesondere in englischen Texten. Dennoch kann die Verwendung dieser Funktion schwerwiegende Auswirkungen auf Benutzerdokumente haben – die Silbentrennung wirkt sich auf das Layout und damit auf das Erscheinungsbild der Ausgabedateien aus, beispielsweise im Format PDF.

Zur korrekten Aufteilung von Wörtern werden sprachspezifische Silbentrennungswörterbücher verwendet. Aspose.Words verwendet erweiterte Algorithmen, um mit solchen Wörterbüchern zu arbeiten, und ermöglicht es Ihnen, dieselbe Silbentrennung wie in Microsoft Word zu erhalten.

## Silbentrennungswörterbücher

Da verschiedene Sprachen unterschiedliche Normen und Regeln für die Worttrennung verwenden, ist die optimale Lösung für die korrekte Silbentrennung die Verwendung spezieller Wörterbücher. Aspose.Words verwendet OpenOffice Wörterbücher.

Für die Rechtschreibprüfung verwendet OpenOffice die [Hunspell bibliothek](https://hunspell.github.io/), was eine Verallgemeinerung des Silbentrennungsalgorithmus von TeX ist. Dieser Algorithmus ermöglicht die automatische nicht standardmäßige Silbentrennung unter Verwendung konkurrierender Standard- und benutzerdefinierter Silbentrennungsmuster. Hunspell verwendet die [Bindestrich](https://github.com/hunspell/hyphen) zur Silbentrennung.

{{% alert color="primary" %}}

Silbentrennungswörterbücher können aus dem entnommen werden [LibreOffice Wörterbücher GitHub](https://github.com/LibreOffice/dictionaries). Beispielsweise, [de-US Silberrennwörterbuch](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Da Microsoft Word andere Wörterbücher als OpenOffice-Wörterbücher verwendet, um die Silbentrennung durchzuführen, kann die Silbentrennung einiger Wörter, die durch OpenOffice-Wörterbücher definiert sind, von der Silbentrennung von Microsoft Word abweichen. Aus diesem Grund müssen wir Kunden manchmal raten, ihren Wörterbüchern die erforderlichen Muster hinzuzufügen, um die Silbentrennung bestimmter Wörter zu korrigieren.

{{% /alert %}}

## Silbentrennungsalgorithmus

Aspose.Words implementiert [der TEX-Silbertrennungsalgorithmus](https://github.com/hunspell/hyphen/blob/master/README.hyphen) und kann OpenOffice Silbentrennungswörterbücher wiederverwenden.

Die folgenden Merkmale von Aspose.Words -Algorithmen sollten berücksichtigt werden:

* Parameter für die Silbentrennungsentfernung (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) die im Silbentrennungswörterbuch angegebenen Werte werden ignoriert. Aspose.Words verwendet je nach Dokumentkompatibilitätsmodus einen eigenen Satz von Entfernungsparametern.
* Der Silbentrennungsalgorithmus in Aspose.Words unterstützt [zusammengesetzte Silberrennen](https://github.com/hunspell/hyphen/blob/master/README.compound). Aspose.Words teilt jedoch Zeichenfolgen, die gemischte alphabetische und nicht alphabetische Zeichen enthalten, in nur alphabetische Teile (Wörter) auf und trennt sie getrennt voneinander.
  Beachten Sie, dass die Microsoft Word -Logik der Silbentrennung von zusammengesetzten Wörtern vom Dokumentkompatibilitätsmodus abhängt.
* Der Silbentrennungsalgorithmus in Aspose.Words implementiert das nicht [nicht standardmäßige Silbertrennung](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Nicht standardmäßige Muster werden ignoriert.

## Silbentrennungswörterbücher laden

Um die Silbentrennungsfunktion zu verwenden, registrieren Sie zuerst ein Silbentrennungswörterbuch.Das folgende Codebeispiel zeigt, wie Silbentrennungswörterbücher für die angegebenen Sprachen aus einer Datei geladen werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Silbentrennungswörterbücher für die angegebene Sprache aus einem Stream geladen werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Alternativ zur Vorregistrierung von Trennwörterbüchern ist es möglich, nur benötigte Trennwörterbücher "auf Anfrage" zu registrieren. Implementieren Sie dazu die Schnittstelle [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) und verwenden Sie den statischen Callback [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Das folgende Codebeispiel zeigt, wie die **IHyphenationCallback**-Schnittstelle implementiert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Auswirkung der Silbentrennung auf das Layout

Beim Aufteilen von Text in Zeilen überprüft Aspose.Words jedes Wort, ob es vollständig in die aktuelle Zeile passt. Wenn ein anderes Wort zu lang ist, um an das Zeilenende zu passen, verschiebt Aspose.Words es standardmäßig an den Anfang der nächsten Zeile, anstatt es zu trennen.

Die Silbentrennungsfunktion kann jedoch in Aspose.Words verwendet werden, um Bindestriche in Wörter einzufügen, um Lücken im Blocksatz zu beseitigen oder um eine gleichmäßige Zeilenlänge in schmalen Spalten beizubehalten. Dies kann sich natürlich auf die Anzahl der Zeilen und damit auf die Anzahl der Seiten auswirken. Mit anderen Worten, die Verwendung der Silbentrennungsfunktion wirkt sich auf das Dokumentlayout aus.

## Silbentrennung und Blocksatz (H&J)

Microsoft Word verfügt über eine komplexe Logik zum Auswählen eines Haltepunkts, wenn Text ausgerichtet und Silbentrennung aktiviert ist. Kurz gesagt, Microsoft Word kann es vorziehen, Leerzeichen zu verkleinern oder zu dehnen, um eine Zeilentrennung zu vermeiden. Höchstwahrscheinlich basiert diese Logik auf [Knuths Artikel](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementiert einen eigenen H & J-Algorithmus, der das gleiche Ergebnis wie Microsoft Word liefert und identische Zeilenumbrüche im Ausgabedokument bereitstellt.

## Siehe auch

* [Bindestrich - Silbertrennungsbibliothek](https://github.com/hunspell/hyphen/blob/master/README)
* [Nicht standardmäßige Silbertrennung](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatische nicht standardmäßige Silbertrennung im Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
