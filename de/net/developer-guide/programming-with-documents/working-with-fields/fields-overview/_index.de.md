---
title: Feldübersicht in C#
second_title: Aspose.Words für .NET
articleTitle: Felderübersicht
linktitle: Felderübersicht
description: "Feldfunktionen werden in Details, Feldcodes und Feldergebnissen in Aspose.Words für .NET erläutert."
type: docs
weight: 10
url: /de/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words ist eine Klassenbibliothek, die für die serverseitige Verarbeitung von Microsoft Word-Dokumenten entwickelt wurde und Felder auf folgende Weise unterstützt:

- Alle Felder in einem Dokument bleiben beim Öffnen/Speichern und bei Konvertierungen erhalten
- Es ist möglich, die Ergebnisse der meisten Felder zu aktualisieren

In diesem Artikel erfahren wir mehr über die Feldstruktur, die in Aspose.Words unterstützten Felder und Einzelheiten zur Arbeit mit solchen Feldern.

## Feldstruktur

Ein Feld besteht aus:

- Die Feldstart- und Trennknoten werden verwendet, um den Inhalt einzuschließen, aus dem der Feldcode besteht (normalerweise als einfacher Text).
- Das Feldtrennzeichen und das Feldende umfassen das Feldergebnis. Dabei kann es sich um verschiedene Arten von Inhalten handeln, von Textzeilen über Absätze bis hin zu Tabellen.
- Einige Felder verfügen möglicherweise nicht über ein Trennzeichen, was bedeutet, dass der gesamte Inhalt den Feldcode ausmacht.
- Der Feldcode definiert das Verhalten des Feldes und besteht aus der Feldkennung und häufig anderen Parametern wie Feldnamen und Schaltern.
- Das Feldergebnis enthält die aktuellste Auswertung des Feldes. Dieser Wert wird im Feld Ergebnis gespeichert und dem Benutzer angezeigt. Einige Felder verfügen möglicherweise über kein Feldergebnis und zeigen daher nichts im Dokument an. Ebenso kann es sein, dass einige Felder noch nicht aktualisiert werden und daher auch kein Feldergebnis haben.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Der Inhalt, aus dem der Feldcode besteht, wird als [Run](https://reference.aspose.com/words/de/net/aspose.words/run/)-Knoten zwischen [FieldStart](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldstart/) und [FieldSeparator](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldseparator/) gespeichert. Das Feldergebnis wird zwischen den **FieldSeparator**- und [FieldEnd](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldend/)-Knoten gespeichert und kann aus verschiedenen Inhaltstypen bestehen. Normalerweise enthält das Feldergebnis nur Text, der aus **Run**-Knoten besteht. Es ist jedoch möglich, dass sich der **FieldEnd**-Knoten in einem völlig anderen Absatz befindet und das Feldergebnis somit auch aus [Logische Ebenen von Knoten in einem Dokument](/words/de/net/logical-levels-of-nodes-in-a-document/)-Knoten wie **Table** und **Paragraph**-Knoten besteht.

Hier ist eine Ansicht, wie ein Feld in Aspose.Words gespeichert wird, anhand des "*DocumentExplorer"*-Beispiels, das auf [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) zu finden ist.

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Felder im Aspose.Words Document Object Model (DOM)

Wenn ein Dokument in Aspose.Words geladen wird, werden die Felder des Dokuments als Satz separater Komponenten (Knoten) in den [Aspose.Words Document Object Model (DOM)](/words/de/net/aspose-words-document-object-model/) geladen. Ein einzelnes Feld wird als Sammlung von **FieldStart**-, **FieldSeparator**- und **FieldEnd**-Knoten zusammen mit dem Inhalt zwischen diesen Knoten geladen. Wenn ein Feld kein Feldergebnis hat, gibt es keinen **FieldSeparator**-Knoten. Alle diese Knoten befinden sich immer inline (als untergeordnete Knoten von [Paragraph](https://reference.aspose.com/words/de/net/aspose.words/paragraph/) oder [SmartTag](https://reference.aspose.com/words/de/net/aspose.words.markup/smarttag/)).

In Aspose.Words leitet sich jeder **FieldXXX**-Knoten von [FieldChar](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldchar/) ab. Diese Klasse stellt eine Eigenschaft bereit, um den Typ des Feldes zu überprüfen, das durch den angegebenen Knoten über die [FieldType](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldtype/)-Eigenschaft dargestellt wird. **FieldType.FieldMergeField** stellt beispielsweise ein Zusammenführungsfeld im Dokument dar.

{{% alert color="primary" %}}

Es gibt einige bestimmte Felder in einem Word-Dokument, die nicht als Sammlung von **FieldXXX**-Knoten in Aspose.Words importiert werden. Beispielsweise werden `LINK`-Felder und `INCLUDEPICTURE`-Felder als [Shape](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/)-Objekt in Aspose.Words importiert. Dieses Objekt stellt Eigenschaften bereit, um mit den Bilddaten zu arbeiten, die normalerweise in diesen Feldern gespeichert sind. Um `INCLUDEPICTURE`-Felder als **FieldXXX**-Knoten zu importieren, muss die [PreserveIncludePictureField](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/preserveincludepicturefield/)-Option als **true** angegeben werden.

Formularfelder werden auch als eigene spezielle Klasse in Aspose.Words importiert. Die [FormField](https://reference.aspose.com/words/de/net/aspose.words.fields/formfield/)-Klasse stellt ein Formularfeld in einem Word-Dokument dar und stellt zusätzliche Methoden bereit, die speziell für ein Formularfeld gelten.

{{% /alert %}}

## Unterstützte Felder

Die Berechnung der folgenden Felder wird in der aktuellen Version von Aspose.Words unterstützt:

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
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Anspruchsvolle Feldanalyse

Aspose.Words folgt der Art und Weise, wie Microsoft Word Felder verarbeitet, und verarbeitet daher Folgendes korrekt:

- verschachtelte Felder:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Das Feldargument kann das Ergebnis eines verschachtelten Felds sein
- Felder können sowohl innerhalb eines Feldcodes als auch im Feldergebnis verschachtelt werden
- Leerzeichen/keine Leerzeichen, Anführungszeichen/keine Anführungszeichen, Escape-Zeichen in Feldern usw.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Felder, die sich über mehrere Absätze erstrecken

### Formelfelder

Aspose.Words bietet eine sehr seriöse Implementierung der Formel-Engine und unterstützt Folgendes:

- Arithmetische und logische Operatoren:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funktionen:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Verweise auf Lesezeichen:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Schalter zur Zahlenformatierung:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Die folgenden Funktionen in Ausdrücken werden unterstützt: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF`- und `COMPARE`-Felder

Nur einige der `IF`-Ausdrücke, die Aspose.Words leicht berechnen kann, sollen Ihnen eine Vorstellung davon geben, wie leistungsfähig diese Funktion ist:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE`- und `TIME`-Felder

Aspose.Words unterstützt alle in Microsoft Word verfügbaren Datums- und Uhrzeitformatierungsschalter. Einige Beispiele sind:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge-Felder

Aspose.Words setzt der Komplexität von mail merge-Feldern in Ihren Dokumenten keine Grenzen, unterstützt verschachtelte `IF`- und Formelfelder und kann sogar den Namen des Zusammenführungsfelds mithilfe einer Formel berechnen.

Einige Beispiele für mail merge-Felder, die Aspose.Words unterstützt:

- Mail merge-Feldschalter:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Verschachtelte Zusammenführungsfelder in einer Formel:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Berechnen Sie den Namen des Zusammenführungsfelds zur Laufzeit:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Bedingter Wechsel zum nächsten Datensatz in der Datenquelle:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Formatschalter

Ein Feld in einem Dokument kann über Formatierungsschalter verfügen, die angeben, wie der resultierende Wert formatiert werden soll. Aspose.Words unterstützt die folgenden Formatwechsel:

- \\\@ – Formatierung von Datum und Uhrzeit
- \\\# – Zahlenformatierung
- \\\* Kappen
- \\\* FirstCap
- \\\* Untere
- \\\* Oberer, höher
- \\\* CHARFORMAT – Formatieren Sie das Ergebnis entsprechend dem ersten Zeichen des Feldcodes
- \\\* MERGEFORMAT – Ergebnis entsprechend der Formatierung des alten Ergebnisses formatieren

### Date und Zahlenformatierung in Feldern

Wenn Aspose.Words ein Feldergebnis berechnet, muss es häufig eine Zeichenfolge in einen Zahlen- oder Datumswert analysieren und diese auch wieder in eine Zeichenfolge formatieren. Standardmäßig verwendet Aspose.Words die aktuelle Thread-Kultur, um bei der Berechnung von Feldwerten während der Feldaktualisierung eine Analyse und Formatierung durchzuführen und mail merge. Es gibt auch Optionen in Form der [FieldOptions](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldoptions/)-Klasse, die eine weitere Kontrolle darüber ermöglichen, welche Kultur während der Feldaktualisierung verwendet wird.

– Standardmäßig ist die [FieldUpdateCultureSource](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/)-Eigenschaft auf [CurrentThread](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldupdateculturesource/) gesetzt, wodurch Felder mit der aktuellen Thread-Kultur formatiert werden
– Diese Eigenschaft kann auf [FieldCode](https://reference.aspose.com/words/de/net/aspose.words.fields/fieldupdateculturesource/) gesetzt werden, sodass stattdessen die im Feldcode des Felds festgelegte Sprache für die Formatierung verwendet wird

### Formatieren mit der Kultur des aktuellen Threads

Um die während der Feldberechnung verwendete Kultur zu steuern, legen Sie einfach die **Thread.CurrentThread.CurrentCulture**-Eigenschaft auf eine Kultur Ihrer Wahl fest, bevor Sie die Feldberechnung aufrufen.

Das folgende Codebeispiel zeigt, wie Sie die Kultur ändern, die während der Aktualisierung in Formatierungsfeldern verwendet wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Durch die Verwendung der aktuellen Kultur zum Formatieren von Feldern kann ein System einfach und konsistent steuern, wie alle Felder im Dokument während der Feldaktualisierung formatiert werden.

### Formatierung mithilfe der Kultur im Dokument

Andererseits formatiert Microsoft Word jedes einzelne Feld basierend auf der Sprache des im Feld gefundenen Textes (insbesondere der Läufe aus dem Feldcode). Manchmal kann dies während der Feldaktualisierung das gewünschte Verhalten sein, beispielsweise wenn Sie globalisierte Dokumente mit Inhalten aus vielen verschiedenen Sprachen haben und möchten, dass jedes Feld das vom Text verwendete Gebietsschema berücksichtigt. Aspose.Words unterstützt diese Funktionalität ebenfalls.

Die [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Klasse stellt eine [FieldOptions](https://reference.aspose.com/words/de/net/aspose.words/document/fieldoptions/)-Eigenschaft bereit, die Mitglieder enthält, mit denen gesteuert werden kann, wie Felder im Dokument aktualisiert werden.

Das folgende Codebeispiel zeigt, wie Sie angeben, wo die für die Datumsformatierung während der Feldaktualisierung und Mail Merge verwendete Kultur ausgewählt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
