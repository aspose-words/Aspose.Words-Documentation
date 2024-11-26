---
title: Mail Merge Vorlage in Java
second_title: Aspose.Words für Java
articleTitle: Mail Merge Vorlage
linktitle: Mail Merge Vorlage
type: docs
description: "Erstellen Sie eine Mail Merge-Vorlage, um festen Inhalt in Ausgabedokumenten zu definieren, und generieren Sie dann Seriendruckdokumente mithilfe der Seriendruckfelder in Java."
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /de/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Es ist üblich, eine Zusammenführungsvorlage als Basisdokument für eine Mail Merge-Operation zu verwenden, entweder wenn es sich um eine einfache Mail Merge oder Mail Merge mit Regionen handelt. Mail merge mit Regionen ist leistungsfähiger und beliebter als das einfache mail merge. Eine einfache Mail Merge wird als ein besonderer Fall von Mail Merge mit Regionen betrachtet, in denen die Region das gesamte Dokument ist. Alles wird im nächsten Artikel "Arten von Mail Merge -Operationen" ausführlicher erläutert.

Die Vorlage stellt sicher, dass der Text im Seriendruckdokument korrekt formatiert ist, und die Operation Mail Merge garantiert, dass der Text aus der Datenquelle korrekt in die Seriendruckvorlage eingegeben wird.

Aspose.Words bietet die Möglichkeit, eine Mail Merge-Vorlage zu erstellen, um festen Inhalt zu definieren und dann Seriendruckdokumente mithilfe der Seriendruckfelder zu generieren. Somit enthält die Seriendruckvorlage den erforderlichen Text, der in allen Ausgabedokumenten gleich ist, und die Seriendruckfelder, um den sich ändernden Inhalt auszufüllen. Infolgedessen werden Informationen aus der angegebenen Datenquelle während der Generierung des Seriendruckdokuments über diese Felder zur Seriendruckvorlage hinzugefügt.

## Was ist eine Mail Merge -Vorlage

Eine Mail Merge-Vorlage ist ein personalisiertes Dokument, das die festen Daten und die zusammengeführten Felder enthält, in denen sich der variable Text befinden soll. Eine Zusammenführungsvorlage kann ein beliebiges Format haben, das Felder unterstützt, z. B.:, DOC, DOCX, DOT, DOTX, RTF. Darüber hinaus können Sie auch das mustache-Template verwenden, das im Artikel "Mustache-Template-Syntax" näher erläutert wird.

Sie können eine Seriendruckvorlage als Vorlage für neue Dokumente erstellen und sie sollte den Haupttext enthalten, der für jede Version des Seriendruckdokuments gleich sein muss. Durch das Hinzufügen von Seriendruckfeldern in der Vorlage werden die Personalisierungsdaten wie Namen oder Adressen dargestellt, die aus einer Datenquelle abgerufen werden. Ein Mail Merge-Vorgang fügt automatisch die Personalisierungsdaten aus Ihrer Datenquelle in Ihr Seriendruckvorlagendokument ein.

Darüber hinaus können Sie Ihrer Vorlage einen Mail Merge -Bereich hinzufügen, indem Sie zwei Mail Merge -Felder einfügen, um den Anfang und das Ende des E-Mail-Bereichs zu markieren. Der nächste Artikel "Arten von Mail Merge -Operationen" erklärt dies ausführlicher.

## Mail Merge-Vorlage erstellen

Sie können eine Vorlage erstellen und ihr bestimmte Seriendruckfelder hinzufügen, die entweder manuell, z. B. mit Microsoft Word, oder programmgesteuert mit Aspose.Words durch die Werte aus der Datenquelle ersetzt werden. In diesem Artikel werden wir uns die programmatische Methode zum Erstellen einer Vorlage ansehen.

Verwenden Sie die Klasse [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), um die erforderliche Zusammenführungsvorlage mit Aspose.Words zu erstellen. Sie können einen Text, ein Seriendruckfeld und einen Zeilenumbruch in eine solche Vorlage einfügen, indem Sie die [InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), und [InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph()) Methoden.

Das folgende Codebeispiel zeigt, wie Sie eine Mail Merge-Vorlage erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

Das Bild unten zeigt die erstellte Vorlage:

<img src="/words/java/mail-merge-template/mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## Eigenschaften einer Mail Merge-Vorlage anpassen

Mit Aspose.Words können Sie Ihre Vorlage über viele Eigenschaften anpassen. Die Anpassung von Vorlagen wird im Folgenden anhand eines Beispiels für die Anpassung einiger Eigenschaften von Bildern und Text beschrieben.

### Bildeigenschaften anpassen

Sie können die Bildeigenschaften mit der Klasse [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) angeben. Beachten Sie, dass Sie ein Bild aus einer Datenbank einfügen können, wie es in beschrieben ist [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

Das folgende Codebeispiel zeigt, wie Sie den Namen und die Größe der Bilddatei angeben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### Texteigenschaften anpassen

Sie können die Klassen [Text]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text ) Eigenschaft zum Einfügen von Text in das Dokument für das aktuelle Seriendruckfeld. Außerdem können Sie die Formatierung von Texten und Absätzen in Ihrer Vorlage mit [Schriftart] ändern](https://reference.aspose.com/words/java/com.aspose.words/font/) und [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) verwenden. Sie können den Text, der vor oder nach dem Seriendruckfeld eingefügt werden soll, mithilfe der Eigenschaften [TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore) und [TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter) behandeln, die in der Klasse [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) enthalten sind.

Das folgende Codebeispiel zeigt, wie Kontrollkästchen oder HTML während des Mail Merge -Vorgangs eingefügt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Sie können die Implementierung der Klasse `HandleMergeField` auch von überprüfen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## Siehe auch

* Für weitere Informationen zum manuellen Erstellen von Vorlagen in Microsoft Word überprüfen Sie bitte die [Erstellen Sie eine Vorlage](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel in der Microsoft -Dokumentation
