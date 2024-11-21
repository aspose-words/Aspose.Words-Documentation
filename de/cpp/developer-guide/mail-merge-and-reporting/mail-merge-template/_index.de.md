---
title: Mail Merge Vorlage in C++
second_title: Aspose.Words für C++
articleTitle: Mail Merge Vorlage
linktitle: Mail Merge Vorlage
type: docs
description: "Erstellen Sie eine mail merge-Vorlage, um festen Inhalt in Ausgabedokumenten zu definieren, und generieren Sie dann Seriendruckdokumente mithilfe der Seriendruckfelder."
keywords: "create mail merge template с++"
weight: 10
url: /de/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Es ist üblich, eine Zusammenführungsvorlage als Basisdokument für eine mail merge-Operation zu verwenden, entweder wenn es sich um eine einfache mail merge oder mail merge mit Regionen handelt. Mail merge mit Regionen ist leistungsfähiger und beliebter als das einfache mail merge. Einfaches mail merge wird als ein besonderer Fall von mail merge mit Regionen betrachtet, in denen die Region das gesamte Dokument ist. Alles wird im nächsten Artikel "Arten von Mail Merge Operationen" ausführlicher erläutert.

Die Vorlage stellt sicher, dass der Text im Seriendruckdokument korrekt formatiert ist, und die Operation mail merge garantiert, dass der Text aus der Datenquelle korrekt in die Seriendruckvorlage eingegeben wird.

Aspose.Words bietet die Möglichkeit, eine mail merge-Vorlage zu erstellen, um festen Inhalt zu definieren und dann Seriendruckdokumente mithilfe der Seriendruckfelder zu generieren. Somit enthält die Seriendruckvorlage den erforderlichen Text, der in allen Ausgabedokumenten gleich ist, und die Seriendruckfelder, um den sich ändernden Inhalt auszufüllen. Infolgedessen werden Informationen aus der angegebenen Datenquelle während der Generierung des Seriendruckdokuments über diese Felder zur Seriendruckvorlage hinzugefügt.

## Was ist eine Mail Merge -Vorlage

Eine mail merge-Vorlage ist ein personalisiertes Dokument, das die festen Daten und die zusammengeführten Felder enthält, in denen sich der variable Text befinden soll. Eine Zusammenführungsvorlage kann ein beliebiges Format haben, das Felder unterstützt, z. B.:, DOC, DOCX, DOT, DOTX, RTF. Darüber hinaus können Sie auch das mustache-Template verwenden, das im Artikel "Mustache-Template-Syntax" näher erläutert wird.

Sie können eine Seriendruckvorlage als Vorlage für neue Dokumente erstellen und sie sollte den Haupttext enthalten, der für jede Version des Seriendruckdokuments gleich sein muss. Durch das Hinzufügen von Seriendruckfeldern in der Vorlage werden die Personalisierungsdaten wie Namen oder Adressen dargestellt, die aus einer Datenquelle abgerufen werden. Ein mail merge-Vorgang fügt automatisch die Personalisierungsdaten aus Ihrer Datenquelle in Ihr Seriendruckvorlagendokument ein.

Darüber hinaus können Sie Ihrer Vorlage einen mail merge -Bereich hinzufügen, indem Sie zwei mail merge -Felder einfügen, um den Anfang und das Ende des E-Mail-Bereichs zu markieren. Der nächste Artikel "Arten von Mail Merge Operationen" erklärt das genauer.

## Mail Merge-Vorlage erstellen

Sie können eine Vorlage erstellen und ihr bestimmte Seriendruckfelder hinzufügen, die entweder manuell, z. B. mit Microsoft Word, oder programmgesteuert mit Aspose.Words durch die Werte aus der Datenquelle ersetzt werden. In diesem Artikel werden wir uns die programmatische Methode zum Erstellen einer Vorlage ansehen.

Verwenden Sie die Klasse [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), um die erforderliche Zusammenführungsvorlage mit Aspose.Words zu erstellen. Sie können einen Text, ein Seriendruckfeld und einen Zeilenumbruch in eine solche Vorlage mit den Methoden [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) und [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/) einfügen.

Das folgende Codebeispiel zeigt, wie Sie eine mail merge-Vorlage erstellen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

Das Bild unten zeigt die erstellte Vorlage:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Eigenschaften einer Mail Merge-Vorlage anpassen

Mit Aspose.Words können Sie Ihre Vorlage über viele Eigenschaften anpassen. Die Anpassung von Vorlagen wird im Folgenden anhand eines Beispiels für die Anpassung einiger Eigenschaften von Bildern und Text beschrieben.

### Bildeigenschaften anpassen

Sie können die Bildeigenschaften mit der Klasse [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/) angeben.

Das folgende Codebeispiel zeigt, wie Sie den Namen und die Größe der Bilddatei angeben:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Texteigenschaften anpassen

Sie können die Eigenschaft [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) verwenden, um Text für das aktuelle Seriendruckfeld in das Dokument einzufügen. Außerdem können Sie die Formatierung von Texten und Absätzen in Ihrer Vorlage mithilfe der Klassen [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) und [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) ändern. Sie können den Text, der vor oder nach dem Seriendruckfeld eingefügt werden soll, mithilfe der Eigenschaften [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) und [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) behandeln, die in der Klasse [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) enthalten sind.

Das folgende Codebeispiel zeigt, wie Kontrollkästchen oder HTML während des mail merge -Vorgangs eingefügt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Sie können die Implementierung der Klasse `HandleMergeField` auch von überprüfen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Siehe auch

* Für weitere Informationen zum manuellen Erstellen von Vorlagen in Microsoft Word überprüfen Sie bitte die [Erstellen Sie eine Vorlage](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel in der Microsoft -Dokumentation
