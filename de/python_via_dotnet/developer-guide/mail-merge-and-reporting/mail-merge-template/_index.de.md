---
title: Mail Merge Vorlage in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Mail Merge Vorlage
linktitle: Mail Merge Vorlage
type: docs
description: "Erstellen Sie eine Mail Merge-Vorlage, um festen Inhalt in Ausgabedokumenten zu definieren, und generieren Sie dann Seriendruckdokumente mithilfe der Seriendruckfelder in Python."
keywords: "create Mail Merge template python"
weight: 10
url: /de/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Es ist üblich, eine Zusammenführungsvorlage als Basisdokument für eine Mail Merge-Operation zu verwenden, entweder wenn es sich um eine einfache Mail Merge oder Mail Merge mit Regionen handelt. Mail merge mit Regionen ist leistungsfähiger und beliebter als das einfache mail merge. Einfaches Mail Merge wird als ein besonderer Fall von Mail Merge mit Regionen betrachtet, in denen die Region das gesamte Dokument ist. Alles wird im nächsten Artikel "Arten von Mail Merge -Operationen" ausführlicher erläutert.

Die Vorlage stellt sicher, dass der Text im Seriendruckdokument korrekt formatiert ist, und die Operation Mail Merge garantiert, dass der Text aus der Datenquelle korrekt in die Seriendruckvorlage eingegeben wird.

Aspose.Words bietet die Möglichkeit, eine Mail Merge-Vorlage zu erstellen, um festen Inhalt zu definieren und dann Seriendruckdokumente mithilfe der Seriendruckfelder zu generieren. Somit enthält die Seriendruckvorlage den erforderlichen Text, der in allen Ausgabedokumenten gleich ist, und die Seriendruckfelder, um den sich ändernden Inhalt auszufüllen. Infolgedessen werden Informationen aus der angegebenen Datenquelle während der Generierung des Seriendruckdokuments über diese Felder zur Seriendruckvorlage hinzugefügt.

## Was ist eine Mail Merge -Vorlage

Eine Mail Merge-Vorlage ist ein personalisiertes Dokument, das die festen Daten und die zusammengeführten Felder enthält, in denen sich der variable Text befinden soll. Eine Zusammenführungsvorlage kann ein beliebiges Format haben, das Felder unterstützt, z. B.:, DOC, DOCX, DOT, DOTX, RTF. Darüber hinaus können Sie auch das mustache-Template verwenden, das im Artikel "Mustache-Template-Syntax" näher erläutert wird.

Sie können eine Seriendruckvorlage als Vorlage für neue Dokumente erstellen und sie sollte den Haupttext enthalten, der für jede Version des Seriendruckdokuments gleich sein muss. Durch das Hinzufügen von Seriendruckfeldern in der Vorlage werden die Personalisierungsdaten wie Namen oder Adressen dargestellt, die aus einer Datenquelle abgerufen werden. Ein Mail Merge-Vorgang fügt automatisch die Personalisierungsdaten aus Ihrer Datenquelle in Ihr Seriendruckvorlagendokument ein.

Darüber hinaus können Sie Ihrer Vorlage einen Mail Merge -Bereich hinzufügen, indem Sie zwei Mail Merge -Felder einfügen, um den Anfang und das Ende des E-Mail-Bereichs zu markieren. Der nächste Artikel "Arten von Mail Merge -Operationen" erklärt dies ausführlicher.

## Mail Merge-Vorlage erstellen

Sie können eine Vorlage erstellen und ihr bestimmte Seriendruckfelder hinzufügen, die entweder manuell, z. B. mit Microsoft Word, oder programmgesteuert mit Aspose.Words durch die Werte aus der Datenquelle ersetzt werden. In diesem Artikel werden wir uns die programmatische Methode zum Erstellen einer Vorlage ansehen.

Verwenden Sie die Klasse [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), um die erforderliche Zusammenführungsvorlage mit Aspose.Words zu erstellen. Sie können einen Text, ein Seriendruckfeld und einen Zeilenumbruch in eine solche Vorlage mit den Methoden [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) und [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/) einfügen.

Das folgende Codebeispiel zeigt, wie Sie eine Mail Merge-Vorlage erstellen:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

Das Bild unten zeigt die erstellte Vorlage:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Eigenschaften einer Mail Merge-Vorlage anpassen

Mit Aspose.Words können Sie Ihre Vorlage über viele Eigenschaften anpassen. Die Anpassung von Vorlagen wird im Folgenden anhand eines Beispiels für die Anpassung einiger Eigenschaften von Bildern und Text beschrieben.

## Siehe auch

* Für weitere Informationen zum manuellen Erstellen von Vorlagen in Microsoft Word überprüfen Sie bitte die [Erstellen Sie eine Vorlage](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artikel in der Microsoft -Dokumentation
