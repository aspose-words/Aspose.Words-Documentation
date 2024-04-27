---
title: Dokumente in Java
second_title: Aspose.Words für Java
articleTitle: Dokumente vergleichen
linktitle: Dokumente vergleichen
type: docs
description: "Vergleichen Sie zwei Dokumente in allen unterstützten Formaten und zeigt Inhaltsänderungen an. Sie können erweiterte Optionen beim Vergleich mit Java."
weight: 60
url: /de/java/compare-documents/
---

Dokumente vergleichen ist ein Prozess, der Änderungen zwischen zwei Dokumenten identifiziert und die Änderungen als Revisionen enthält. Dieser Prozess vergleicht alle zwei Dokumente, einschließlich Versionen eines bestimmten Dokuments, dann werden die Änderungen zwischen beiden Dokumenten als Revisionen im ersten Dokument angezeigt.

Das Vergleichsverfahren wird durch Vergleich von Wörtern auf der Zeichenebene oder auf der Wortebene erreicht. Wenn ein Wort eine Änderung von mindestens einem Zeichen enthält, wird im Ergebnis die Differenz als Änderung des gesamten Wortes angezeigt, nicht als Zeichen. Dieser Vergleich ist eine übliche Aufgabe in der Rechts- und Finanzindustrie.

Anstelle von manueller Suche nach Unterschieden zwischen Dokumenten oder zwischen verschiedenen Versionen können Sie verwenden Aspose.Words zum Vergleich von Dokumenten und zum Erhalt von Inhaltsänderungen in Formatierung, Header/Fuß, Tabellen und mehr.

Dieser Artikel erklärt, wie man Dokumente vergleicht und wie man erweiterte Vergleichseigenschaften angibt.

{{% alert color="primary" %}}

**Online testen**

Sie können zwei Dokumente online vergleichen, indem Sie die [Pressemitteilungen online](https://products.aspose.app/words/comparison) Werkzeug.

Beachten Sie, dass die unten beschriebene Vergleichsmethode in diesem Tool verwendet wird, um gleiche Ergebnisse zu erzielen. So erhalten Sie die gleichen Ergebnisse auch durch die Verwendung des Online Vergleichs-Tools oder durch die Verwendung der Vergleichsmethode in Aspose.Words.

{{% /alert %}}

## Einschränkungen und unterstützte Dateiformate {#limitations-and-supported-file-formats}

Das Vergleichen von Dokumenten ist ein sehr komplexes Merkmal. Es gibt verschiedene Teile der Inhaltskombination, die analysiert werden müssen, um alle Unterschiede zu erkennen. Der Grund für diese Komplexität ist, weil Aspose.Words die gleichen Vergleichsergebnisse wie die Microsoft Word Vergleich Algorithmus.

Die generelle Beschränkung der Vergleichbarkeit von zwei Dokumenten besteht darin, daß sie vor dem Aufruf des Vergleichsverfahrens keine Revisionen haben dürfen, da diese Einschränkung in Microsoft Word.

{{% alert color="primary" %}}

Beachten Sie, dass Sie alle zwei Dokumente innerhalb der [Ich bin nicht da](/words/de/java/supported-document-formats/). Grundsätzlich können Sie Dokumentobjekte vergleichen und sogar diese Objekte von Grund auf ohne ein bestimmtes Format zu haben.

{{% /alert %}}

## Zwei Dokumente vergleichen {#compare-two-documents}

Wenn Sie Dokumente vergleichen, zeigen sich Unterschiede des letztgenannten Dokuments von der früheren als Überarbeitungen an die frühere. Wenn Sie ein Dokument ändern, wird jede Bearbeitung nach der Ausführung der Vergleichsmethode eine eigene Revision haben.

Aspose.Words Sie können Dokumente Unterschiede anhand der [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) Methode – dies entspricht der Microsoft Word Dokument vergleichen Feature. Es ermöglicht Ihnen, Dokumente oder Dokumentversionen zu überprüfen, um Unterschiede und Änderungen zu finden, einschließlich Formatierung Modifikationen wie Schriftwechsel, Abstandsänderungen, die Hinzufügung von Wörtern und Absätzen.

Durch den Vergleich können Dokumente gleich oder nicht gleich bestimmt werden. Der Begriff "gleiche" Dokumente bedeutet, dass die Vergleichsmethode keine Änderungen als Revisionen darstellen kann. Dies bedeutet, dass sowohl Text- als auch Textformatierung gleich sind. Aber es gibt andere Unterschiede zwischen den Dokumenten. Zum Beispiel Microsoft Word unterstützt nur Formatrevisionen für Stile, und Sie können Stileinfügen/Auslöschung nicht darstellen. So können Dokumente eine andere Reihe von Stilen haben, und **Compare** Die Methode produziert immer noch keine Revisionen.

Das folgende Codebeispiel zeigt, wie zu prüfen ist, ob zwei Dokumente gleich sind oder nicht:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

Das folgende Codebeispiel zeigt, wie man einfach die `Compare` Methode zu zwei Dokumenten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Erweiterte Vergleichsoptionen angeben {#specify-advanced-comparing-properties}

Es gibt viele verschiedene Eigenschaften der [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) Klasse, die Sie anwenden können, wenn Sie Dokumente vergleichen möchten.

Zum Beispiel Aspose.Words Sie können Änderungen, die während einer Vergleichsoperation für bestimmte Arten von Objekten innerhalb des Originaldokuments vorgenommen wurden, ignorieren. Sie können die entsprechende Eigenschaft für den Objekttyp auswählen, z. [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), und andere, indem sie sie zu "true".

Außerdem, Aspose.Words bietet [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) Eigenschaft, mit der Sie festlegen können, ob Sie Änderungen nach Charakter oder Wort verfolgen.

Eine weitere gemeinsame Eigenschaft ist eine Wahl, in der das Dokument Vergleichsänderungen zeigt. Zum Beispiel das Dialogfeld "Kompare Dokumente Dialogfeld" in Microsoft Word hat die Option "Änderungen anzeigen" – dies betrifft auch die Vergleichsergebnisse. Aspose.Words bietet [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) Eigentum, das diesem Zweck dient.

Das folgende Codebeispiel zeigt, wie die erweiterten Vergleichseigenschaften eingestellt werden:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
