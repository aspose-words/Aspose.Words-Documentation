---
title: Dokumente vergleichen in C++
second_title: Aspose.Words für C++
articleTitle: Dokumente vergleichen
linktitle: Dokumente vergleichen
type: docs
description: "Vergleicht zwei Dokumente in beliebigen unterstützten Formaten und zeigt Inhaltsänderungen mit C++ an. Sie können beim Vergleichen erweiterte Optionen anwenden."
weight: 60
url: /de/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Das Vergleichen von Dokumenten ist ein Prozess, der Änderungen zwischen zwei Dokumenten identifiziert und die Änderungen als Revisionen enthält. Dieser Prozess vergleicht zwei beliebige Dokumente, einschließlich Versionen eines bestimmten Dokuments, dann werden die Änderungen zwischen beiden Dokumenten als Revisionen im ersten Dokument angezeigt.

Das Vergleichsverfahren wird durch Vergleichen von Wörtern auf Zeichenebene oder Wortebene erreicht. Wenn ein Wort eine Änderung von mindestens einem Zeichen enthält, wird die Differenz im Ergebnis als Änderung des gesamten Wortes und nicht als Zeichen angezeigt. Dieser Vergleichsprozess ist eine übliche Aufgabe in der Rechts- und Finanzbranche.

Anstatt manuell nach Unterschieden zwischen Dokumenten oder zwischen verschiedenen Versionen davon zu suchen, können Sie Aspose.Words zum Vergleichen von Dokumenten und zum Abrufen von Inhaltsänderungen in Formatierung, Kopf- / Fußzeile, Tabellen und mehr verwenden.

In diesem Artikel wird erläutert, wie Sie Dokumente vergleichen und erweiterte Vergleichseigenschaften angeben.

{{% alert color="primary" %}}

**Online ausprobieren**

Sie können zwei Dokumente online vergleichen, indem Sie die [Dokumentenvergleich online](https://products.aspose.app/words/comparison) Werkzeug.

Beachten Sie, dass die unten beschriebene Vergleichsmethode in diesem Tool verwendet wird, um sicherzustellen, dass gleiche Ergebnisse erzielt werden. So erhalten Sie auch mit dem Online Vergleichstool oder mit der Vergleichsmethode in Aspose.Words die gleichen Ergebnisse.

{{% /alert %}}

## Einschränkungen und unterstützte Dateiformate {#limitations-and-supported-file-formats}

Der Vergleich von Dokumenten ist eine sehr komplexe Funktion. Es gibt verschiedene Teile der Inhaltskombination, die analysiert werden müssen, um alle Unterschiede zu erkennen. Der Grund für diese Komplexität liegt in der Tatsache, dass Aspose.Words darauf abzielt, die gleichen Vergleichsergebnisse wie der Microsoft Word -Vergleichsalgorithmus zu erhalten.

Die allgemeine Einschränkung für zwei zu vergleichende Dokumente besteht darin, dass sie vor dem Aufruf der compare Methode keine Revisionen haben dürfen, da diese Einschränkung in Microsoft Word vorhanden ist.

{{% alert color="primary" %}}

Beachten Sie, dass Sie zwei beliebige Dokumente innerhalb der vergleichen können [unterstützte Dateiformate](/words/cpp/supported-document-formats/). Sie können Dokumentobjekte vergleichen und sogar diese Objekte von Grund auf neu erstellen, ohne ein bestimmtes Format zu haben.

{{% /alert %}}

## Zwei Dokumente vergleichen {#compare-two-documents}

Wenn Sie Dokumente vergleichen, werden Unterschiede des letzteren Dokuments zum ersteren als Überarbeitungen zum ersteren angezeigt. Wenn Sie ein Dokument ändern, hat jede Bearbeitung nach dem Ausführen der Vergleichsmethode eine eigene Revision.

Aspose.Words ermöglicht es Ihnen, Dokumentunterschiede mit der [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/)-Methode zu identifizieren - dies ähnelt der Microsoft Word-Dokumentvergleichsfunktion. Es ermöglicht Ihnen, Dokumente oder Dokumentversionen zu überprüfen, um Unterschiede und Änderungen zu finden, einschließlich Formatierungsänderungen wie Schriftänderungen, Abstandsänderungen, Hinzufügen von Wörtern und Absätzen.

Als Ergebnis des Vergleichs können Dokumente als gleich oder ungleich bestimmt werden. Der Begriff "gleiche" Dokumente bedeutet, dass die Vergleichsmethode Änderungen nicht als Revisionen darstellen kann. Dies bedeutet, dass sowohl Dokumenttext als auch Textformatierung identisch sind. Es kann jedoch auch andere Unterschiede zwischen Dokumenten geben. Beispielsweise unterstützt Microsoft Word nur Formatrevisionen für Stile, und Sie können das Einfügen / Löschen von Stilen nicht darstellen. Dokumente können also unterschiedliche Stile haben, und die **Compare** -Methode erzeugt immer noch keine Revisionen.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob zwei Dokumente gleich sind oder nicht:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Das folgende Codebeispiel zeigt, wie Sie die `Compare` -Methode einfach auf zwei Dokumente anwenden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Erweiterte Vergleichsoptionen angeben {#specify-advanced-comparing-properties}

Es gibt viele verschiedene Eigenschaften der Klasse [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/), die Sie anwenden können, wenn Sie Dokumente vergleichen möchten.

Mit Aspose.Words können Sie beispielsweise Änderungen ignorieren, die während eines Vergleichsvorgangs für bestimmte Objekttypen im Originaldokument vorgenommen wurden. Sie können die entsprechende Eigenschaft für den Objekttyp auswählen, z. B [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), und andere, indem Sie sie auf "wahr" setzen.

Darüber hinaus stellt Aspose.Words die Eigenschaft [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) bereit, mit der Sie angeben können, ob Änderungen nach Zeichen oder nach Wörtern verfolgt werden sollen.

Eine weitere häufige Eigenschaft ist die Auswahl, in welchem Dokument Vergleichsänderungen angezeigt werden sollen. Beispielsweise hat der "Dialog Dokumente vergleichen" in Microsoft Word die Option "Änderungen anzeigen in" – dies wirkt sich auch auf die Vergleichsergebnisse aus. Aspose.Words stellt die Eigenschaft [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) bereit, die diesem Zweck dient.

Das folgende Codebeispiel zeigt, wie Sie die erweiterten Vergleichseigenschaften festlegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
