---
title: Bereinigen Sie ein Dokument in C#
second_title: Aspose.Words für .NET
articleTitle: Bereinigen Sie ein Dokument
linktitle: Bereinigen Sie ein Dokument
description: "Entfernen Sie mithilfe von C# ungenutzte oder doppelte Informationen, um die Ausgabegröße und die Verarbeitungszeit zu reduzieren. Entfernen Sie nicht verwendete Stile, nicht verwendete integrierte Stile, doppelte Stile oder nicht verwendete Listen."
type: docs
weight: 30
url: /de/net/clean-up-a-document/
---

Manchmal müssen Sie möglicherweise nicht verwendete oder doppelte Informationen entfernen, um die Größe des Ausgabedokuments und die Verarbeitungszeit zu reduzieren.

Sie können zwar ungenutzte Daten wie Stile oder Listen finden und entfernen oder Informationen manuell duplizieren, dies ist jedoch viel bequemer, wenn Sie die von Aspose.Words bereitgestellten Funktionen und Möglichkeiten nutzen.

Mit der [CleanupOptions](https://reference.aspose.com/words/de/net/aspose.words/cleanupoptions/)-Klasse können Sie Optionen für die Dokumentbereinigung angeben. Um doppelte Stile oder nur nicht verwendete Stile oder Listen aus dem Dokument zu entfernen, können Sie die [Cleanup](https://reference.aspose.com/words/de/net/aspose.words/document/cleanup/)-Methode verwenden.

## Entfernen Sie ungenutzte Informationen aus einem Dokument

Mithilfe der [UnusedStyles](https://reference.aspose.com/words/de/net/aspose.words/cleanupoptions/unusedstyles/)- und [UnusedBuiltinStyles](https://reference.aspose.com/words/de/net/aspose.words/cleanupoptions/unusedbuiltinstyles/)-Eigenschaften können Sie Stile erkennen und entfernen, die als "unbenutzt" markiert sind.

Mithilfe der [UnusedLists](https://reference.aspose.com/words/de/net/aspose.words/cleanupoptions/unusedlists/)-Eigenschaft können Sie Listen und Listendefinitionen erkennen und entfernen, die als "unbenutzt" markiert sind.

Das folgende Codebeispiel zeigt, wie nur nicht verwendete Stile aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Entfernen Sie doppelte Informationen aus einem Dokument

Sie können die [DuplicateStyle](https://reference.aspose.com/words/de/net/aspose.words/cleanupoptions/duplicatestyle/)-Eigenschaft auch verwenden, um alle doppelten Stile durch den Originalstil zu ersetzen und Duplikate aus einem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie Sie doppelte Stile aus einem Dokument entfernen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
