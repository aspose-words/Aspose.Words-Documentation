---
title: Bereinigen Sie ein Dokument in Java
second_title: Aspose.Words für Java
articleTitle: Bereinigen eines Dokuments
linktitle: Bereinigen eines Dokuments
description: "Entfernen Sie nicht verwendete oder doppelte Informationen, um die Ausgabegröße und die Verarbeitungszeit zu reduzieren. Entfernen Sie nicht verwendete Stile, nicht verwendete integrierte Stile, doppelte Stile oder nicht verwendete Listen mit Java."
type: docs
weight: 30
url: /de/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Sie möglicherweise nicht verwendete oder doppelte Informationen entfernen, um die Größe des Ausgabedokuments und die Verarbeitungszeit zu reduzieren.

Während Sie nicht verwendete Daten wie Stile oder Listen oder doppelte Informationen manuell suchen und entfernen können, ist es viel bequemer, dies mit den von Aspose.Words bereitgestellten Funktionen und Funktionen zu tun.

Mit der Klasse [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) können Sie Optionen für die Dokumentbereinigung angeben. Um doppelte Stile oder nur nicht verwendete Stile oder Listen aus dem Dokument zu entfernen, können Sie die Methode [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) verwenden.

## Entfernen nicht verwendeter Informationen aus einem Dokument

Sie können die Eigenschaften [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) und [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) verwenden, um Stile zu erkennen und zu entfernen, die als "nicht verwendet" markiert sind.

Sie können die Eigenschaft [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) verwenden, um Listen und Listendefinitionen zu erkennen und zu entfernen, die als "nicht verwendet" markiert sind.

Das folgende Codebeispiel zeigt, wie nur nicht verwendete Stile aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Doppelte Informationen aus einem Dokument entfernen

Sie können auch die Eigenschaft [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) verwenden, um alle doppelten Stile durch den ursprünglichen zu ersetzen und Duplikate aus einem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie doppelte Stile aus einem Dokument entfernt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
