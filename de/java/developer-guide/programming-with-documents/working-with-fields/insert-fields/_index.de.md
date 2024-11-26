---
title: Felder in Java einfügen
second_title: Aspose.Words für Java
articleTitle: Felder einfügen
linktitle: Felder einfügen
description: "Verschiedene Möglichkeiten, Felder mit Java in Ihr Dokument einzufügen."
type: docs
weight: 20
url: /de/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Es gibt verschiedene Möglichkeiten, Felder in ein Dokument einzufügen:

- verwenden von [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- verwenden von [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- wobei [Aspose.Words Dokumentenobjektmodell (DOM)](/words/java/aspose-words-document-object-model/)

In diesem Artikel werden wir uns jeden Weg genauer ansehen und analysieren, wie bestimmte Felder mit diesen Optionen eingefügt werden.

## Einfügen von Feldern in ein Dokument mit DocumentBuilder

In Aspose.Words wird die Methode [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) verwendet, um neue Felder in ein Dokument einzufügen. Der erste Parameter akzeptiert den vollständigen Feldcode des einzufügenden Felds. Der zweite Parameter ist optional und ermöglicht die manuelle Einstellung des Feldergebnisses des Felds. Wenn dies nicht angegeben wird, wird das Feld automatisch aktualisiert. Sie können null oder empty an diesen Parameter übergeben, um ein Feld mit einem leeren Feldwert einzufügen. Wenn Sie sich über die bestimmte Feldcodesyntax nicht sicher sind, erstellen Sie zuerst das Feld in Microsoft Word und wechseln Sie, um den Feldcode anzuzeigen.

{{% alert color="primary" %}}

Wenn Ihr Feldcode einen Parameter enthält, der ein Leerzeichen enthält, muss er in Sprachmarken eingeschlossen sein. Andernfalls funktioniert das Feld in Microsoft Word und Aspose.Words möglicherweise nicht wie erwartet, da der Parameter von beiden als abgeschnitten behandelt wird.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Seriendruckfeld mit **DocumentBuilder** in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Dieselbe Technik wird verwendet, um Felder einzufügen, die in anderen Feldern verschachtelt sind.

Das folgende Codebeispiel zeigt, wie Felder, die in einem anderen Feld verschachtelt sind, mit **DocumentBuilder** eingefügt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Gebietsschema auf Feldebene angeben

Eine Sprachkennung ist eine internationale numerische Standardabkürzung für die Sprache in einem Land oder einer geografischen Region. Mit Aspose.Words können Sie das Gebietsschema auf Feldebene mithilfe der Eigenschaft [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) angeben, die das Gebietsschema ID des Felds abruft oder festlegt.

Das folgende Codebeispiel zeigt, wie diese Option verwendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Untypisiertes/leeres Feld einfügen

Wenn Sie nicht typisierte / leere Felder ({}) einfügen möchten, wie es Microsoft Word zulässt, können Sie die Methode [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) mit dem Parameter [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) verwenden. Um ein Feld in ein Word-Dokument einzufügen, können Sie die Tastenkombination "Strg + F9" drücken.

Das folgende Codebeispiel zeigt, wie Sie ein leeres Feld in das Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Feld `COMPARE` einfügen

Das Feld `COMPARE` vergleicht zwei Werte und gibt den numerischen Wert 1 zurück, wenn der Vergleich wahr ist, oder 0, wenn der Vergleich falsch ist.

Das folgende Codebeispiel zeigt, wie `COMPARE` Felder mit DocumentBuilder hinzugefügt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Feld `IF` einfügen

Das Feld `IF` kann verwendet werden, um Argumente bedingt auszuwerten.

Das folgende Codebeispiel zeigt, wie `IF` Felder mit DocumentBuilder hinzugefügt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Einfügen von Feldern in ein Dokument mit FieldBuilder

Die alternative Möglichkeit, Felder in Aspose.Words einzufügen, ist die [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) -Klasse. Es bietet eine fließende Schnittstelle zum Angeben von Feldschaltern und Argumentwerten als Text, Knoten oder sogar verschachtelte Felder.

Das folgende Codebeispiel zeigt, wie Sie ein Feld mit **FieldBuilder** in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Felder mit DOM einfügen

Sie können auch verschiedene Arten von Feldern einfügen mit [Aspose.Words Dokumentenobjektmodell (DOM)](/words/java/aspose-words-document-object-model/). In diesem Abschnitt werden wir uns einige Beispiele ansehen.

### Seriendruckfeld mit DOM in ein Dokument einfügen

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- geben Sie den Namen des Seriendruckfelds an
- geben Sie die Formatierung des Seriendruckfelds an
- geben Sie den Text zwischen dem Feldtrennzeichen und dem Feldende des Seriendruckfelds an
- geben Sie den Text an, der nach dem Seriendruckfeld eingefügt werden soll, wenn das Feld nicht leer ist
- geben Sie den Text an, der vor dem Seriendruckfeld eingefügt werden soll, wenn das Feld nicht leer ist

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das Feld `MERGE` mit DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Einfügen von Mail Merge `ADDRESSBLOCK` -Feldern in ein Dokument mit DOM

Das Feld `ADDRESSBLOCK` wird verwendet, um einen Mail Merge -Adressblock in ein Word-Dokument einzufügen. Das Feld `ADDRESSBLOCK` im Word-Dokument kann durch die Klasse [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) dargestellt werden. Sie können die Klasse **FieldAddressBlock** verwenden, um die folgenden Vorgänge auszuführen:

- geben Sie an, ob der Name des Landes/der Region in das Feld aufgenommen werden soll
- geben Sie an, ob die Adresse entsprechend dem Land/der Region des Empfängers formatiert werden soll, wie in POST*CODE definiert (Weltpostverein 2006)
- geben Sie den Namen des ausgeschlossenen Landes/der ausgeschlossenen Region an
- geben Sie das Namens- und Adressformat an
- geben Sie die Sprache ID an, in der die Adresse formatiert wird

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das Feld Mail Merge `ADDRESSBLOCK` mit DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### `ADVANCE`-Feld in ein Dokument einfügen, ohne DocumentBuilder zu verwenden

Das Feld `ADVANCE` wird verwendet, um nachfolgenden Text innerhalb einer Zeile nach links, rechts, oben oder unten zu verschieben. Das Feld `ADVANCE` im Word-Dokument kann durch die Klasse [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) dargestellt werden. Sie können die Klasse **FieldAdvance** verwenden, um folgende Operationen auszuführen:

- geben Sie die Anzahl der Punkte an, um die der Text, der auf das Feld folgt, vertikal vom oberen Rand der Seite verschoben werden soll
- geben Sie die Anzahl der Punkte an, um die der Text, der auf das Feld folgt, horizontal vom linken Rand der Spalte, des Rahmens oder des Textfelds verschoben werden soll
- geben Sie die Anzahl der Punkte an, um die der Text, der auf das Feld folgt, nach links, rechts, oben oder unten verschoben werden soll

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das Feld `ADVANCE` mit DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### `ASK`-Feld in ein Dokument einfügen, ohne DocumentBuilder zu verwenden

Das Feld `ASK` wird verwendet, um den Benutzer zur Eingabe von Text aufzufordern, der einem Lesezeichen im Word-Dokument zugewiesen werden soll. Das Feld `ASK` im Word-Dokument kann durch die Klasse [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) dargestellt werden. Sie können die Klasse **FieldAsk** verwenden, um folgende Operationen auszuführen:

- geben Sie den Namen des Lesezeichens an
- Standardbenutzerantwort angeben (Anfangswert im Eingabeaufforderungsfenster enthalten)
- geben Sie an, ob die Benutzerantwort einmal pro Mail Merge-Vorgang empfangen werden soll
- geben Sie den Eingabeaufforderungstext an (den Titel des Eingabeaufforderungsfensters)

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das Feld `ASK` mit DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### `AUTHOR`-Feld in ein Dokument einfügen, ohne DocumentBuilder zu verwenden

Das Feld `AUTHOR` wird verwendet, um den Namen des Autors des Dokuments aus den Eigenschaften `Document` anzugeben. Das Feld `AUTHOR` im Word-Dokument kann durch die Klasse [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) dargestellt werden. Sie können die Klasse **FieldAuthor** verwenden, um folgende Operationen auszuführen:

- geben Sie den Namen des Dokumentautors an

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das Feld `AUTHOR` mit DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### `INCLUDETEXT`-Feld in ein Dokument einfügen, ohne DocumentBuilder zu verwenden

Das Feld `INCLUDETEXT` fügt den Text und die Grafiken ein, die in dem im Feldcode genannten Dokument enthalten sind. Sie können das gesamte Dokument oder einen Teil des Dokuments einfügen, auf das durch ein Lesezeichen verwiesen wird. Dieses Feld im Word-Dokument wird durch INCLUDETEXT dargestellt. Sie können die Klasse [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) verwenden, um folgende Operationen auszuführen:

- geben Sie den Namen des Lesezeichens des enthaltenen Dokuments an
- geben Sie den Speicherort des Dokuments an

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das Feld `INCLUDETEXT` mit DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### `TOA`-Feld in ein Dokument einfügen, ohne DocumentBuilder zu verwenden

Das Feld `TOA` (*Table of Authorities*) erstellt und fügt eine Tabelle mit Berechtigungen ein. Das Feld `TOA` sammelt Einträge, die mit `TA` (*Table of Authorities Entry*) Feldern gekennzeichnet sind. Microsoft Office Word fügt das Feld `TOA` ein, wenn Sie in der Gruppe **Table of Authorities** auf der Registerkarte **References** auf *Insert Table of Authorities* klicken. Wenn Sie das Feld `TOA` in Ihrem Dokument anzeigen, sieht die Syntax folgendermaßen aus:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das Feld `TOA` mit DOM zu einem Absatz in einem Dokument hinzufügen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
