---
title: Wenden Sie benutzerdefinierte Formatierung auf Felder in C# an
second_title: Aspose.Words für .NET
articleTitle: Wenden Sie benutzerdefinierte Formatierung auf Felder an
linktitle: Wenden Sie benutzerdefinierte Formatierung auf Felder an
description: "Feldergebnisse mit C# formatieren und auswerten."
type: docs
weight: 40
url: /de/net/applying-custom-formatting-to-fields/
---

Manchmal müssen Benutzer benutzerdefinierte Formatierungen auf Felder anwenden. In diesem Artikel sehen wir uns einige Beispiele an, wie dies bewerkstelligt werden kann.

Weitere Optionen finden Sie in der vollständigen Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse im [Feld-Namespace](https://reference.aspose.com/words/net/aspose.words.fields/).

## So wenden Sie eine benutzerdefinierte Formatierung auf das Feldergebnis an

Aspose.Words stellt API für die benutzerdefinierte Formatierung des Feldergebnisses bereit. Sie können eine [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/)-Schnittstelle implementieren, um zu steuern, wie das Feldergebnis formatiert wird. Sie können einen numerischen Formatwechsel anwenden, z. B. \# "#.##", einen Datums-/Uhrzeitformatwechsel, z. B. \@ "TT.MM.JJJJ", und einen Zahlenformatwechsel, z. B. \* Ordinal.

Das folgende Codebeispiel zeigt, wie Sie eine benutzerdefinierte Formatierung für das Feldergebnis anwenden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## So bewerten Sie den `IF`-Zustand

Wenn Sie die `IF`-Bedingung nach mail merge auswerten möchten, können Sie die [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/)-Methode verwenden, die sofort das Ergebnis der Ausdrucksauswertung zurückgibt.

Das folgende Codebeispiel zeigt, wie diese Methode verwendet wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## So wenden Sie eine benutzerdefinierte Formatierung auf ein Zeitfeld an

Standardmäßig aktualisiert Aspose.Words das `TIME`-Feld mit dem Kurzzeitformat der aktuellen Kultur. Wir haben herausgefunden, dass es einen Unterschied zwischen der Microsoft Word-Formatierung und der .NET/Windows-Formatierung sowie zwischen verschiedenen .NET Framework-Versionen gibt. Wenn Sie das `TIME`-Feld entsprechend Ihren Anforderungen formatieren möchten, können Sie dies durch die Implementierung einer [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/)-Schnittstelle erreichen.

Die folgenden Codebeispiele zeigen, wie Sie eine benutzerdefinierte Formatierung auf das `TIME`-Feld anwenden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
