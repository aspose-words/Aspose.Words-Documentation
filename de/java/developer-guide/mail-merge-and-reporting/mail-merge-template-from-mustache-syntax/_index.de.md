---
title: Mail Merge Vorlage aus Mustache Syntax
second_title: Aspose.Words für Java
articleTitle: Mail Merge Vorlage aus Mustache Syntax
linktitle: Mail Merge Vorlage aus Mustache Syntax
type: docs
description: "Erstellen Sie Vorlagen mit Mustache -Syntax. Die Mustache-Syntax ist die einzige Option, die bei Vorlagen verwendet werden kann, die keine Felder enthalten (HTML oder TXT). Bei Word-Vorlagen haben Sie zwei Möglichkeiten: Felder oder Mustache-Syntax mit Java."
keywords: "mail merge template mustache syntax java, Mail Merge java, mustache syntax java"
weight: 40
url: /de/java/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Mit Aspose.Words können Sie zusätzlich zu den bekannten Vorlagen Vorlagen mit mustache-Syntax erstellen. A Mustache ist eine alternative Variante der Vorlagensyntax, die aus Tag-Namen besteht, die von einem Modellobjekt eingeschlossen sind und von diesem unterstützt werden, das die Daten für die Vorlage enthält.

Die Mustache-Syntax ist die einzige Option, die bei Vorlagen verwendet werden kann, die keine Felder enthalten, z. B. HTML- und TXT-Vorlagen. Bei Word-Vorlagen haben Sie zwei Möglichkeiten, entweder Felder oder die Mustache -Syntax zu verwenden.

Die Mustache -Syntax unterstützt das *foreach* -Tag, das eine Alternative für die Verwendung von Mail Merge mit Regionen darstellt. Der Vorteil ist also, dass Sie die mustache -Syntax verwenden können, wenn Sie aus irgendeinem Grund keine Seriendruckfelder und Zusammenführungsbereiche verwenden können oder einfach nicht möchten.

Sie können Mail Merge -Felder auch mit einigen zusätzlichen Feldern kombinieren, indem Sie das *foreach* -Tag verwenden, wie in der Abbildung unten gezeigt.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax.png" alt="mustache_syntax_aspose_words_java" style="width:800px"/>

## Mustache-Vorlage erstellen

Der erste wichtige Punkt, der klargestellt werden muss, ist, dass Mustache keine Template-Engine ist. Mustache ist eine weitere Syntaxvariante, die für jede Vorlage in einer [format laden](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) verfügbar ist, die von Aspose.Words unterstützt wird. Daher können Sie eine solche Vorlage sowohl programmgesteuert als auch über eine Schnittstelle erstellen.Sie müssen lediglich eine bestimmte Syntax angeben und die Mustache -Spezifikation einhalten.

Nehmen wir an, Sie müssen dieselbe E-Mail an 50 Empfänger senden, um die Begrüßung mit den entsprechenden Vornamen zu personalisieren. Sie könnten den Vornamen des Empfängers durch einen Platzhalter wie den folgenden ersetzen:

> Dear {{FirstName}}
>
> I hereby...

Die Frage hier: Wie können Sie 50 E-Mails aus 1 einzelnen Mustache Vorlage erstellen? Um dies zu beantworten, müssen Sie eine Mail Merge mit Regionen ausführen, um die geschweiften Klammern für Platzhalter in der Vorlage mit tatsächlichen Daten zu füllen und ein Ausgabedokument zu generieren.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-template.png" alt="mustache_template_aspose_words_java" style="width:650px"/>

{{% alert color="primary" %}}

Wie Sie im obigen Beispiel sehen, müssen Sie in Mustache geschweifte Klammern für Platzhalter verwenden, die wie mustache aussehen, wenn Sie die geschweiften Klammern um 90 Grad im Uhrzeigersinn drehen.

{{% /alert %}}

## Mit Mustache -Syntax arbeiten

Mustache wird als logische Reihenfolge dargestellt, da ihm spezifische Kontrollflussanweisungen wie *for* -Schleifen und *if* - und *else* -Bedingungen fehlen. Sie können jedoch die Abschnitts-Tags Verarbeitungslisten und Lambdas verwenden, um eine bedingte Auswertung und Schleife zu erreichen. Um die Mustache -Syntax in die Mail Merge -Operation aufzunehmen, müssen Sie die Eigenschaft [UseNonMergeFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getUseNonMergeFields) verwenden und ihren Wert auf *True* setzen.

Das folgende Codebeispiel zeigt, wie die Mustache -Tags durch bestimmte Daten ersetzt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-MustacheSyntaxUsingDataTable.java" >}}

Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie Mail Merge mit Regionen ausführen und die Eigenschaft **UseNonMergeFields** anwenden:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-1.png" alt="mustache_syntax_aspose_words_java" style="width:400px"/>

{{% alert color="primary" %}}

Ein Abschnitt beginnt mit einem Pfund und endet mit einem Schrägstrich. Das heißt, `{{#foreach list}}` beginnt einen "foreach" -Abschnitt, während `{{/foreach list}}` ihn beendet.

{{% /alert %}}

Und nach dem Anwenden der Mail Merge mit Regionen:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-2.png" alt="mustache_syntax_result_aspose_words_java" style="width:300px"/>

## Verwenden Sie `IF` -Felder, um eine Mail Merge intelligent zu machen

Mit Aspose.Words können Sie Mail Merge-Felder und Mustache-Tags mit der `IF`-Anweisung verwenden. Die `IF`-Felder können in jedem Mail Merge-Dokument verwendet werden, um unerwünschte Leerzeichen und Kommas zu unterdrücken, wenn ein Feld leer ist.

Die Feldformel `IF` wird unten angezeigt:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Hier kann die Bedingung entweder ein Seriendruckfeld oder ein Mustache-Tag sein.

Sie können beispielsweise `IF` -Felder verwenden, wenn Sie je nach Geschlecht "sein", "sie", "er" oder "sie" wie folgt einfügen müssen:

**{ IF { MERGEFIELD Gender } = "MALE" " wahrer Text" "falscher Text" }**

**{ IF "{{ GENDER }}" = "MALE" " wahrer Text" "falscher Text" }**

Das folgende Codebeispiel zeigt, wie eine Mail Merge-Operation mit Mustache-Tags und `IF`-Feldern ausgeführt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-UseOfIfElseMustacheSyntax.java" >}}

Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie die Eigenschaft **UseNonMergeFields** anwenden:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-1.png" alt="mustache_if_field_aspose_words_java" style="width:800px"/>

Und nach dem Anwenden der Eigenschaft **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-2.png" alt="mustache_if_field_2_aspose_words_java" style="width:800px"/>
