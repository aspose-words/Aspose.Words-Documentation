---
title: Einführung in die Felder in Java
second_title: Aspose.Words für Java
articleTitle: Einführung in die Felder
linktitle: Einführung in die Felder
description: "Felder Feature in Details, Feldcodes und Feldergebnisse erklärt in Aspose.Words für Java."
type: docs
weight: 10
url: /de/java/introduction-to-fields/
---

Aspose.Words ist eine Klassenbibliothek, die für die serverseitige Verarbeitung von Microsoft Word Dokumente und unterstützt Felder auf folgende Weise:

- alle Felder in einem Dokument werden während der offenen/save und Konvertierungen erhalten
- es ist möglich, die Ergebnisse der meisten Felder zu aktualisieren

In diesem Artikel erfahren wir mehr über die Feldstruktur, die in Aspose.Words, und Einzelheiten der Arbeit mit solchen Feldern.

## Feldstruktur

Ein Feld besteht aus:

- Ja. Die Feldstart- und Separatorknoten werden verwendet, um den Inhalt zu umfassen, der den Feldcode (normalerweise als Klartext) erstellt.
- Der Feldabscheider und das Feldende umfassen das Feldergebnis. Dies kann aus verschiedenen Arten von Inhalten bestehen, die von Textläufen bis zu Textabsätzen bis zu Tabellen reichen.
- Einige Felder haben möglicherweise keinen Separator, was bedeutet, dass der gesamte Inhalt den Feldcode erstellt.
- Ja. Der Feldcode definiert das Verhalten des Feldes und besteht aus der Feldkennung und oft anderen Parametern wie Feldname und Schalter.
- Ja. Das Feldergebnis enthält die jüngste Auswertung des Feldes. Dieser Wert wird im Feldergebnis gespeichert und wird dem Benutzer angezeigt. Einige Felder haben möglicherweise kein Feldergebnis so wird nichts im Dokument angezeigt. Ebenso können einige Felder noch nicht aktualisiert werden, daher wird auch kein Feldergebnis haben.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Der Inhalt, der den Feldcode erstellt, wird als [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) Knoten zwischen den [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) und [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Das Feldergebnis wird zwischen dem **FieldSeparator** und [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) Knoten und kann aus verschiedenen Arten von Inhalten bestehen. Normalerweise enthält das Feldergebnis nur Text aus Run-Knoten, es ist jedoch möglich, dass sich der FieldEnd-Knoten in einem völlig anderen Absatz befindet und so das Feldergebnis aus [Logische Ebenen von Nodes in einem Dokument](/words/de/java/logical-levels-of-nodes-in-a-document/) wie folgt: **Table** und **Paragraph** auch Knoten.

Hier eine Ansicht, wie ein Feld in Aspose.Words unter Verwendung des Beispiels "*DocumentExplorer"*, das auf [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Felder in Aspose.Words Document Object Model (DOM)

Wenn ein Dokument geladen wird <span notrans="<span notrans=" Aspose.Words"=""></span>,"> die Felder des Dokuments in die Aspose.Words Document Object Model als Set von separaten Komponenten (Nodes). Ein einzelnes Feld wird als Sammlung geladen **FieldStart**, **FieldSeparator** und **FieldEnd** Knoten zusammen mit dem Inhalt zwischen diesen Knoten. Wenn ein Feld kein Feldergebnis hat, dann gibt es keine **FieldSeparator** Knoten. Alle diese Knoten finden sich immer inline (als Kinder von [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) oder [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

In Aspose.Words jeder der **FieldXXX** Nodes ergibt sich aus [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Diese Klasse bietet eine Eigenschaft, um die Art des Feldes, das durch den angegebenen Knoten durch die [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) Eigentum. Zum Beispiel `FieldType.FieldMergeField` stellt ein Zusammenführungsfeld im Dokument dar.

{{% alert color="primary" %}}

Es gibt einige bestimmte Felder, die in einem Word-Dokument existieren, die nicht in Aspose.Words als Sammlung **FieldXXX** Knoten. Zum Beispiel `LINK` Feld und `INCLUDEPICTURE` Feld wird in Aspose.Words als [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Objekt. Dieses Objekt bietet Eigenschaften, mit den in diesen Feldern normalerweise gespeicherten Bilddaten zu arbeiten. Zur Einfuhr `INCLUDEPICTURE` Feld als **FieldXXX** die [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) Option muss als **true**.

Formularfelder werden ebenfalls in Aspose.Words als eigene Spezialklasse. Die [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) Klasse stellt ein Formularfeld in einem Word-Dokument dar und bietet zusätzliche Methoden, die insbesondere zu einem Formularfeld gehören.

{{% /alert %}}

## Unterstützte Felder

Berechnung der folgenden Felder wird in der aktuellen Version unterstützt Aspose.Words:

- = (Formel)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- Ja. `TOC` (einschließlich TOT und TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Ausgeglichenes Feld Paring

Aspose.Words folgt der Weg Microsoft Word Prozesse Felder und damit richtig handhabt:

- geschachtelte Felder:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Feldargument kann ein Ergebnis eines geschachtelten Feldes sein
- Felder können sowohl innerhalb eines Feldcodes als auch im Feldergebnis geschachtelt werden
- Leerzeichen/keine Leerzeichen, Zitate/keine Zitate, Fluchtzeichen in Feldern usw.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Felder, die sich über mehrere Absätze erstrecken

### Formelfelder

Aspose.Words eine sehr ernste Implementierung der Formel-Engine und unterstützt folgende:

- arithmetische und logische Operatoren:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funktionen:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Hinweise auf Lesezeichen:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Nummernformatierungsschalter:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Folgende Funktionen in Ausdrücken werden unterstützt: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` und `COMPARE` Felder

Nur einige von `IF` Ausdrucke, die Aspose.Words kann leicht berechnen sollte Ihnen eine Idee, wie mächtig diese Funktion ist:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` und `TIME` Felder

Aspose.Words unterstützt alle verfügbaren Datums- und Zeitformatierungsschalter Microsoft Word, Einige Beispiele sind:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Felder

Aspose.Words die Komplexität der mail merge Felder in Ihren Dokumenten und Supports geschachtelt `IF` und Formelfelder und kann sogar den Namen des Zusammenschlussfelds mit einer Formel berechnen.

Einige Beispiele mail merge Felder, die Aspose.Words unterstützt:

- Ja. Mail merge Feldschalter:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- geschachtelte Zusammenführungsfelder in einer Formel:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- den Namen des Zusammenführungsfeldes zu Laufzeit berechnen:
  `MERGEFIELD { `F` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- bedingter Wechsel zum nächsten Datensatz in der Datenquelle:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Format Schalter

Ein Feld in einem Dokument kann Formatierungsschalter haben, die festlegen, wie der resultierende Wert formatiert werden soll. Aspose.Words unterstützt die folgenden Formatschalter:

- @ – Datums- und Zeitformatierung
- \\\# – Zahlenformatierung
- Ja. Caps
- Erste Karte
- Ja. Tief
- Ja. Oberteil
- \\\\\\\\\\* CHARFORMAT – Formatergebnis nach dem ersten Zeichen des Feldcodes
- \\\\\\\\\\* MERGEFORMAT – Formatergebnis nach der Formatierung des alten Ergebnisses

### Date und Nummer Formatierung in Feldern

Wann Aspose.Words berechnet ein Feldergebnis, es muss oft einen String in einen Zahlen- oder Datumswert parsieren und auch auf einen String zurück formatieren. Standardmäßig Aspose.Words verwendet die aktuelle Fadenkultur zur Parsierung und Formatierung bei der Berechnung von Feldwerten während des Feldupdates und mail merge. Es gibt auch Optionen in Form der [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) Klasse, die eine weitere Kontrolle über welche Kultur während des Feldupdates verwendet wird%

* standardmäßig [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) Eigentum wird eingestellt [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) welche Felder mit der aktuellen Fadenkultur formatiert
* diese Eigenschaft kann eingestellt werden [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) so wird die aus dem Feldcode des Feldes gesetzte Sprache stattdessen für die Formatierung verwendet

### Formatierung mit der aktuellen Thread’s Culture

Um die Kultur während der Feldberechnung zu steuern, stellen Sie einfach die **CurrentCulture** Eigentum an einer Kultur Ihrer Wahl, bevor Sie Feldberechnung.

Das folgende Codebeispiel zeigt, wie die in Formatierungsfeldern verwendete Kultur während des Updates verändert werden kann:

Beispiel (verwenden Sie den öffentlichen Wrapper CurrentThreadSettings.getLocale() und setLocale() anstelle des privaten `Thread.CurrentThread`.CurrentCulture

Durch die Verwendung der aktuellen Kultur zu Formatfeldern kann ein System einfach und konsequent steuern, wie alle Felder im Dokument während des Feldupdates formatiert werden.

### Formatierung mit der Kultur im Dokument

Auf der anderen Seite, Microsoft Word formatiert jedes einzelne Feld basierend auf der Sprache des im Feld gefundenen Textes (spezifisch die Ausläufe aus dem Feldcode). Manchmal während der Feldaktualisierung kann dies das gewünschte Verhalten sein, zum Beispiel, wenn Sie globalisierte Dokumente mit Inhalten aus vielen verschiedenen Sprachen haben und möchten, dass jede Felder den aus dem Text verwendeten Ort ehren. Aspose.Words unterstützt auch diese Funktionalität.

Die [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse bietet [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) eine Eigenschaft, die Mitglieder enthält, die verwendet werden können, um zu kontrollieren, wie Felder innerhalb des Dokuments aktualisiert werden.

Das folgende Codebeispiel zeigt, wie die für die Datumsformatierung verwendete Kultur während des Feldupdates angegeben wird und mail merge wird gewählt aus:

Beispiel
