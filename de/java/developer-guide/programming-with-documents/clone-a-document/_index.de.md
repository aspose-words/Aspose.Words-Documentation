---
title: Ein Dokument einbinden Java
second_title: Aspose.Words für Java
articleTitle: Ein Dokument einfügen
linktitle: Ein Dokument einfügen
type: docs
description: "Klonen Sie ein Dokument, um seine identische Kopie zu erhalten. Beim Erstellen einer Kopie werden Knoten und Eigenschaften des Originaldokuments mit Hilfe von Java."
weight: 70
url: /de/java/clone-a-document/
---

Das Schließen eines Dokuments ist der Prozess der Erstellung einer identischen Kopie eines Originaldokuments, das die Leistung verbessern und Sie vor möglichen Speicherlecks speichern kann.

Dieser Artikel wird die wichtigsten Anwendungsfälle des Klonens eines Dokuments erklären und wie ein Dokumentklon mit Aspose.Words.

## Operationen mit Klonierungsdokumenten

Die Klonoperation ermöglicht es Ihnen, den Prozess der Erstellung von Dokumenten schneller zu machen, da Sie kein Dokument aus einer Datei jedes Mal laden und parsieren müssen.

Nach der Erstellung eines Klons Ihres Dokuments können Sie es bearbeiten und verschiedene Operationen ausführen, beispielsweise mit dem Originaldokument vergleichen, anhängen oder in ein anderes Dokument einfügen. Sie können auch geklonte Elemente oder deren Inhalt ändern, bevor Sie sie in ein anderes Dokument einfügen.

## Erstellen eines Dokuments Klon

Aspose.Words Sie können ein Dokument mit der [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) eine Methode, die eine tiefe Kopie des Dokuments durchführt und es zurückgibt. Mit anderen Worten, es wird eine vollständige Kopie der DOM. Die `Clone` Die Methode beschleunigt die Erstellung von Dokumenten, und Sie brauchen nur eine Zeile des Codes, um eine Kopie Ihres Dokuments zu erhalten.

Cloning produziert ein neues Dokument mit dem gleichen Inhalt wie das Original, aber mit einer einzigartigen Kopie jedes Originaldokuments [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). Sie können die Klonoperation auch auf einen Dokumentknoten anwenden, indem Sie den Knoten verwenden [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) Methode, die es Ihnen ermöglicht, zusammengesetzte Dokumentknoten mit und ohne ihre Kinderknoten zu duplizieren.

{{% alert color="primary" %}}

Beachten Sie, dass bei der Anwendung der Klonierungsmethode alle Dokumenteigenschaften geklont werden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man ein Dokument klont und ein Duplikat eines Abschnitts in diesem Dokument erstellt:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
