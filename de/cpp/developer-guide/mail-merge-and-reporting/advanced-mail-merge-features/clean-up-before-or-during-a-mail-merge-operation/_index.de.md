---
title: Bereinigen vor oder während einer Mail Merge-Operation
second_title: Aspose.Words für C++
articleTitle: Bereinigen vor oder während einer Mail Merge-Operation
linktitle: Bereinigen vor oder während einer Mail Merge-Operation
type: docs
description: "Wenden Sie verschiedene Bereinigungs- und Entfernungsoptionen an, z. B. das Löschen von Seriendruckfeldern, bevor Sie einen mail merge-Vorgang ausführen, oder das Entfernen nicht verwendeter Bereiche während eines mail merge-Vorgangs."
keywords: "cleanup options mail merge c#"
weight: 10
url: /de/cpp/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Mit Aspose.Words können Sie verschiedene Bereinigungs- und Entfernungsoptionen anwenden, z. B. das Löschen von Seriendruckfeldern vor dem Ausführen eines mail merge-Vorgangs oder das Entfernen nicht verwendeter Bereiche während eines mail merge-Vorgangs. In diesem Abschnitt wird erläutert, wie zusammengeführte Felder gelöscht und eine Entfernungsoption eingerichtet werden.

## Zusammengeführte Felder löschen

Wenn Sie eine lange Vorlage verwenden, die von einer anderen Person erstellt wurde, möchten Sie möglicherweise alle Seriendruckfelder löschen, die bereits in dieser Vorlage vorhanden sind, bevor Sie einen mail merge-Vorgang ausführen. Sie können die Methode [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) verwenden, wenn Sie alle Seriendruckfelder aus einem Dokument löschen möchten, ohne einen mail merge-Vorgang auszuführen. Diese Methode wird von den Entfernungsoptionen der Eigenschaft [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) nicht beeinflusst, und wenn sie ausgeführt wird, werden nur zusammengeführte Felder entfernt, keine Felder oder leeren Absätze.

Das folgende Codebeispiel zeigt, wie Sie alle Seriendruckfelder aus Ihrer Vorlage löschen, ohne einen mail merge-Vorgang auszuführen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Richten Sie eine `Removing`-Option ein

Mit Aspose.Words können Sie nicht zusammengeführte Felder, Bereiche und Absätze während eines mail merge-Vorgangs mithilfe von Entfernungsoptionen aus einer Vorlage entfernen.

Verwenden Sie die Eigenschaft **CleanupOptions** zusammen mit der Aufzählung [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/), um die Entfernungsoption festzulegen. Geben Sie an, welche Elemente Sie entfernen möchten, indem Sie die folgenden Optionen auswählen (Sie können mehrere kombinieren):

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

Wenn Sie Daten mit separaten Datenquellen zusammenführen, werden diese Entfernungsoptionen nur mit dem letzten Aufruf der mail merge execute Methode aktiviert.

{{% /alert %}}

### Leere Absätze entfernen

Ein Absatz, der nur Seriendruckfelder enthält, ist leer, wenn der mail merge-Prozess alle seine Seriendruckfelder als nicht zusammengeführt entfernt. Diese leeren Absätze können unerwünschten Platz hinzufügen und das Aussehen des generierten Berichts ändern. Während einer mail merge -Operation können zwei Situationen mit Absätzen auftreten:

1. Das Feld mail merge wird mit leeren Daten zusammengeführt.
2. Das Seriendruckfeld wird nicht verwendet und entfernt.

In beiden Fällen entfernt die Option **RemoveEmptyParagraphs** automatisch leere Absätze aus dem Dokument. Außerdem werden die Seriendruckfelder `TableStart` und TableEnd entfernt, wenn der Rest des Absatzes leer ist.

Das folgende Codebeispiel zeigt, wie Sie die leeren Absätze entfernen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Nicht verwendete Felder entfernen

Mit Aspose.Words können Sie nicht verwendete mail merge-Felder entfernen, indem Sie **CleanupOptions** das Flag **RemoveUnusedFields** zuweisen. Mit dieser Option werden Seriendruckfelder entfernt, die nicht die entsprechenden Daten in der Datenquelle enthalten.

Das folgende Codebeispiel zeigt, wie nicht verwendete Seriendruckfelder während eines mail merge-Vorgangs automatisch aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Enthaltene Felder entfernen

Ein Seriendruckfeld kann in einem anderen Feld enthalten sein, z. B. einem **IF**-Feld oder einem Formelfeld. Entfernen Sie dieses äußere Feld, wenn das Seriendruckfeld zusammengeführt oder aus dem Dokument entfernt wird.

Das folgende Codebeispiel zeigt, wie Felder, die Seriendruckfelder enthalten, aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Beachten**

### Leere Tabellenzeilen entfernen

Mit Aspose.Words können Sie leere Tabellenzeilen entfernen, indem Sie **CleanupOptions** das Flag **RemoveEmptyTableRows** zuweisen. Mit dieser Option werden Tabellenzeilen entfernt, die leere Seriendruckfelder enthalten.

Das folgende Codebeispiel zeigt, wie leere Tabellenzeilen, die mail merge-Bereiche enthalten, aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
