---
title: Feldübersicht in C++
second_title: Aspose.Words für C++
articleTitle: Felder Übersicht
linktitle: Felder Übersicht
description: "Felder werden in Details, Feldcodes und Feldergebnissen erläutert in Aspose.Words für C++."
type: docs
weight: 10
url: /de/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ist eine Klassenbibliothek, die für die serverseitige Verarbeitung von Microsoft Word -Dokumenten entwickelt wurde und Felder auf folgende Weise unterstützt:

- alle Felder in einem Dokument bleiben beim Öffnen/Speichern und bei Konvertierungen erhalten
- es ist möglich, die Ergebnisse der meisten Felder zu aktualisieren

In diesem Artikel erfahren Sie mehr über die Feldstruktur, die in Aspose.Words unterstützten Felder und Einzelheiten zum Arbeiten mit solchen Feldern.

## Feldstruktur

Ein Feld besteht aus:

- Die Feldanfangs- und Trennknoten werden verwendet, um den Inhalt zu umfassen, aus dem der Feldcode besteht (normalerweise als Klartext).
- Feldtrenner und Feldende umfassen das Feldergebnis. Dies kann aus verschiedenen Arten von Inhalten bestehen, die von Textläufen über Absätze bis hin zu Tabellen reichen.
- Einige Felder haben möglicherweise kein Trennzeichen, was bedeutet, dass der gesamte Inhalt den Feldcode ausmacht.
- Der Feldcode definiert das Verhalten des Felds und besteht aus der Feldkennung und häufig anderen Parametern wie Feldnamen und Schaltern.
- Das Feldergebnis enthält die letzte Auswertung des Feldes. Dieser Wert wird im Feld Ergebnis gespeichert und dem Benutzer angezeigt. Einige Felder enthalten möglicherweise keine Feldergebnisse, daher wird im Dokument nichts angezeigt. Ebenso werden einige Felder möglicherweise noch nicht aktualisiert, daher wird auch kein Feldergebnis angezeigt.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Der Inhalt, aus dem der Feldcode besteht, wird als [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) Knoten zwischen [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) und [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/) gespeichert. Das Feldergebnis wird zwischen den Knoten **FieldSeparator** und [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) gespeichert und kann aus verschiedenen Inhaltstypen bestehen. Normalerweise enthält das Feldergebnis nur Text, der aus **Run** Knoten besteht, es ist jedoch möglich, dass sich der **FieldEnd** Knoten in einem völlig anderen Absatz befindet und somit das Feldergebnis besteht aus [knoten auf Blockebene](/words/cpp/logical-levels-of-nodes-in-a-document/) wie auch **Table** und **Paragraph** Knoten.

Hier sehen Sie, wie ein Feld in Aspose.Words gespeichert wird, indem Sie das Beispiel "*DocumentExplorer"*" verwenden.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Felder im Aspose.Words-Dokumentobjektmodell (DOM)

