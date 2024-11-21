---
title: Bereinigen Sie ein Dokument in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Bereinigen Sie ein Dokument
linktitle: Bereinigen Sie ein Dokument
description: "Entfernen Sie mithilfe von Python ungenutzte oder doppelte Informationen, um die Ausgabegröße und die Verarbeitungszeit zu reduzieren. Entfernen Sie nicht verwendete Stile, nicht verwendete integrierte Stile, doppelte Stile oder nicht verwendete Listen."
type: docs
weight: 30
url: /de/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Sie möglicherweise nicht verwendete oder doppelte Informationen entfernen, um die Größe des Ausgabedokuments und die Verarbeitungszeit zu reduzieren.

Sie können zwar ungenutzte Daten wie Stile oder Listen finden und entfernen oder Informationen manuell duplizieren, dies ist jedoch viel bequemer, wenn Sie die von Aspose.Words bereitgestellten Funktionen und Möglichkeiten nutzen.

Mit der [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/)-Klasse können Sie Optionen für die Dokumentbereinigung angeben. Um doppelte Stile oder nur nicht verwendete Stile oder Listen aus dem Dokument zu entfernen, können Sie die [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/)-Methode verwenden.

## Entfernen Sie ungenutzte Informationen aus einem Dokument

Mithilfe der [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/)- und [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/)-Eigenschaften können Sie Stile erkennen und entfernen, die als "unbenutzt" markiert sind.

Mithilfe der [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/)-Eigenschaft können Sie Listen und Listendefinitionen erkennen und entfernen, die als "unbenutzt" markiert sind.

Das folgende Codebeispiel zeigt, wie nur nicht verwendete Stile aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Entfernen Sie doppelte Informationen aus einem Dokument

Sie können die [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/)-Eigenschaft auch verwenden, um alle doppelten Stile durch den Originalstil zu ersetzen und Duplikate aus einem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie Sie doppelte Stile aus einem Dokument entfernen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
