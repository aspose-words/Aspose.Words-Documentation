---
title: Klonen Sie ein Dokument in C++
second_title: Aspose.Words für C++
articleTitle: Klonen eines Dokuments
linktitle: Klonen eines Dokuments
type: docs
description: "Klonen Sie ein Dokument, um eine identische Kopie mit C++ zu erhalten. Beim Erstellen einer Kopie werden Knoten und Eigenschaften des Originaldokuments geklont."
weight: 70
url: /de/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Beim Klonen eines Dokuments wird eine identische Kopie eines Originaldokuments erstellt, wodurch die Leistung verbessert und Sie vor potenziellen Speicherverlusten bewahrt werden können.

In diesem Artikel werden die wichtigsten Anwendungsfälle beim Klonen eines Dokuments und das Erstellen eines Dokumentklons mit Aspose.Words erläutert.

## Vorgänge beim Klonen von Dokumenten

Mit dem Klonvorgang können Sie das Erstellen von Dokumenten beschleunigen, da Sie nicht jedes Mal ein Dokument aus einer Datei laden und analysieren müssen.

Nachdem Sie einen Klon Ihres Dokuments erstellt haben, können Sie es bearbeiten und verschiedene Vorgänge ausführen, z. B. mit dem Originaldokument vergleichen, es anhängen oder in ein anderes Dokument einfügen. Sie können auch geklonte Elemente oder deren Inhalt ändern, bevor Sie sie in ein anderes Dokument einfügen.

## Erstellen eines Dokumentklons

Mit Aspose.Words können Sie ein Dokument mit der Methode [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) klonen, die eine tiefe Kopie des Dokuments erstellt und es zurückgibt. Mit anderen Worten, es wird eine vollständige Kopie von DOM erhalten. Die `Clone` -Methode beschleunigt die Dokumentengenerierung und Sie benötigen nur eine Codezeile, um eine Kopie Ihres Dokuments zu erhalten.

Beim Klonen wird ein neues Dokument mit demselben Inhalt wie das Original erstellt, jedoch mit einer eindeutigen Kopie jedes [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node) des Originaldokuments. Sie können den Klonvorgang auch auf einen Dokumentknoten anwenden, indem Sie die Methode node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/) verwenden, mit der Sie zusammengesetzte Dokumentknoten mit und ohne ihre untergeordneten Knoten duplizieren können.

{{% alert color="primary" %}}

Beachten Sie, dass beim Anwenden der Klonmethode alle Dokumenteigenschaften geklont werden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Dokument klonen und ein Duplikat eines Abschnitts in diesem Dokument erstellen:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
