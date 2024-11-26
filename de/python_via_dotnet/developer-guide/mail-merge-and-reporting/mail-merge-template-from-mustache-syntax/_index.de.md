---
title: Mail Merge Mustache Syntax
second_title: Aspose.Words für Python via .NET
articleTitle: Mail Merge Vorlage aus Mustache Syntax
linktitle: Mail Merge Vorlage aus Mustache Syntax
type: docs
description: "Erstellen Sie Vorlagen mit Mustache -Syntax mit Python. Die Mustache-Syntax ist die einzige Option, die bei Vorlagen verwendet werden kann, die keine Felder enthalten (HTML oder TXT). Bei Word-Vorlagen haben Sie zwei Möglichkeiten: Felder oder Mustache-Syntax."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /de/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Mit Aspose.Words können Sie zusätzlich zu den bekannten Vorlagen Vorlagen mit mustache-Syntax erstellen. A Mustache ist eine alternative Variante der Vorlagensyntax, die aus Tag-Namen besteht, die von `{{ }}` eingeschlossen sind und von einem Modellobjekt unterstützt werden, das die Daten für die Vorlage enthält.

Die Mustache-Syntax ist die einzige Option für Vorlagen, die keine Felder enthalten, z. B. HTML- und TXT-Vorlagen. Bei Word -Vorlagen haben Sie zwei Möglichkeiten, entweder Felder oder Mustache -Syntax zu verwenden.

Die Mustache -Syntax unterstützt das *foreach* -Tag, das eine Alternative für die Verwendung von Mail Merge mit Regionen darstellt. Der Vorteil ist also, dass Sie die mustache -Syntax verwenden können, wenn Sie aus irgendeinem Grund keine Seriendruckfelder und Zusammenführungsbereiche verwenden können oder einfach nicht möchten.

Sie können Mail Merge -Felder auch mit einigen zusätzlichen Feldern kombinieren, indem Sie das *foreach* -Tag verwenden, wie in der Abbildung unten gezeigt.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Mustache-Vorlage erstellen

Der erste wichtige Punkt, der klargestellt werden muss, ist, dass Mustache keine Template-Engine ist. Mustache ist eine weitere Syntaxvariante, die für jede Vorlage in einer [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) verfügbar ist, die von Aspose.Words unterstützt wird. Daher können Sie eine solche Vorlage sowohl programmgesteuert als auch über eine Schnittstelle erstellen.Sie müssen lediglich eine bestimmte Syntax angeben und die Mustache -Spezifikation einhalten.

Nehmen wir an, Sie müssen dieselbe E-Mail an 50 Empfänger senden, um die Begrüßung mit den entsprechenden Vornamen zu personalisieren. Sie könnten den Vornamen des Empfängers durch einen Platzhalter wie den folgenden ersetzen:

> Dear {{FirstName}}
>
> I hereby...

Die Frage hier: Wie können Sie 50 E-Mails aus 1 einzelnen Mustache Vorlage erstellen? Um dies zu beantworten, müssen Sie eine Mail Merge mit Regionen ausführen, um die geschweiften Klammern für Platzhalter in der Vorlage mit tatsächlichen Daten zu füllen und ein Ausgabedokument zu generieren.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Wie Sie im obigen Beispiel sehen, müssen Sie in Mustache geschweifte Klammern für Platzhalter verwenden, die wie mustache aussehen, wenn Sie die geschweiften Klammern um 90 Grad im Uhrzeigersinn drehen.

{{% /alert %}}

## Mit Mustache -Syntax arbeiten

Mustache wird als logische Reihenfolge dargestellt, da ihm spezifische Kontrollflussanweisungen wie *for* -Schleifen und *if* - und *else* -Bedingungen fehlen. Sie können jedoch die Abschnitts-Tags Verarbeitungslisten und Lambdas verwenden, um eine bedingte Auswertung und Schleife zu erreichen. Um die Mustache -Syntax in die Mail Merge -Operation aufzunehmen, müssen Sie die Eigenschaft [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) verwenden und ihren Wert auf *True* setzen.

## Verwenden Sie `IF` -Felder, um eine Mail Merge intelligent zu machen

Mit Aspose.Words können Sie Mail Merge-Felder und Mustache-Tags mit der `IF`-Anweisung verwenden. Die `IF`-Felder können in jedem Mail Merge-Dokument verwendet werden, um unerwünschte Leerzeichen und Kommas zu unterdrücken, wenn ein Feld leer ist.

Die Feldformel `IF` wird unten angezeigt:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Hier kann die Bedingung entweder ein Seriendruckfeld oder ein Mustache-Tag sein.

Sie können beispielsweise `IF` -Felder verwenden, wenn Sie je nach Geschlecht "sein", "sie", "er" oder "sie" wie folgt einfügen müssen:

**{ IF { MERGEFIELD Gender } = "MALE" " wahrer Text" "falscher Text" }**

**{ IF "{{ GENDER }}" = "MALE" " wahrer Text" "falscher Text" }**

Das folgende Codebeispiel zeigt, wie eine Mail Merge-Operation mit Mustache-Tags und `IF`-Feldern ausgeführt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie die Eigenschaft [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) anwenden:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

Und nach dem Anwenden der Eigenschaft [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
