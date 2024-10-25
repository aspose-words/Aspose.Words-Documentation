---
title: Bereinigen Sie ein Dokument in C++
second_title: Aspose.Words für C++
articleTitle: Bereinigen eines Dokuments
linktitle: Bereinigen eines Dokuments
description: "Entfernen Sie nicht verwendete oder doppelte Informationen, um die Ausgabegröße und die Verarbeitungszeit mit C++ zu reduzieren. Entfernen Sie nicht verwendete Stile, nicht verwendete integrierte Stile, doppelte Stile oder nicht verwendete Listen."
type: docs
weight: 30
url: /de/cpp/clean-up-a-document/
---

Manchmal müssen Sie möglicherweise nicht verwendete oder doppelte Informationen entfernen, um die Größe des Ausgabedokuments und die Verarbeitungszeit zu reduzieren.

Während Sie nicht verwendete Daten wie Stile oder Listen oder doppelte Informationen manuell suchen und entfernen können, ist es viel bequemer, dies mit den von Aspose.Words bereitgestellten Funktionen und Funktionen zu tun.

Mit der Klasse [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) können Sie Optionen für die Dokumentbereinigung angeben. Um doppelte Stile oder nur nicht verwendete Stile oder Listen aus dem Dokument zu entfernen, können Sie die Methode [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/) verwenden.

## Entfernen nicht verwendeter Informationen aus einem Dokument

Sie können die Eigenschaften [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) und [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) verwenden, um Stile zu erkennen und zu entfernen, die als "nicht verwendet" markiert sind.

Sie können die Eigenschaft [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) verwenden, um Listen und Listendefinitionen zu erkennen und zu entfernen, die als "nicht verwendet" markiert sind.

Das folgende Codebeispiel zeigt, wie nur nicht verwendete Stile aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Doppelte Informationen aus einem Dokument entfernen

Sie können auch die Eigenschaft [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) verwenden, um alle doppelten Stile durch den ursprünglichen zu ersetzen und Duplikate aus einem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie doppelte Stile aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
