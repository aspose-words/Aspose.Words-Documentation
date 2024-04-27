---
title: Arbeiten mit Hyphenation in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Hyphenation
linktitle: Arbeiten mit Hyphenation
description: "Verwenden Sie Bindestrich für eine kompaktere Textanordnung. Es bietet fortschrittliche Algorithmen, um mit Hyphenation Wörterbücher zu arbeiten, verwendet OpenOffice Wörterbücher mit Java."
type: docs
weight: 220
url: /de/java/working-with-hyphenation/
---

Manchmal ist es notwendig, die Bindestriche für eine kompaktere Anordnung von Texten in einem Dokument zu verwenden. Gleichzeitig ist es wichtig zu verstehen, dass die Spezifik der Worthyphenation für jede Sprache unterschiedlich sein kann.

Zur Zeit wird die Hyphenation nicht so oft wie früher verwendet, insbesondere in englischen Texten. Dennoch kann die Verwendung dieser Funktion schwerwiegende Auswirkungen auf die Benutzerdokumente haben – hyphenation beeinflusst das Layout und damit das Auftreten der Ausgabedateien, beispielsweise im PDF-Format.

Zur korrekten Spaltung von Wörtern werden sprachspezifische Hyphenationswörterwörter verwendet. Aspose.Words verwendet fortschrittliche Algorithmen, um mit solchen Wörterbüchern zu arbeiten und ermöglicht es Ihnen, die gleiche hyphenation wie in Microsoft Word.

## Hyphening Dictionaries

Da verschiedene Sprachen unterschiedliche Normen und Regeln für Worthyphenation verwenden, ist die optimale Lösung für korrekte Bindestriche spezielle Wörterbücher zu verwenden. Aspose.Words verwendet OpenOffice Wörterbücher.

Für die Rechtschreibprüfung verwendet OpenOffice die [Hunspell Bibliothek](https://hunspell.github.io/), die eine Verallgemeinerung des Hyphenationsalgorithmus von TeX ist. Dieser Algorithmus ermöglicht eine automatische nicht-Standard-Hyphenation mit konkurrierenden Standard- und benutzerdefinierten Bindemustern. Hunspell Verwendung [Hyphen](https://github.com/hunspell/hyphen) zum Binden.

{{% alert color="primary" %}}

Hyphenation Wörterbücher können aus dem [LibreOffice ) GitHub](https://github.com/LibreOffice/dictionaries). Zum Beispiel [en-US Wörterbuch](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Wie Microsoft Word verwendet andere Wörterbücher als OpenOffice Wörterbücher, um zu hyphenieren, die hyphenation von einigen Wörtern definiert durch OpenOffice Wörterbücher kann von der Microsoft Word hyphenation. Aus diesem Grund müssen wir manchmal den Kunden raten, die nötigen Muster zu ihren Wörterbüchern hinzuzufügen, um die Binde von bestimmten Wörtern zu beheben.

{{% /alert %}}

## Hyphening Algorithm

Aspose.Words Umsetzungen [Der TeX-Hyphenationsalgorithmus](https://github.com/hunspell/hyphen/blob/master/README.hyphen) und kann OpenOffice hyphenation Wörterbücher wiederverwenden.

Die folgenden Merkmale Aspose.Words Algorithmen sollten berücksichtigt werden:

* Hyphenationsabstandsparameter (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) im Hyphenationswörterbuch angegeben werden ignoriert. Aspose.Words verwendet je nach Dokumentkompatibilitätsmodus eine eigene Anzahl von Entfernungsparametern.
* Der Hyphenationsalgorithmus Aspose.Words Stützen [Veröffentlichungen](https://github.com/hunspell/hyphen/blob/master/README.compound). Allerdings Aspose.Words spaltet Zeichensequenzen mit gemischten alphabetischen und nicht-alphabetischen Zeichen in alphabetisch-nur Teile (Worte) und hypheniert sie getrennt.
  Anmerkung: Microsoft Word Die Logik des Bindestrichs von Verbindungswörtern hängt vom Dokumentkompatibilitätsmodus ab.
* Der Hyphenationsalgorithmus Aspose.Words nicht implementiert [Nicht-Standardhyphen](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Nichtstandardisierte Muster werden ignoriert.

## Beladen von Hyphenation Dictionaries

Um die Bindefunktion zu verwenden, registrieren Sie zunächst ein Bindewörterbuch. Das folgende Codebeispiel zeigt, wie man Hyphenationswörter für die angegebenen Sprachen aus einer Datei lädt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man Hyphenationswörter für die angegebene Sprache aus einem Stream lädt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Alternativ zu den Vorregistrierungs-Hyphenationswörtern ist es möglich, nur benötigte Hyphenationswörter "auf Anfrage" zu registrieren. Um dies zu erreichen, die [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) Schnittstelle und Nutzung des statischen Rückrufs [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Das folgende Codebeispiel zeigt, wie man die **IHyphenationCallback** Schnittstelle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Auswirkungen von Hyphenation auf das Layout

Wenn Sie Text in Zeilen brechen, Aspose.Words prüft jedes Wort, ob es vollständig in die aktuelle Zeile passt. Wenn ein anderes Wort zu lang ist, um am Ende der Zeile zu passen, standardmäßig Aspose.Words bewegt es zum Anfang der nächsten Zeile, anstatt sie zu hyphenieren.

Allerdings kann die Bindefunktion in Aspose.Words Bindestriche in Wörter einfügen, um Lücken in gerechtfertigtem Text zu beseitigen oder eine gleichmäßige Linienlänge in engen Spalten zu halten. Dies kann natürlich die Anzahl der Zeilen und damit die Anzahl der Seiten beeinflussen. Mit anderen Worten beeinflusst die Verwendung der Bindefunktion das Dokumentenlayout.

## Hyphenation und Rechtfertigung (H&J)

Microsoft Word hat eine komplexe Logik, um einen Breakpoint zu wählen, wenn Text gerechtfertigt ist und die Binde aktiviert ist. Kurz gesagt, Microsoft Word kann es vorziehen, Räume zu schrumpfen oder zu strecken, um eine Linienhyphenation zu vermeiden. Wahrscheinlich basiert diese Logik auf [Knuths Artikel](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words einen eigenen H&J-Algorithmus implementiert, der dasselbe Ergebnis wie Microsoft Word und liefert eine identische Leitungsbruch im Ausgabedokument.

## Siehe auch

* [Hyphen – hyphenation library](https://github.com/hunspell/hyphen/blob/master/README)
* [Nicht-Standard](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatische Nicht-Standard-Hyphenation im Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
