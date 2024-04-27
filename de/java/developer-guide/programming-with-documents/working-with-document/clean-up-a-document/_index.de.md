---
title: Ein Dokument aufräumen Java
second_title: Aspose.Words für Java
articleTitle: Ein Dokument reinigen
linktitle: Ein Dokument reinigen
description: "Entfernen Sie ungenutzte oder doppelte Informationen, um die Ausgabegröße und Verarbeitungszeit zu reduzieren. Entfernen Sie ungenutzte Stile, ungenutzte eingebaute Stile, doppelte Stile oder ungenutzte Listen mit Java."
type: docs
weight: 30
url: /de/java/clean-up-a-document/
---

Manchmal müssen Sie ungenutzte oder doppelte Informationen entfernen, um die Größe des Ausgabedokuments und der Bearbeitungszeit zu reduzieren.

Während Sie ungenutzte Daten wie Stile oder Listen oder doppelte Informationen manuell finden und entfernen können, wird es viel bequemer sein, dies mit Funktionen und Fähigkeiten zu tun, die von Aspose.Words.

Die [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) Klasse ermöglicht es Ihnen, Optionen für die Dokumentenreinigung anzugeben. Um doppelte Stile oder einfach ungenutzte Stile oder Listen aus dem Dokument zu entfernen, können Sie die [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) Methode.

## Ungenutzte Informationen aus einem Dokument entfernen

Sie können die [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) und [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) Eigenschaften, um Stile zu erkennen und zu entfernen, die als "ungenutzt" gekennzeichnet sind.

Sie können die [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) Eigenschaft, Listen und Listendefinitionen zu erkennen und zu entfernen, die als "ungenutzt" gekennzeichnet sind.

Das folgende Codebeispiel zeigt, wie man nur ungenutzte Stile aus einem Dokument entfernt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Entfernen Sie doppelte Informationen von einem Dokument

Sie können auch die [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) Eigenschaft, alle Duplikate mit dem Original zu ersetzen und Duplikate aus einem Dokument zu entfernen.

Das folgende Codebeispiel zeigt, wie Duplikatstile aus einem Dokument entfernt werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
