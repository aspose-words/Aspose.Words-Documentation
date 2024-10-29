---
title: Verschachtelt Mail Merge mit Regionen in C++
second_title: Aspose.Words für C++
articleTitle: Verschachtelt Mail Merge mit Regionen
linktitle: Verschachtelt Mail Merge mit Regionen
type: docs
description: "Führen Sie eine mail merge-Operation mit verschachtelten Bereichen mit C++ aus. Verschachtelte Zusammenführung ist eine Funktion, mit der Sie hierarchische Daten aus Ihrer Datenquelle in Ihre Zusammenführungsvorlage zusammenführen können."
keywords: "mail merge with nested regions c++"
weight: 30
url: /de/cpp/nested-mail-merge-with-regions/
---

In einigen Szenarien müssen Sie möglicherweise verschachtelte mail merge mit Regionen verwenden. Verschachtelter Seriendruck ist eine Funktion, mit der Sie hierarchische Daten aus Ihrer Datenquelle in Ihre Seriendruckvorlage zusammenführen können, um Ihr Dokument einfach zu füllen. Grundsätzlich werden die hierarchischen Daten als Satz von Datenelementen dargestellt, und hierarchische Beziehungen beschreiben, wie die Datenelemente miteinander in Beziehung stehen (ein Datenelement ist das übergeordnete Element eines anderen).

Mit Aspose.Words können Sie eine mail merge-Operation mit verschachtelten Bereichen ausführen. Sie können diese Funktion verwenden, wenn Sie über eine Datenquelle verfügen, die in einer baumartigen Struktur organisiert ist, und Sie eine mail merge-Operation ausführen möchten, um eine Vorlage mit hierarchischen Daten zu füllen.

{{% alert color="primary" %}}

Verschachteltes mail merge ist nur relevant, wenn mail merge mit Regionen ausgeführt wird.

{{% /alert %}}

## Was ist eine verschachtelte Mail Merge

Die mail merge -Region wird als verschachtelt bezeichnet, wenn Sie zwei oder mehr mail merge -Regionen haben, von denen sich eine in hierarchischer Form in der anderen befindet. Beachten Sie, dass jede Region Daten aus einer Tabelle enthält.

Das häufigste Beispiel für eine verschachtelte mail merge ist eine Bestellung, die einige Elemente enthält, bei denen Sie viele Datentabellen verknüpfen und die Informationen in einer Vorlage darstellen müssen.

Das Bild unten zeigt zwei verschachtelte Regionen, in denen die Region *Order* mail merge die übergeordnete Region der Region *Item* mail merge ist.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## So verarbeiten Sie Mail Merge mit verschachtelten Regionen

Die Daten, die zu einer Vorlage zusammengeführt werden sollen, können aus verschiedenen Quellen stammen, hauptsächlich relationalen Datenbanken oder XML Dokumenten. In unserem Beispiel werden wir eine verwenden [SQLite](https://www.sqlite.org/index.html) datenbank zum Speichern unserer Daten und Laden mit benutzerdefinierter Datenquellenimplementierung.

Die folgende Abbildung zeigt, wie die Daten aus der *Order*-Tabelle, die an die verschachtelten Zusammenführungsbereiche übergeben werden, mit der *Item*-Tabelle verknüpft werden, sowie die Ausgabe, die während des Zusammenführungsvorgangs generiert wird.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Wie Sie dem Ausgabedokument entnehmen können, wird jeder Auftrag aus der Tabelle **Order** mit allen auftragsbezogenen Artikeln aus der Tabelle **Item** in die Seriendruckvorlage eingefügt. Die nächste Bestellung wird zusammen mit ihren Artikeln eingefügt, bis alle Bestellungen und Artikel aufgelistet sind. Die Reihenfolge der Verschachtelung mail merge mit Regionen in der Vorlage muss mit den Datenbeziehungen zwischen den Tabellen in der Datenquelle übereinstimmen.

## So erstellen Sie Datenbeziehungen aus einer benutzerdefinierten Datenquelle

Implementieren Sie die Schnittstelle [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/), um Beziehungen in der Eltern-Kind-Struktur Ihrer benutzerdefinierten Datenquelle zu erstellen. Verwenden Sie die Methode [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/), um die relevanten untergeordneten Daten eines aktuellen übergeordneten Datensatzes zurückzugeben.

Das folgende Codebeispiel zeigt, wie Sie eine Rechnung mit verschachteltem mail merge mit Regionen von generieren [SQLite](https://www.sqlite.org/index.html) datenbank mit [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}