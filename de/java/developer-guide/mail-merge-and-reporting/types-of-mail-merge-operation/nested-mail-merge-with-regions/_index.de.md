---
title: Verschachtelt Mail Merge mit Regionen in Java
second_title: Aspose.Words für Java
articleTitle: Verschachtelt Mail Merge mit Regionen
linktitle: Verschachtelt Mail Merge mit Regionen
type: docs
description: "Führen Sie eine Mail Merge-Operation mit verschachtelten Bereichen aus. Die verschachtelte Zusammenführung ist eine Funktion, mit der Sie hierarchische Daten aus Ihrer Datenquelle mit Java in Ihre Zusammenführungsvorlage zusammenführen können."
keywords: "mail merge with nested regions Java, Nested Mail Merge Regions"
weight: 10
url: /de/java/nested-mail-merge-with-regions/
timestamp: 2024-01-27-14-07-04
---

In einigen Szenarien müssen Sie möglicherweise verschachtelte Mail Merge mit Regionen verwenden. Verschachtelter Seriendruck ist eine Funktion, mit der Sie hierarchische Daten aus Ihrer Datenquelle in Ihre Seriendruckvorlage zusammenführen können, um Ihr Dokument einfach zu füllen. Grundsätzlich werden die hierarchischen Daten als Satz von Datenelementen dargestellt, und hierarchische Beziehungen beschreiben, wie die Datenelemente miteinander in Beziehung stehen (ein Datenelement ist das übergeordnete Element eines anderen).

Mit Aspose.Words können Sie eine Mail Merge-Operation mit verschachtelten Bereichen ausführen. Sie können diese Funktion verwenden, wenn Sie über eine Datenquelle verfügen, die in einer baumartigen Struktur organisiert ist, und Sie eine Mail Merge-Operation ausführen möchten, um eine Vorlage mit hierarchischen Daten zu füllen.

{{% alert color="primary" %}}

Verschachteltes Mail Merge ist nur relevant, wenn Mail Merge mit Regionen ausgeführt wird.

{{% /alert %}}

## Was ist eine verschachtelte Mail Merge

Die Mail Merge -Region wird als verschachtelt bezeichnet, wenn Sie zwei oder mehr Mail Merge -Regionen haben, von denen sich eine in hierarchischer Form in der anderen befindet. Beachten Sie, dass jede Region Daten aus einer Tabelle enthält.

Das häufigste Beispiel für eine verschachtelte Mail Merge ist eine Bestellung, die mehrere Elemente enthält, bei der Sie mehrere Datentabellen verknüpfen und die Informationen in einer Vorlage darstellen müssen.

Das Bild unten zeigt zwei verschachtelte Regionen, in denen die Region *Order* Mail Merge die übergeordnete Region der Region *Item* Mail Merge ist.

<img src="/words/java/nested-mail-merge-with-regions/nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions_aspose_words_java" style="width:650px"/>

## So verarbeiten Sie Mail Merge mit verschachtelten Regionen

Die Daten, die zu einer Vorlage zusammengeführt werden sollen, können aus verschiedenen Quellen stammen, hauptsächlich relationalen Datenbanken oder XML Dokumenten. In unserem Beispiel werden wir eine XML -Datei verwenden, um unsere Daten zu speichern und direkt in die **DataSet** zu laden.

Aspose.Words ermöglicht die Verarbeitung von Mail Merge mit verschachtelten Regionen unter Verwendung der in **DataSet** angegebenen Datenbeziehungen. Wenn das **DataSet** -Objekt XML lädt, verwendet es entweder das bereitgestellte Schema oder leitet es aus der Struktur von XML selbst ab, um dies zu erreichen. Aus dieser Struktur werden bei Bedarf Beziehungen zwischen Tabellen erstellt.

Die folgende Abbildung zeigt, wie die Daten aus der *Order*-Tabelle, die an die verschachtelten Zusammenführungsbereiche übergeben wurden, mit der *Item*-Tabelle verknüpft werden, sowie die während des Zusammenführungsvorgangs generierte Ausgabe.

<img src="/words/java/nested-mail-merge-with-regions/nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions_aspose_words_java" style="width:650px"/>

Wie Sie dem Ausgabedokument entnehmen können, wird jeder Auftrag aus der Tabelle **Order** mit allen auftragsbezogenen Artikeln aus der Tabelle **Item** in die Seriendruckvorlage eingefügt. Die nächste Bestellung wird zusammen mit ihren Artikeln eingefügt, bis alle Bestellungen und Artikel aufgelistet sind. Die Reihenfolge der Verschachtelung von Mail Merge mit Regionen in der Vorlage muss mit den Datenbeziehungen zwischen den Tabellen in der Datenquelle übereinstimmen.

Das folgende Codebeispiel zeigt, wie Sie eine Rechnung mit verschachtelten Mail Merge mit Regionen generieren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-NestedMailMerge.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

## So richten Sie Datenbeziehungen in verschachtelten Mail Merge mit Regionen ein

Sie müssen alle Datenbeziehungen in der Eltern-Kind-Struktur einrichten, um die verschachtelten Mail Merge mit Regionen korrekt auszuführen. Das Überspringen dieses wichtigen Schritts kann zu einem Fehler bei der Ausführung der verschachtelten Mail Merge mit Regionen führen.

Beim Abrufen von Daten für eine verschachtelte Mail Merge aus einer XML-Datei mit der **ReadXml**-Methode werden automatisch Beziehungen gemäß der Struktur des XML-Dokuments erstellt. Sie müssen jedoch sicherstellen, dass korrekte Beziehungen erstellt wurden.

Wenn Mail Merge nicht wie erwartet funktioniert, müssen Sie möglicherweise Ihre XML -Datei neu strukturieren oder explizit Beziehungen zwischen DataTable -Objekten in DataSet erstellen.

Ein `DataSet` mit verwandten Datentabellen verwendet das **DataRelation** -Objekt, um die Eltern-Kind-Beziehung zwischen den Tabellen darzustellen.

Das folgende Codebeispiel zeigt, wie Sie mithilfe eines `DataRelation`-Objekts eine `DataRelation` zwischen der Tabelle eines Kunden und der Tabelle einer Bestellung einrichten:
{{< highlight java >}}
dataSet.getRelations().add(new DataRelation("OrderToItem", orderTable.getColumns().get("Order_Id"), itemTable.getColumns().get("Order_Id"), false));
{{< /highlight >}}
