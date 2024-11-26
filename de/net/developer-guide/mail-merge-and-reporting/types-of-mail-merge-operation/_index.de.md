---
title: Arten von Mail Merge Operationen in C#
second_title: Aspose.Words für .NET
articleTitle: Arten von Mail Merge-Operationen
linktitle: Arten von Mail Merge-Operationen
type: docs
description: "Führen Sie zwei verschiedene Arten von Mail Merge -Operationen aus: einfache Mail Merge und Mail Merge mit Regionen, die C# verwenden. Einfaches Mail Merge wiederholt das gesamte Dokument für jeden Datenquellendatensatz, während Mail Merge mit Regionen nur bestimmte Regionen pro Datensatz wiederholt."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /de/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

Die Hauptidee von Mail Merge besteht darin, automatisch ein Dokument oder mehrere Dokumente basierend auf Ihrer Vorlage und den aus Ihrer Datenquelle abgerufenen Daten zu erstellen. Mit Aspose.Words können Sie zwei verschiedene Arten von Mail Merge-Operationen ausführen: einfache Mail Merge und Mail Merge mit Regionen.

Das häufigste Beispiel für die Verwendung von einfachem Mail Merge ist, wenn Sie ein Dokument für verschiedene Kunden senden möchten, indem Sie deren Namen am Anfang des Dokuments einfügen. Dazu müssen Sie Seriendruckfelder wie *First Name* und *Last Name* in Ihrer Vorlage erstellen und diese dann mit Daten aus Ihrer Datenquelle ausfüllen. Das häufigste Beispiel für die Verwendung von Mail Merge mit Regionen ist, wenn Sie ein Dokument senden möchten, das bestimmte Bestellungen mit der Liste aller Artikel in jeder Bestellung enthält. Dazu müssen Sie für jede Bestellung Zusammenführungsregionen in Ihrer vorlageneigenen Region erstellen, um sie mit allen erforderlichen Daten für die Artikel zu füllen.

Der Hauptunterschied zwischen beiden Zusammenführungsvorgängen besteht darin, dass einfach Mail Merge (ohne Regionen) das gesamte Dokument für jeden Datenquellendatensatz wiederholt, während Mail Merge mit Regionen nur bestimmte Regionen pro Datensatz wiederholt. Sie können sich eine einfache Mail Merge -Operation als einen bestimmten Fall der Zusammenführung mit Regionen vorstellen, in denen die einzige Region das gesamte Dokument ist.

{{% alert color="primary" %}}

Die [MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) -Klasse repräsentiert eine Mail Merge -Funktionalität. Mit seinen Eigenschaften können Sie das erforderliche Verhalten anpassen, bevor Sie eine Mail Merge -Operation ausführen.

{{% /alert %}}

## Einfache Mail Merge Bedienung {#simple-mail-merge-operation}

Ein einfaches Mail Merge wird verwendet, um die Mail Merge -Felder in Ihrer Vorlage mit den erforderlichen Daten aus Ihrer Datenquelle zu füllen (Einzeltabellendarstellung). Es ähnelt also dem klassischen Mail Merge in Microsoft Word.

Sie können Ihrer Vorlage ein oder mehrere Seriendruckfelder hinzufügen und dann die einfache Operation Mail Merge ausführen. Es wird empfohlen, es zu verwenden, wenn Ihre Vorlage keine Zusammenführungsbereiche enthält.

Die Haupteinschränkung bei der Verwendung dieses Typs besteht darin, dass der gesamte Dokumentinhalt für jeden Datensatz in der Datenquelle wiederholt wird.

### So führen Sie eine einfache Mail Merge -Operation {#how-to-execute-a-simple-mail-merge-operation} aus

Sobald Ihre Vorlage fertig ist, können Sie mit der einfachen Operation Mail Merge beginnen. Mit Aspose.Words können Sie eine einfache Mail Merge -Operation mit verschiedenen [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/) ausführen, die verschiedene Datenobjekte als Datenquelle akzeptieren.

