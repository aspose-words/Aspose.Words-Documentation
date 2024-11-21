---
title: Feldübersicht in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Felderübersicht
linktitle: Felderübersicht
description: "Sie können mit Python auf die Feldänderung zugreifen. Felder des Dokuments werden in das Aspose.Words Document Object Model (DOM) geladen."
type: docs
weight: 10
url: /de/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Normalerweise enthält ein Feld beim Einfügen in Microsoft Word bereits einen aktuellen Wert. Wenn es sich bei dem Feld beispielsweise um eine Formel oder eine Seitenzahl handelt, enthält es einen korrekt berechneten Wert für die angegebene Version des Dokuments. Wenn Sie jedoch über eine Anwendung verfügen, die ein Dokument mit Feldern generiert oder ändert (z. B. zwei Dokumente kombiniert oder mit Daten füllt), sollten idealerweise alle Felder aktualisiert werden, damit das Dokument nützlich ist.

Ein Feld besteht aus:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Die Feldstart- und Trennknoten werden verwendet, um den Inhalt einzuschließen, aus dem der Feldcode besteht (normalerweise als einfacher Text)
- Das Feldtrennzeichen und das Feldende umfassen das Feldergebnis. Dabei kann es sich um verschiedene Arten von Inhalten handeln, von Textzeilen über Absätze bis hin zu Tabellen.
- Einige Felder verfügen möglicherweise nicht über ein Trennzeichen, was bedeutet, dass der gesamte Inhalt den Feldcode ausmacht.
- Der Feldcode definiert das Verhalten des Feldes und besteht aus der Feldkennung und häufig anderen Parametern wie Feldnamen und Schaltern.
- Das Feldergebnis enthält die aktuellste Auswertung des Feldes. Dieser Wert wird im Feld Ergebnis gespeichert und dem Benutzer angezeigt. Einige Felder verfügen möglicherweise über kein Feldergebnis und zeigen daher nichts im Dokument an. Ebenso kann es sein, dass einige Felder noch nicht aktualisiert werden und daher auch kein Feldergebnis haben.

Hier ist eine Ansicht, wie ein Feld in Aspose.Words gespeichert wird, anhand des "*DocumentExplorer"*-Beispiels, das auf [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) zu finden ist.

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words ist eine Klassenbibliothek, die für die serverseitige Verarbeitung von Microsoft Word-Dokumenten entwickelt wurde und Felder auf folgende Weise unterstützt:

- Alle Felder in einem Dokument bleiben beim Öffnen/Speichern und bei Konvertierungen erhalten.
- Es ist möglich, die Ergebnisse einiger der beliebtesten Felder zu aktualisieren.

## Felder in Microsoft Word

Felder in Microsoft Word-Dokumenten sind komplex. Es gibt über 50 Feldtypen (jeder benötigt sein eigenes Ergebnisberechnungsverfahren), Formeln und Ausdrücke, Lesezeichen und Referenzen, Funktionen und verschiedene Schalter. Felder können auch verschachtelt sein. Normalerweise wird beim Öffnen eines Dokuments das Feldergebnis (der Wert des Feldes) für alle Felder im Dokument angezeigt. Sie können die Anzeige von Feldergebnissen oder Feldcodes in Microsoft Word für alle Felder umschalten, indem Sie **ALT+F9** drücken.

| Feldcode | Feldergebnis |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Einfügen von Feldern in Microsoft Word

So fügen Sie ein Feld in Microsoft Word ein:

1. Klicken Sie auf das **Insert**-Menü.
1. Klicken Sie auf das Dropdown-Menü **Quick Parts**
1. Wählen Sie **Field**
1. Es erscheint ein Bildschirm, auf dem Sie die Details des Feldes eingeben können. Auf der linken Seite erhalten Sie eine Liste der möglichen Felder und auf der rechten Seite befindet sich ein Bildschirm zur visuellen Bearbeitung der Eigenschaften des Feldes.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Zusätzlich können Sie die **Field Codes**-Taste drücken, um den Feldcode direkt auszuschreiben.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Schalter können auch über die **Options**-Taste eingefügt werden<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Füllen Sie mit einer der beiden Methoden die gewünschten Felder mit den entsprechenden Informationen aus und drücken Sie dann **Ok**.
1. Das Feld wird an der aktuellen Cursorposition in das Dokument eingefügt.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Aktualisieren von Feldern in Microsoft Word

So aktualisieren Sie ein einzelnes Feld in Microsoft Word:

1. Bewegen Sie die Einfügemarke in das Feld, das Sie aktualisieren möchten.
1. Drücken Sie **F9**, um das Feld zu aktualisieren.

