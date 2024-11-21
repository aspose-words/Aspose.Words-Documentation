---
title: Benutzerdefinierte Formatierung auf Felder in C++ anwenden
second_title: Aspose.Words für C++
articleTitle: Benutzerdefinierte Formatierung auf Felder anwenden
linktitle: Benutzerdefinierte Formatierung auf Felder anwenden
description: "Formatieren und bewerten Sie das Feldergebnis mit C++."
type: docs
weight: 40
url: /de/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Benutzer benutzerdefinierte Formatierungen auf Felder anwenden. In diesem Artikel werden wir uns einige Beispiele ansehen, wie dies getan werden kann.

Weitere Optionen finden Sie in der vollständigen Liste der Eigenschaften für jeden Feldtyp in der entsprechenden Klasse in [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## So wenden Sie eine benutzerdefinierte Formatierung auf das Feldergebnis an

Aspose.Words bietet API für die benutzerdefinierte Formatierung des Feldergebnisses. Sie können die [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) -Schnittstelle implementieren, um zu steuern, wie das Feldergebnis formatiert wird. Sie können den numerischen Formatschalter anwenden, z. B. \# "#.##", Datums-/Uhrzeitformatwechsel, z. B. \@ "tt.MM.jjjj" und Zahlenformatwechsel, dh \* Ordnungszahl.

Das folgende Codebeispiel zeigt, wie Sie eine benutzerdefinierte Formatierung für das Feldergebnis anwenden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## So bewerten Sie die `IF` -Bedingung

Wenn Sie die Bedingung `IF` nach mail merge auswerten möchten, können Sie die Methode [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) verwenden, die sofort das Ergebnis der Ausdrucksauswertung zurückgibt.

Das folgende Codebeispiel zeigt, wie diese Methode verwendet wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## So wenden Sie eine benutzerdefinierte Formatierung auf das Zeitfeld an

Standardmäßig aktualisiert Aspose.Words das Feld `TIME` mit dem aktuellen Kulturkurzzeitformat. Wenn Sie das Feld `TIME` entsprechend Ihren Anforderungen formatieren möchten, können Sie dies erreichen, indem Sie die Schnittstelle [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider) implementieren.

Die folgenden Codebeispiele zeigen, wie Sie benutzerdefinierte Formatierungen auf das Feld `TIME` anwenden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
