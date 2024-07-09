---
title: Felder in einfügen Java
second_title: Aspose.Words für Java
articleTitle: Felder einfügen
linktitle: Felder einfügen
description: "Verschiedene Möglichkeiten, Felder in Ihr Dokument einzufügen Java."
type: docs
weight: 20
url: /de/java/insert-fields/
---

Es gibt verschiedene Möglichkeiten, Felder in ein Dokument einzufügen:

- mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- mit [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- mit [Aspose.Words Document Object Model (DOM)](/words/de/java/aspose-words-document-object-model/)

In diesem Artikel werden wir uns jeden Weg genauer ansehen und analysieren, wie bestimmte Felder mit diesen Optionen eingefügt werden können.

## Einfügen von Feldern in ein Dokument mit DocumentBuilder

In Aspose.Words die [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) Verfahren wird verwendet, um neue Felder in ein Dokument einzufügen. Der erste Parameter akzeptiert den vollen Feldcode des einzufügenden Feldes. Der zweite Parameter ist optional und erlaubt das Feldergebnis des Feldes manuell einzustellen. Wird dies nicht geliefert, wird das Feld automatisch aktualisiert. Sie können null oder leer an diesen Parameter übergeben, um ein Feld mit einem leeren Feldwert einzufügen. Wenn Sie nicht sicher sind über die jeweilige Feldcode-Syntax, erstellen Sie das Feld in Microsoft Word zuerst und schalten, um seinen Feldcode zu sehen.

{{% alert color="primary" %}}

Hat Ihr Feldcode einen Parameter, der einen Raum enthält, so muss er innerhalb von Sprachmarken eingeschlossen werden. Ansonsten das Feld in beiden Microsoft Word und Aspose.Words kann nicht wie erwartet funktionieren, da der Parameter von beiden als stumpf behandelt wird.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie ein Zusammenführungsfeld mit Hilfe eines Dokuments eingefügt werden kann **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Die gleiche Technik wird verwendet, um Felder innerhalb anderer Felder einzufügen.

Das folgende Codebeispiel zeigt, wie Felder, die in einem anderen Feld geschachtelt sind, mit Hilfe von **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Lokale auf Feldebene angeben

Eine Sprachkennung ist eine Standard-internationale numerische Abkürzung für die Sprache in einem Land oder einer geografischen Region. mit Aspose.Words, Sie können die Locale auf der Feldebene mit der [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) eine Eigenschaft, die die lokale ID des Feldes erhält oder setzt.

Das folgende Codebeispiel zeigt, wie man diese Option verwendet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Einfügen von untypischen / leeren Feld

Wenn Sie untypisierte/leere Felder einfügen möchten ({}) wie Microsoft Word erlaubt, können Sie die [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) Verfahren mit [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) Parameter. Um ein Feld in ein Word-Dokument einzufügen, können Sie die Tastenkombination "Ctrl + F9" drücken.

Das folgende Codebeispiel zeigt, wie ein leeres Feld in das Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Einsatz `COMPARE` Feld

Die `COMPARE` Feld vergleicht zwei Werte und gibt den Zahlenwert 1 zurück, wenn der Vergleich true oder 0 wenn der Vergleich false.

Das folgende Codebeispiel zeigt, wie man `COMPARE` Felder mit DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Einsatz `IF` Feld

Die `IF` Feld kann verwendet werden, um Argumente bedingt auszuwerten.

Das folgende Codebeispiel zeigt, wie man `IF` Felder mit DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Einfügen von Feldern in ein Dokument mit FieldBuilder

Die alternative Möglichkeit, Felder in Aspose.Words die [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) Klasse. Es bietet fließende Schnittstelle, um Feldschalter und Argumentwerte als Text, Knoten oder sogar geschachtelte Felder anzugeben.

Das folgende Codebeispiel zeigt, wie ein Feld in ein Dokument eingefügt werden kann, indem **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Einfügen von Feldern mit DOM

Sie können auch verschiedene Arten von Feldern verwenden [Aspose.Words Document Object Model (DOM)](/words/de/java/aspose-words-document-object-model/). In diesem Abschnitt werden wir einige Beispiele anschauen.

### Einfügen von Verschmelzung Feld in ein Dokument mit DOM

`MERGEFIELD` Feld in Word-Dokument kann durch die [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) Klasse. Sie können verwenden **FieldMergeField** Klasse, um die folgenden Operationen durchzuführen:

- den Namen des Zusammenführungsfeldes angeben
- die Formatierung des Zusammenführungsfeldes angeben
- geben Sie den Text an, der zwischen Feldtrenner und Feldende des Zusammenführungsfeldes liegt
- Geben Sie den nach dem Zusammenschlussfeld einzufügenden Text an, wenn das Feld nicht leer ist
- Geben Sie den vor dem Zusammenschlussfeld einzufügenden Text an, wenn das Feld nicht leer ist

{{% alert color="primary" %}}

Weitere Details finden Sie in der [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die `MERGE` Feld mit DOM zu einem Absatz in einem Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Einfügen Mail Merge `ADDRESSBLOCK` Feld in ein Dokument mit DOM

Die `ADDRESSBLOCK` Feld wird verwendet, um ein mail merge Adressblock in einem Word-Dokument. `ADDRESSBLOCK` Feld in Word-Dokument kann durch die [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) Klasse. Sie können verwenden **FieldAddressBlock** Klasse, um die folgenden Operationen durchzuführen:

- geben Sie an, ob Sie den Namen des Landes/der Region in das Feld einfügen
- die Angabe, ob die Adresse nach dem Land/der Region des Empfängers im Sinne von POST*CODE (Universal Postal Union 2006) formatiert werden soll
- Angabe des ausgeschlossenen Landes/Regionsnamens
- Angabe des Namens und des Adressformats
- die Sprach-ID angeben, die verwendet wird, um die Adresse zu formatieren

{{% alert color="primary" %}}

Weitere Details finden Sie in der [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die Mail Merge `ADDRESSBLOCK` Feld mit DOM zu einem Absatz in einem Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Einfügen `ADVANCE` Feld in ein Dokument ohne Verwendung von DocumentBuilder

Die `ADVANCE` Das Feld wird verwendet, um anschließenden Text innerhalb einer Zeile nach links, rechts, oben oder unten zu kompensieren. `ADVANCE` Feld in Word-Dokument kann durch die [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) Klasse. Sie können die **FieldAdvance** Klasse für folgende Operationen:

- die Anzahl der Punkte, mit denen der Text, der dem Feld folgt, vertikal von der oberen Kante der Seite bewegt werden sollte
- Geben Sie die Anzahl der Punkte an, mit denen der Text, der dem Feld folgt, horizontal von der linken Kante der Spalte, des Rahmens oder des Textfeldes bewegt werden soll
- die Anzahl der Punkte, mit denen der Text, der dem Feld folgt, links, rechts, oben oder unten verschoben werden soll

{{% alert color="primary" %}}

Weitere Details finden Sie in der [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die `ADVANCE` Feld mit DOM zu einem Absatz in einem Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Einfügen `ASK` Feld in ein Dokument ohne Verwendung von DocumentBuilder

Die `ASK` Das Feld wird verwendet, um den Benutzer für Text zu veranlassen, einem Lesezeichen im Word-Dokument zuzuordnen. `ASK` Feld in Word-Dokument kann durch die [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) Klasse. Sie können verwenden **FieldAsk** Klasse für folgende Operationen:

- den Namen des Lesezeichens angeben
- standardmäßige Benutzerantwort angeben (Initialwert im Eingabefenster enthalten)
- angeben, ob die Nutzerantwort einmal pro a empfangen werden sollte mail merge Betrieb
- den Eingabeaufforderungstext (der Titel des Eingabeaufforderungsfensters)

{{% alert color="primary" %}}

Weitere Details finden Sie in der [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die `ASK` Feld mit DOM zu einem Absatz in einem Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Einfügen `AUTHOR` Feld in ein Dokument ohne Verwendung von DocumentBuilder

Die `AUTHOR` Das Feld wird verwendet, um den Namen des Autors des Dokuments aus dem `Document` Eigenschaften. `AUTHOR` Feld in Word-Dokument kann durch die [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) Klasse. Sie können verwenden **FieldAuthor** Klasse für folgende Operationen:

- den Namen des Dokumentautors angeben

{{% alert color="primary" %}}

Weitere Details finden Sie in der [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die `AUTHOR` Feld mit DOM zu einem Absatz in einem Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Einfügen `INCLUDETEXT` Feld in ein Dokument ohne Verwendung von DocumentBuilder

Die `INCLUDETEXT` Feld fügt den Text und die Grafik in dem im Feldcode genannten Dokument ein. Sie können das gesamte Dokument oder einen Teil des Dokuments einfügen, auf den ein Lesezeichen verweist. Dieses Feld in Word-Dokument wird durch INCLUDETEXT dargestellt. Sie können verwenden [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) Klasse für folgende Operationen:

- Geben Sie den Namen des Lesezeichens des enthaltenen Dokuments an
- den Standort des Dokuments angeben

{{% alert color="primary" %}}

Weitere Details finden Sie in der [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die `INCLUDETEXT` Feld mit DOM zu einem Absatz in einem Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Einfügen `TOA` Feld in ein Dokument ohne Verwendung von DocumentBuilder

Die `TOA` (*Table of Authorities*) Feld baut und fügt eine Tabelle der Behörden ein. Die `TOA` Feld sammelt Einträge, die von `TA` (*Table of Authorities Entry*) Felder. Microsoft Office Word setzt die `TOA` Feld, wenn Sie auf *Insert Tabelle der Behörden* im **Tabelle der Behörden** Gruppe auf der **References** Tab. Wenn Sie die `TOA` Die Syntax sieht so aus:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Weitere Details finden Sie in der [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man die `TOA` Feld mit DOM zu einem Absatz in einem Dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
