---
title: Felder in C# einfügen
second_title: Aspose.Words für .NET
articleTitle: Felder einfügen
linktitle: Felder einfügen
description: "So fügen Sie mit C# Felder in ein Dokument ein – lernen Sie anhand von Codebeispielen verschiedene Möglichkeiten kennen."
type: docs
weight: 20
url: /de/net/inserting-fields/
---

Es gibt verschiedene Möglichkeiten, Felder in ein Dokument einzufügen:

* mit [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* mit [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* mit [Aspose.Words Document Object Model (DOM)](/words/de/net/aspose-words-document-object-model/)

In diesem Artikel werden wir uns die einzelnen Möglichkeiten genauer ansehen und analysieren, wie bestimmte Felder mithilfe dieser Optionen eingefügt werden.

## Einfügen von Feldern in ein Dokument mit DocumentBuilder

In Aspose.Words wird die [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/)-Methode verwendet, um neue Felder in ein Dokument einzufügen. Der erste Parameter akzeptiert den vollständigen Feldcode des einzufügenden Feldes. Der zweite Parameter ist optional und ermöglicht die manuelle Einstellung des Feldergebnisses des Feldes. Wenn dies nicht angegeben wird, wird das Feld automatisch aktualisiert. Sie können diesem Parameter null oder leer übergeben, um ein Feld mit einem leeren Feldwert einzufügen. Wenn Sie sich über die Syntax des jeweiligen Feldcodes nicht sicher sind, erstellen Sie das Feld zunächst in Microsoft Word und wechseln Sie, um den Feldcode anzuzeigen.

{{% alert color="primary" %}}

Wenn Ihr Feldcode einen Parameter enthält, der ein Leerzeichen enthält, muss dieser in Sprachzeichen eingeschlossen werden. Andernfalls funktioniert das Feld sowohl in Microsoft Word als auch in Aspose.Words möglicherweise nicht wie erwartet, da der Parameter von beiden als abgeschnitten behandelt wird.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man mithilfe von **DocumentBuilder** ein Zusammenführungsfeld in ein Dokument einfügt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Die gleiche Technik wird zum Einfügen von Feldern verwendet, die in anderen Feldern verschachtelt sind.

Das folgende Codebeispiel zeigt, wie Sie mithilfe von **DocumentBuilder** Felder einfügen, die in einem anderen Feld verschachtelt sind:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Geben Sie das Gebietsschema auf Feldebene an

Eine Sprachkennung ist eine standardmäßige internationale numerische Abkürzung für die Sprache in einem Land oder einer geografischen Region. Mit Aspose.Words können Sie das Gebietsschema auf Feldebene mithilfe der [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/)-Eigenschaft angeben, die die Gebietsschema-ID des Felds abruft oder festlegt.

Das folgende Codebeispiel zeigt, wie diese Option verwendet wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Untypisiertes/Leeres Feld einfügen

Wenn Sie untypisierte/leere Felder ({}) einfügen möchten, wie es Microsoft Word zulässt, können Sie die [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/)-Methode mit dem [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/)-Parameter verwenden. Um ein Feld in ein Word-Dokument einzufügen, können Sie die Tastenkombination "Strg + F9" drücken.

Das folgende Codebeispiel zeigt, wie man ein leeres Feld in das Dokument einfügt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Einfügen von Feldern in ein Dokument mit FieldBuilder
Die alternative Möglichkeit, Felder in Aspose.Words einzufügen, ist die [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)-Klasse. Es bietet eine flüssige Schnittstelle zur Angabe von Feldschaltern und Argumentwerten als Text, Knoten oder sogar verschachtelte Felder.

Das folgende Codebeispiel zeigt, wie man mit **FieldBuilder** ein Feld in ein Dokument einfügt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Einfügen von Feldern mit DOM

Sie können mit [Aspose.Words Document Object Model (DOM)](/words/de/net/aspose-words-document-object-model/) auch verschiedene Arten von Feldern einfügen. In diesem Abschnitt werden wir uns einige Beispiele ansehen.

### Einfügen eines Zusammenführungsfelds in ein Dokument mithilfe von DOM

Das `MERGEFIELD`-Feld in einem Word-Dokument kann durch die [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/)-Klasse dargestellt werden. Mit der **FieldMergeField**-Klasse können Sie die folgenden Vorgänge ausführen:

- Geben Sie den Namen des Zusammenführungsfelds an
- Geben Sie die Formatierung des Zusammenführungsfelds an
- Geben Sie den Text an, der zwischen dem Feldtrennzeichen und dem Feldende des Zusammenführungsfelds steht
- Geben Sie den Text an, der nach dem Zusammenführungsfeld eingefügt werden soll, wenn das Feld nicht leer ist
- Geben Sie den Text an, der vor dem Zusammenführungsfeld eingefügt werden soll, wenn das Feld nicht leer ist

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das `MERGE`-Feld mithilfe von DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Einfügen eines Mail Merge-`ADDRESSBLOCK`-Felds in ein Dokument mithilfe von DOM

Das `ADDRESSBLOCK`-Feld wird zum Einfügen eines mail merge-Adressblocks in ein Word-Dokument verwendet. Das `ADDRESSBLOCK`-Feld in einem Word-Dokument kann durch die [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/)-Klasse dargestellt werden. Mit der **FieldAddressBlock**-Klasse können Sie die folgenden Vorgänge ausführen:

- Geben Sie an, ob der Name des Landes/der Region in das Feld aufgenommen werden soll
- Geben Sie an, ob die Adresse entsprechend dem Land/der Region des Empfängers formatiert werden soll, wie in POST*CODE (Universal Postal Union 2006) definiert
- Geben Sie den Namen des ausgeschlossenen Landes/der ausgeschlossenen Region an
- Geben Sie das Namens- und Adressformat an
- Geben Sie die Sprach-ID an, die zum Formatieren der Adresse verwendet wird

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie das Mail Merge-`ADDRESSBLOCK`-Feld mithilfe von DOM zu einem Absatz in einem Dokument hinzugefügt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Einfügen eines `ADVANCE`-Felds in ein Dokument ohne Verwendung von DocumentBuilder

Das `ADVANCE`-Feld wird verwendet, um nachfolgenden Text innerhalb einer Zeile nach links, rechts, oben oder unten zu verschieben. Das `ADVANCE`-Feld in einem Word-Dokument kann durch die [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/)-Klasse dargestellt werden. Mit der **FieldAdvance**-Klasse können Sie die folgenden Vorgänge ausführen:

- Geben Sie die Anzahl der Punkte an, um die der Text, der dem Feld folgt, vertikal vom oberen Rand der Seite verschoben werden soll
- Geben Sie die Anzahl der Punkte an, um die der Text, der dem Feld folgt, horizontal vom linken Rand der Spalte, des Rahmens oder des Textfelds verschoben werden soll
- Geben Sie die Anzahl der Punkte an, um die der Text, der dem Feld folgt, nach links, rechts, oben oder unten verschoben werden soll

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das `ADVANCE`-Feld mithilfe von DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Einfügen eines `ASK`-Felds in ein Dokument ohne Verwendung von DocumentBuilder

Das `ASK`-Feld wird verwendet, um den Benutzer zur Eingabe von Text aufzufordern, der einem Lesezeichen im Word-Dokument zugewiesen werden soll. Das `ASK`-Feld in einem Word-Dokument kann durch die [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/)-Klasse dargestellt werden. Mit der **FieldAsk**-Klasse können Sie die folgenden Vorgänge ausführen:

- Geben Sie den Namen des Lesezeichens an
- Geben Sie die Standardreaktion des Benutzers an (Anfangswert im Eingabeaufforderungsfenster enthalten)
- Geben Sie an, ob die Benutzerantwort einmal pro mail merge-Vorgang empfangen werden soll
- Geben Sie den Eingabeaufforderungstext (den Titel des Eingabeaufforderungsfensters) an

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das `ASK`-Feld mithilfe von DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Einfügen eines `AUTHOR`-Felds in ein Dokument ohne Verwendung von DocumentBuilder

Das `AUTHOR`-Feld wird verwendet, um den Namen des Dokumentautors aus den `Document`-Eigenschaften anzugeben. Das `AUTHOR`-Feld in einem Word-Dokument kann durch die [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/)-Klasse dargestellt werden. Mit der **FieldAuthor**-Klasse können Sie die folgenden Vorgänge ausführen:

- Geben Sie den Namen des Dokumentautors an

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das `AUTHOR`-Feld mithilfe von DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Einfügen eines `INCLUDETEXT`-Felds in ein Dokument ohne Verwendung von DocumentBuilder

Das `INCLUDETEXT`-Feld fügt den Text und die Grafiken ein, die in dem im Feldcode genannten Dokument enthalten sind. Sie können das gesamte Dokument oder einen Teil des Dokuments einfügen, auf den ein Lesezeichen verweist. Dieses Feld im Word-Dokument wird durch INCLUDETEXT dargestellt. Mit der [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/)-Klasse können Sie die folgenden Vorgänge ausführen:

- Geben Sie den Namen des Lesezeichens des enthaltenen Dokuments an
- Geben Sie den Speicherort des Dokuments an

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das `INCLUDETEXT`-Feld mithilfe von DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Einfügen eines `TOA`-Felds in ein Dokument ohne Verwendung von DocumentBuilder

Das `TOA`-Feld (*Table of Authorities*) erstellt und fügt ein Verzeichnis der Autoritäten ein. Das `TOA`-Feld sammelt Einträge, die durch `TA`-Felder (*Table of Authorities Entry*) gekennzeichnet sind. Microsoft Office Word fügt das `TOA`-Feld ein, wenn Sie in der **Tabelle der Autoritäten**-Gruppe auf der Registerkarte "**References**" auf *Autorenverzeichnis einfügen* klicken. Wenn Sie das `TOA`-Feld in Ihrem Dokument anzeigen, sieht die Syntax wie folgt aus:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Weitere Einzelheiten finden Sie in der [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/)-Klasse API.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie das `TOA`-Feld mithilfe von DOM zu einem Absatz in einem Dokument hinzufügen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