So aktualisieren Sie alle Felder in Microsoft Word:

1. Drücken Sie **Strg+A**, um den gesamten Inhalt des Dokuments auszuwählen.
1. Drücken Sie **F9**, um alle in der Auswahl gefundenen Felder zu aktualisieren.

### Umschalten zwischen Anzeige von Feldcode und Feldergebnis

So schalten Sie die Feldcodes eines einzelnen Felds in Microsoft Word um:

1. Bewegen Sie die Einfügemarke in das gewünschte Feld.
1. Drücken Sie **UMSCHALT+F9**, um den Feldcode nur für dieses Feld umzuschalten.

So schalten Sie die Feldcodes aller Felder in Microsoft Word um:

1. Drücken Sie **ALT+F9**

### Konvertieren von Feldern in statischen Text in Microsoft Word

So konvertieren Sie ein dynamisches Feld in statischen Text in Microsoft Word:

1. Bewegen Sie die Einfügemarke in das Feld, das Sie konvertieren möchten.
1. Drücken Sie **Strg+Umschalt+F9**, um die Felder in statischen Text umzuwandeln.

### Entfernen eines Felds in Microsoft Word

So entfernen Sie ein Feld in Microsoft Word:

1. Wählen Sie den gesamten Inhalt aus, aus dem das Feld besteht. Wenn Feldcodes angezeigt werden, müssen auch die öffnenden und endenden geschweiften Klammern ausgewählt werden.
1. Drücken Sie **Delete**, um das gesamte Feld zu entfernen.

## Felder in Aspose.Words

Wenn ein Dokument in Aspose.Words geladen wird, werden die Felder des Dokuments als Satz separater Komponenten (Knoten) in Aspose.Words Document Object Model geladen. Ein einzelnes Feld wird als Sammlung von [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)-, [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/)- und [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)-Knoten zusammen mit dem Inhalt zwischen diesen Knoten geladen. Wenn ein Feld kein Feldergebnis hat, gibt es keinen [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/)-Knoten. Alle diese Knoten befinden sich immer inline (als untergeordnete Knoten von [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) oder [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)).

Der Inhalt, aus dem der Feldcode besteht, wird als [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)-Knoten zwischen [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) und [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) gespeichert. Das Feldergebnis wird zwischen den [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/)- und [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)-Knoten gespeichert und kann aus verschiedenen Inhaltstypen bestehen. Normalerweise enthält das Feldergebnis nur Text, der aus [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)-Knoten besteht. Es ist jedoch möglich, dass sich der [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)-Knoten in einem völlig anderen Absatz befindet und das Feldergebnis somit auch aus Knoten auf Blockebene wie [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)- und [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)-Knoten besteht.

In Aspose.Words leitet sich jeder **FieldXXX**-Knoten von [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/) ab. Diese Klasse stellt eine Eigenschaft bereit, um den Typ des Feldes zu überprüfen, das durch den angegebenen Knoten über die [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/)-Eigenschaft dargestellt wird. [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) stellt beispielsweise ein Zusammenführungsfeld im Dokument dar.

{{% alert color="primary" %}}

