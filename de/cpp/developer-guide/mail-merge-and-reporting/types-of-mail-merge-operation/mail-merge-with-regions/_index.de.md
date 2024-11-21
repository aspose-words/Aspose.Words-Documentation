---
title: Mail Merge mit Regionen in C++
second_title: Aspose.Words für C++
articleTitle: Mail Merge mit Regionen
linktitle: Mail Merge mit Regionen
type: docs
description: "Erstellen Sie verschiedene Regionen in Ihrer Vorlage, um spezielle Bereiche zu haben, die Sie einfach mit Ihren Daten füllen können. Verwenden Sie die mail merge mit Regionen, wenn Sie Tabellen und Zeilen mit sich wiederholenden Daten einfügen möchten, damit Ihre Dokumente dynamisch wachsen."
keywords: "how to execute mail merge c++"
weight: 20
url: /de/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Sie können in Ihrer Vorlage verschiedene Regionen erstellen, um spezielle Bereiche zu haben, die Sie einfach mit Ihren Daten füllen können. Verwenden Sie mail merge mit Regionen, wenn Sie Tabellen und Zeilen mit sich wiederholenden Daten einfügen möchten, damit Ihre Dokumente dynamisch wachsen, indem Sie diese Regionen in Ihrer Vorlage angeben.

Sie können sowohl verschachtelte (untergeordnete) Regionen erstellen als auch Regionen zusammenführen. Der Hauptvorteil der Verwendung dieses Typs besteht darin, Teile innerhalb eines Dokuments dynamisch zu vergrößern. Weitere Details finden Sie im nächsten Artikel "Verschachtelte Mail Merge mit Regionen".

{{% alert color="primary" %}}

Informationen zu einer mail merge -Region können mit der [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) -Klasse abgerufen werden.

{{% /alert %}}

## So führen Sie Mail Merge mit Regionen aus

Ein mail merge -Bereich ist ein bestimmter Teil in einem Dokument, der einen Start- und einen Endpunkt hat. Beide Punkte werden als mail merge -Felder dargestellt, die bestimmte Namen *"TableStart:XXX"* und *"TableEnd:XXX"* haben. Alle Inhalte, die in einer mail merge-Region enthalten sind, werden automatisch für jeden Datensatz in der Datenquelle wiederholt.

Aspose.Words ermöglicht die Ausführung von mail merge mit Regionen unter Verwendung einer der [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/)-Methoden, die eine benutzerdefinierte [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/)-Datenquelle akzeptieren.

Das folgende Codebeispiel zeigt, wie mail merge mit Regionen aus der SQLite-Datenbank ausgeführt wird mit [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie mail merge mit Regionen ausführen:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Und nach dem Ausführen von mail merge mit Regionen:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Einschränkungen von Mail Merge mit Regionen

Es gibt einige wichtige Punkte, die Sie beachten müssen, wenn Sie eine mail merge mit Regionen durchführen:

* Der Startpunkt *TableStart:Orders* und der Endpunkt *TableEnd:Orders* müssen sich beide in derselben Zeile oder Zelle befinden. Wenn Sie beispielsweise einen Zusammenführungsbereich in einer Zelle einer Tabelle beginnen, müssen Sie den Zusammenführungsbereich in derselben Zeile wie die erste Zelle beenden.
  Der Name des Seriendruckfelds muss mit dem Spaltennamen in Ihrem DataTable übereinstimmen. Sofern Sie keine zugeordneten Felder angeben, ist mail merge mit Regionen für Seriendruckfelder mit einem anderen Namen als dem Spaltennamen nicht erfolgreich.
* Aspose.Words für C++ unterstützt nur [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/)- und [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/)-basierte Datenquellen. Im Gegensatz zu .NET und Java verfügt C++ nicht über eine allgemein akzeptierte plattformübergreifende API für die Arbeit mit Datenbanken (wie ADODB, ODBC oder JDBC). Um mit einer bestimmten Datenquelle zu arbeiten, müssen Sie die Schnittstelle [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) oder [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) implementieren.

Wenn eine dieser Regeln verletzt wird, erhalten Sie unerwartete Ergebnisse oder es wird möglicherweise eine Ausnahme ausgelöst.

{{% alert color="primary" %}}

Wenn Sie keine mail merge -Regionen verwenden, ähnelt dies Microsoft Word mail merge, und der gesamte Dokumentinhalt wird für jeden Datensatz in der Datenquelle wiederholt.

{{% /alert %}}

