---
title: Aufräumen vor oder während Mail Merge
second_title: Aspose.Words für .NET
articleTitle: Bereinigen vor oder während einer Mail Merge-Operation
linktitle: Bereinigen vor oder während einer Mail Merge-Operation
type: docs
description: "Wenden Sie verschiedene Bereinigungs- und Entfernungsoptionen an, z. B. das Löschen von Seriendruckfeldern, bevor Sie einen Mail Merge-Vorgang ausführen, oder das Entfernen nicht verwendeter Bereiche während eines Mail Merge-Vorgangs mit C#."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /de/net/clean-up-before-or-during-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Mit Aspose.Words können Sie verschiedene Bereinigungs- und Entfernungsoptionen anwenden, z. B. das Löschen von Seriendruckfeldern vor dem Ausführen eines Mail Merge-Vorgangs oder das Entfernen nicht verwendeter Bereiche während eines Mail Merge-Vorgangs. In diesem Abschnitt wird erläutert, wie zusammengeführte Felder gelöscht und eine Entfernungsoption eingerichtet werden.

## Zusammengeführte Felder löschen

Wenn Sie eine lange Vorlage verwenden, die von einer anderen Person erstellt wurde, möchten Sie möglicherweise alle Seriendruckfelder löschen, die bereits in dieser Vorlage vorhanden sind, bevor Sie einen Mail Merge-Vorgang ausführen. Sie können die Methode [DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/) verwenden, wenn Sie alle Seriendruckfelder aus einem Dokument löschen möchten, ohne einen Mail Merge-Vorgang auszuführen. Diese Methode wird von den Entfernungsoptionen der Eigenschaft [CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/) nicht beeinflusst, und wenn sie ausgeführt wird, werden nur zusammengeführte Felder entfernt, keine Felder oder leeren Absätze.

Das folgende Codebeispiel zeigt, wie Sie alle Seriendruckfelder aus Ihrer Vorlage löschen, ohne einen Mail Merge-Vorgang auszuführen:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## Richten Sie eine `Removing`-Option ein

Mit Aspose.Words können Sie nicht zusammengeführte Felder, Bereiche und Absätze während eines Mail Merge-Vorgangs mithilfe von Entfernungsoptionen aus einer Vorlage entfernen.

Verwenden Sie die Eigenschaft **CleanupOptions** zusammen mit der Aufzählung [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/), um die Entfernungsoption festzulegen. Geben Sie an, welche Elemente Sie entfernen möchten, indem Sie die folgenden Optionen auswählen (Sie können mehrere kombinieren):

* Leere Absätze entfernen
* Nicht verwendete Bereiche entfernen
* Nicht verwendete Felder entfernen
* Enthaltene Felder entfernen
* Statische Felder entfernen
* Leere Tabellenzeilen entfernen

Sie können ein Seriendruckfeld unter einer der folgenden Bedingungen als nicht zusammengeführt betrachten:

1. Wenn das Seriendruckfeld in der Datenquelle keine Spalte oder kein Zuordnungsfeld enthält.
2. Wenn das Seriendruckfeld in der Datenquelle ein Zuordnungsfeld enthält, die Daten jedoch null sind.

{{% alert color="primary" %}}

Wenn Sie Daten mit separaten Datenquellen zusammenführen, werden diese Entfernungsoptionen nur mit dem letzten Aufruf der Ausführungsmethode Mail Merge aktiviert.

{{% /alert %}}

### Leere Absätze entfernen

Ein Absatz, der nur Seriendruckfelder enthält, ist leer, wenn der Mail Merge-Prozess alle seine Seriendruckfelder als nicht zusammengeführt entfernt. Diese leeren Absätze können unerwünschten Platz hinzufügen und das Aussehen des generierten Berichts ändern. Während einer Mail Merge -Operation können zwei Situationen mit Absätzen auftreten:

1. Das Feld Mail Merge wird mit leeren Daten zusammengeführt.
2. Das Seriendruckfeld wird nicht verwendet und entfernt.

In beiden Fällen entfernt die Option **RemoveEmptyParagraphs** automatisch leere Absätze aus dem Dokument. Außerdem werden die Seriendruckfelder `TableStart` und TableEnd entfernt, wenn der Rest des Absatzes leer ist.

Das folgende Codebeispiel zeigt, wie Sie die leeren Absätze entfernen:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Nicht verwendete Bereiche entfernen

In früheren Versionen von Aspose.Words wurden leere Mail Merge-Bereiche während des Mail Merge-Vorgangs automatisch aus dem Dokument entfernt. Mit der neuesten Version von Aspose.wörter, leere Mail Merge-Bereiche bleiben nach der Mail Merge-Operation standardmäßig erhalten. Sie können jedoch die Option **RemoveUnusedRegions** verwenden, um die nicht verwendeten Mail Merge-Bereiche während des Vorgangs Mail Merge zu entfernen. Sie können beispielsweise ein Dokument mit einer leeren Datenquelle zusammenführen, die keine Datentabellen enthält, die zu nicht verwendeten Bereichen im Dokument führen.

Das folgende Codebeispiel zeigt, wie die nicht verwendeten Zusammenführungsbereiche entfernt werden:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Beachten**

### Nicht verwendete Felder entfernen

Mit Aspose.Words können Sie nicht verwendete Mail Merge-Felder entfernen, indem Sie **CleanupOptions** das Flag **RemoveUnusedFields** zuweisen. Mit dieser Option werden Seriendruckfelder entfernt, die nicht die entsprechenden Daten in der Datenquelle enthalten.

Das folgende Codebeispiel zeigt, wie nicht verwendete Seriendruckfelder während eines Mail Merge-Vorgangs automatisch aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### Enthaltene Felder entfernen

Ein Seriendruckfeld kann in einem anderen Feld enthalten sein, z. B. einem **IF**-Feld oder einem Formelfeld. Entfernen Sie dieses äußere Feld, wenn das Seriendruckfeld zusammengeführt oder aus dem Dokument entfernt wird.

Das folgende Codebeispiel zeigt, wie Felder, die Seriendruckfelder enthalten, aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**Beachten**

### Leere Tabellenzeilen entfernen

Mit Aspose.Words können Sie leere Tabellenzeilen entfernen, indem Sie **CleanupOptions** das Flag **RemoveEmptyTableRows** zuweisen. Mit dieser Option werden Tabellenzeilen entfernt, die leere Seriendruckfelder enthalten.

Das folgende Codebeispiel zeigt, wie leere Tabellenzeilen, die Mail Merge-Bereiche enthalten, aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}