Es gibt einige bestimmte Felder in einem Word-Dokument, die nicht als Sammlung von **FieldXXX**-Knoten in Aspose.Words importiert werden. Beispielsweise werden `LINK`-Felder und `INCLUDEPICTURE`-Felder als [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Objekt in Aspose.Words importiert. Dieses Objekt stellt Eigenschaften bereit, um mit den Bilddaten zu arbeiten, die normalerweise in diesen Feldern gespeichert sind.

Formularfelder werden auch als eigene spezielle Klasse in Aspose.Words importiert. Die [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/)-Klasse stellt ein Formularfeld in einem Word-Dokument dar und stellt zusätzliche Methoden bereit, die speziell für ein Formularfeld gelten.

{{% /alert %}}

### Während der Aktualisierung unterstützte Felder

Die Berechnung der folgenden Felder wird in der aktuellen Version von Aspose.Words unterstützt:

- = (Formelfeld)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (einschließlich TOT und TOF)
- TC

### Anspruchsvolle Analyse

Aspose.Words folgt der Art und Weise, wie Microsoft Word Felder verarbeitet, und verarbeitet daher Folgendes korrekt:

- Verschachtelte Felder
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
– Das Feldargument kann das Ergebnis eines verschachtelten Felds sein.
- Felder können sowohl innerhalb eines Feldcodes als auch im Feldergebnis verschachtelt werden.
- Leerzeichen/keine Leerzeichen, Anführungszeichen/keine Anführungszeichen, Escape-Zeichen in Feldern usw.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
– Felder, die sich über mehrere Absätze erstrecken.

#### Formelfelder

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

#### `IF`- und `COMPARE`-Felder

Nur einige der `IF`-Ausdrücke, die Aspose.Words leicht berechnen kann, sollen Ihnen eine Vorstellung davon geben, wie leistungsfähig diese Funktion ist:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE`- und `TIME`-Felder

Aspose.Words unterstützt alle in Microsoft Word verfügbaren Datums- und Uhrzeitformatierungsschalter. Einige Beispiele sind:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge-Felder

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

#### Formatschalter

Ein Feld in einem Dokument kann über Formatierungsschalter verfügen, die angeben, wie der resultierende Wert formatiert werden soll. Aspose.Words unterstützt die folgenden Formatwechsel:

- @ - Formatierung von Datum und Uhrzeit
- \\\# - Zahlenformatierung
- \\\\\\\\* Kappen
- \\\\\\\\* FirstCap
- \\\\\\\\* Untere
- \\\\\\\\* Oberer, höher
- \\\\\\\\* CHARFORMAT – Ergebnis entsprechend dem ersten Zeichen des Feldcodes formatieren.
- \\\\\\\\* MERGEFORMAT – Formatieren Sie das Ergebnis entsprechend der Formatierung des alten Ergebnisses.

#### Date und Zahlenformatierung in Feldern

Wenn Aspose.Words ein Feldergebnis berechnet, muss es häufig eine Zeichenfolge in einen Zahlen- oder Datumswert analysieren und diese auch wieder in eine Zeichenfolge formatieren. Standardmäßig verwendet Aspose.Words die aktuelle Thread-Kultur, um bei der Berechnung von Feldwerten während der Feldaktualisierung eine Analyse und Formatierung durchzuführen und mail merge. Es gibt auch Optionen in Form der [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/)-Klasse, die eine weitere Kontrolle darüber ermöglichen, welche Kultur während der Feldaktualisierung verwendet wird.

– Standardmäßig ist die [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/)-Eigenschaft auf [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) eingestellt, wodurch Felder mit der aktuellen Thread-Kultur formatiert werden.
– Diese Eigenschaft kann auf [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) gesetzt werden, sodass stattdessen die im Feldcode des Felds festgelegte Sprache für die Formatierung verwendet wird.

#### Formatieren mit der Kultur des aktuellen Threads

Um die während der Feldberechnung verwendete Kultur zu steuern, verwenden Sie einfach die **locale.setlocale**-Methode, um die Kultur Ihrer Wahl festzulegen, bevor Sie die Feldberechnung aufrufen.
Das folgende Beispiel zeigt, wie Sie die Kultur ändern, die während der Aktualisierung in Formatierungsfeldern verwendet wird.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Durch die Verwendung der aktuellen Kultur zum Formatieren von Feldern kann ein System einfach und konsistent steuern, wie alle Felder im Dokument während der Feldaktualisierung formatiert werden.

#### Formatierung mithilfe der Kultur im Dokument

Andererseits formatiert Microsoft Word jedes einzelne Feld basierend auf der Sprache des im Feld gefundenen Textes (insbesondere der Läufe aus dem Feldcode). Manchmal kann dies während der Feldaktualisierung das gewünschte Verhalten sein, beispielsweise wenn Sie globalisierte Dokumente mit Inhalten aus vielen verschiedenen Sprachen haben und möchten, dass jedes Feld das vom Text verwendete Gebietsschema berücksichtigt. Aspose.Words unterstützt diese Funktionalität ebenfalls.

Die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Klasse stellt eine [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/)-Eigenschaft bereit, die Mitglieder enthält, mit denen gesteuert werden kann, wie Felder im Dokument aktualisiert werden. Das folgende Beispiel zeigt, wie Sie angeben, aus welcher Kultur die für die Datumsformatierung während der Feldaktualisierung und mail merge verwendete Kultur ausgewählt wird.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Finden des Feldcodes und des Feldergebnisses

Ein über [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) eingefügtes Feld gibt ein [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/)-Objekt zurück. Dies ist eine Fassadenklasse, die nützliche Methoden bereitstellt, um solche Eigenschaften eines Feldes schnell zu finden. Beachten Sie, dass Sie stattdessen die integrierte Methode [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) verwenden können, wenn Sie nur nach den Namen von Zusammenführungsfeldern im Dokument suchen. Das folgende Beispiel zeigt, wie die Namen aller Zusammenführungsfelder in einem Dokument abgerufen werden.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## So benennen Sie Zusammenführungsfelder um

Das folgende Beispiel zeigt, wie Sie Briefvorlagenfelder in einem Word-Dokument umbenennen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