Das folgende Codebeispiel zeigt, wie eine einfache Mail Merge -Operation mit einer der [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/)-Methoden ausgeführt wird:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie einfach mail merge ausführen:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

Und nach dem Ausführen von einfachem mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### So erstellen Sie mehrere zusammengeführte Dokumente

In Aspose.Words füllt der Standardoperation Mail Merge nur ein einzelnes Dokument mit Inhalten aus Ihrer Datenquelle. Sie müssen also die Operation Mail Merge mehrmals ausführen, um mehrere zusammengeführte Dokumente als Ausgabe zu erstellen.

Das folgende Codebeispiel zeigt, wie mehrere zusammengeführte Dokumente während eines Mail Merge-Vorgangs generiert werden:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge mit Regionen

Sie können in Ihrer Vorlage verschiedene Regionen erstellen, um spezielle Bereiche zu haben, die Sie einfach mit Ihren Daten füllen können. Verwenden Sie Mail Merge mit Regionen, wenn Sie Tabellen und Zeilen mit sich wiederholenden Daten einfügen möchten, damit Ihre Dokumente dynamisch wachsen, indem Sie diese Regionen in Ihrer Vorlage angeben.

Sie können sowohl verschachtelte (untergeordnete) Regionen erstellen als auch Regionen zusammenführen. Der Hauptvorteil der Verwendung dieses Typs besteht darin, Teile innerhalb eines Dokuments dynamisch zu vergrößern. Weitere Details finden Sie im nächsten Artikel "Verschachtelte Mail Merge mit Regionen".

{{% alert color="primary" %}}

Informationen zu einer Mail Merge -Region können mit der [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/) -Klasse abgerufen werden.

{{% /alert %}}

### So führen Sie Mail Merge mit Regionen aus

Ein Mail Merge -Bereich ist ein bestimmter Teil in einem Dokument, der einen Start- und einen Endpunkt hat. Beide Punkte werden als Mail Merge -Felder dargestellt, die bestimmte Namen *"TableStart:XXX"* und *"TableEnd:XXX"* haben. Alle Inhalte, die in einer Mail Merge-Region enthalten sind, werden automatisch für jeden Datensatz in der Datenquelle wiederholt.

Mit Aspose.Words können Sie Mail Merge mit Regionen ausführen, die verschiedene [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) verwenden, die verschiedene Datenobjekte als Datenquelle akzeptieren.

Als ersten Schritt müssen wir die `DataSet` erstellen, um sie später als Eingabeparameter an die `ExecuteWithRegions` -Methode zu übergeben:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

Das folgende Codebeispiel zeigt, wie Mail Merge mit Regionen mit der Methode [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/) ausgeführt wird:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie Mail Merge mit Regionen ausführen:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Und nach dem Ausführen von Mail Merge mit Regionen:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Einschränkungen von Mail Merge mit Regionen

Es gibt einige wichtige Punkte, die Sie beachten müssen, wenn Sie eine Mail Merge mit Regionen durchführen:

* Der Startpunkt *TableStart:Orders* und der Endpunkt *TableEnd:Orders* müssen sich beide in derselben Zeile oder Zelle befinden. Wenn Sie beispielsweise einen Zusammenführungsbereich in einer Zelle einer Tabelle beginnen, müssen Sie den Zusammenführungsbereich in derselben Zeile wie die erste Zelle beenden.
* Der Name des Seriendruckfelds muss mit dem Namen der Spalte in Ihrem DataTable übereinstimmen. Sofern Sie keine zugeordneten Felder angegeben haben, ist die Mail Merge mit Regionen für Seriendruckfelder, die einen anderen Namen als den Namen der Spalte haben, nicht erfolgreich.

Wenn eine dieser Regeln verletzt wird, erhalten Sie unerwartete Ergebnisse oder es wird möglicherweise eine Ausnahme ausgelöst.

{{% alert color="primary" %}}

Wenn Sie keine Mail Merge -Regionen verwenden, ähnelt dies Microsoft Word mail merge, und der gesamte Dokumentinhalt wird für jeden Datensatz in der Datenquelle wiederholt.

{{% /alert %}}