Wenn ein Dokument in Aspose.Words geladen wird, werden die Felder des Dokuments in die [Aspose.Words Dokumentobjektmodell](/words/cpp/aspose-words-document-object-model/) als Satz separater Komponenten (Knoten). Ein einzelnes Feld wird als Sammlung von **FieldStart** -, **FieldSeparator** - und **FieldEnd** -Knoten zusammen mit dem Inhalt zwischen diesen Knoten geladen. Wenn ein Feld kein Feldergebnis enthält, gibt es keinen **FieldSeparator** -Knoten. Alle diese Knoten werden immer inline gefunden (als Kinder von [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) oder [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

In Aspose.Words leitet sich jeder der **FieldXXX** Knoten von [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/) ab. Diese Klasse stellt eine Eigenschaft bereit, um den Feldtyp zu überprüfen, der vom angegebenen Knoten durch die Eigenschaft [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/) dargestellt wird. Beispiel: **FieldType.FieldMergeField** steht für ein Seriendruckfeld im Dokument.

{{% alert color="primary" %}}

Es gibt einige bestimmte Felder in einem Word-Dokument, die nicht als Sammlung von **FieldXXX** -Knoten in Aspose.Words importiert werden. Beispielsweise werden das Feld `LINK` und das Feld `INCLUDEPICTURE` als `Shape`-Objekt in Aspose.Words importiert. Dieses Objekt bietet Eigenschaften zum Arbeiten mit den normalerweise in diesen Feldern gespeicherten Bilddaten. Um `INCLUDEPICTURE`-Felder als **FieldXXX** -Knoten zu importieren, muss die Option [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) als **true** angegeben werden.

Formularfelder werden auch als eigene spezielle Klasse in Aspose.Words importiert. Die [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) -Klasse repräsentiert ein Formularfeld in einem Word-Dokument und stellt zusätzliche Methoden bereit, die für ein Formularfeld spezifisch sind.

{{% /alert %}}

## Unterstützte Felder

Die Berechnung der folgenden Felder wird in der aktuellen Version von Aspose.Words unterstützt:

- = (Formel)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Ausgeklügeltes Feld-Parsing

Aspose.Words folgt der Art und Weise, wie Microsoft Word Felder verarbeitet und daher korrekt verarbeitet:

- verschachtelte Felder:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Feldargument kann das Ergebnis eines verschachtelten Felds sein
- Felder können sowohl innerhalb eines Feldcodes als auch im Feldergebnis verschachtelt werden
- leerzeichen / keine Leerzeichen, Anführungszeichen / keine Anführungszeichen, Escape-Zeichen in Feldern usw.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Felder, die sich über mehrere Absätze erstrecken

### Formelfelder

Aspose.Words bietet eine sehr seriöse Implementierung der Formel-Engine und unterstützt Folgendes:

- arithmetische und logische Operatoren:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funktion:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- verweise auf Lesezeichen:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- schalter für die Zahlenformatierung:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Die folgenden Funktionen in Ausdrücken werden unterstützt: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Nur einige der `IF` -Ausdrücke, die Aspose.Words leicht berechnen kann, sollten Ihnen eine Vorstellung davon geben, wie leistungsfähig diese Funktion ist:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words unterstützt alle Datums- und Uhrzeitformatierungsschalter, die in Microsoft Word verfügbar sind, einige Beispiele sind:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Felder

Aspose.Words schränkt die Komplexität von mail merge -Feldern in Ihren Dokumenten nicht ein, unterstützt verschachtelte `IF` - und Formelfelder und kann sogar den Namen des Seriendruckfelds mithilfe einer Formel berechnen.

Einige Beispiele für mail merge-Felder, die Aspose.Words unterstützt:

- Mail merge Feldschalter:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- verschachtelte Seriendruckfelder in einer Formel:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- berechnen Sie den Namen des Seriendruckfelds zur Laufzeit:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- bedingtes Verschieben zum nächsten Datensatz in der Datenquelle:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Format-Schalter

Ein Feld in einem Dokument kann Formatierungsschalter haben, die angeben, wie der resultierende Wert formatiert werden soll. Aspose.Words unterstützt die folgenden Formatwechsel:

- @ - Formatierung von Datum und Uhrzeit
- \\\# - Formatierung von Zahlen
- \\\\\\\\* Kappen
- \\\\\\\\* FirstCap
- \\\\\\\\* Niedriger
- \\\\\\\\* Obere
- \\\\\\\\* CHARFORMAT - Formatieren Sie das Ergebnis gemäß dem ersten Zeichen des Feldcodes
- \\\\\\\\* MERGEFORMAT - Formatieren Sie das Ergebnis entsprechend der Formatierung des alten Ergebnisses

### Datums- und Zahlenformatierung in Feldern

Wenn Aspose.Words ein Feldergebnis berechnet, muss es häufig eine Zeichenfolge in einen Zahlen- oder Datumswert analysieren und sie auch wieder in einen formatieren string.By standard Aspose.Words verwendet die aktuelle Thread-Kultur zum Parsen und Formatieren bei der Berechnung von Feldwerten während der Feldaktualisierung und mail merge. Es gibt auch Optionen in Form der Klasse [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/), die eine weitere Kontrolle darüber ermöglichen, welche Kultur während der Feldaktualisierung verwendet wird.

- standardmäßig ist die Eigenschaft [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) auf [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) gesetzt, wodurch Felder mit der aktuellen Thread-Kultur formatiert werden
- diese Eigenschaft kann auf [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) gesetzt werden, sodass stattdessen die aus dem Feldcode des Felds festgelegte Sprache für die Formatierung verwendet wird

### Formatierung mit der Kultur des aktuellen Threads

Um die bei der Feldberechnung verwendete Kultur zu steuern, setzen Sie einfach die Eigenschaft **CurrentCulture** auf eine Kultur Ihrer Wahl, bevor Sie die Feldberechnung aufrufen.

Das folgende Codebeispiel zeigt, wie Sie die Kultur ändern, die beim Formatieren von Feldern während der Aktualisierung verwendet wird:

EXAMPLE

Die Verwendung der aktuellen Kultur zum Formatieren von Feldern ermöglicht es einem System, einfach und konsistent zu steuern, wie alle Felder im Dokument während der Feldaktualisierung formatiert werden.

### Formatieren mit der Kultur im Dokument

Andererseits formatiert Microsoft Word jedes einzelne Feld basierend auf der Sprache des im Feld gefundenen Textes (insbesondere die Läufe aus dem Feldcode). Manchmal kann dies während der Feldaktualisierung das gewünschte Verhalten sein, z. B. wenn Sie globalisierte Dokumente haben, die Inhalte enthalten, die aus vielen verschiedenen Sprachen bestehen, und möchten, dass jedes Feld das im Text verwendete Gebietsschema berücksichtigt. Aspose.Words unterstützt diese Funktionalität ebenfalls.

Die [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) -Klasse stellt eine [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) -Eigenschaft bereit, die Elemente enthält, mit denen gesteuert werden kann, wie Felder im Dokument aktualisiert werden.

Das folgende Codebeispiel zeigt, wie angegeben wird, wo die Kultur für die Datumsformatierung während der Feldaktualisierung und mail merge ausgewählt wird:

EXAMPLE
