---
title: Vergleichen Sie Dokumente in C#
second_title: Aspose.Words für .NET
articleTitle: Dokumente vergleichen
linktitle: Dokumente vergleichen
description: "Vergleichen Sie zwei Dokumente in allen unterstützten Formaten und zeigen Sie Inhaltsänderungen mithilfe von C# an. Beim Vergleich können Sie erweiterte Optionen anwenden."
type: docs
weight: 60
url: /de/net/compare-documents/
---

Der Vergleich von Dokumenten ist ein Prozess, der Änderungen zwischen zwei Dokumenten identifiziert und die Änderungen als Revisionen enthält. Bei diesem Vorgang werden zwei beliebige Dokumente verglichen, einschließlich Versionen eines bestimmten Dokuments. Anschließend werden die Änderungen zwischen beiden Dokumenten als Überarbeitungen im ersten Dokument angezeigt.

Die Vergleichsmethode wird durch den Vergleich von Wörtern auf Zeichenebene oder auf Wortebene erreicht. Wenn ein Wort eine Änderung von mindestens einem Zeichen enthält, wird der Unterschied im Ergebnis als Änderung des gesamten Worts und nicht eines Zeichens angezeigt. Dieser Vergleichsprozess ist eine übliche Aufgabe in der Rechts- und Finanzbranche.

Anstatt manuell nach Unterschieden zwischen Dokumenten oder zwischen verschiedenen Versionen davon zu suchen, können Sie Aspose.Words zum Vergleichen von Dokumenten und zum Abrufen von Inhaltsänderungen in Formatierung, Kopf-/Fußzeile, Tabellen und mehr verwenden.

In diesem Artikel wird erläutert, wie Sie Dokumente vergleichen und die erweiterten Vergleichseigenschaften festlegen.

{{% alert color="primary" %}}

**Versuchen Sie es online**

Mit dem [Dokumentenvergleich online](https://products.aspose.app/words/comparison)-Tool können Sie zwei Dokumente online vergleichen.

Beachten Sie, dass in diesem Tool die unten beschriebene Vergleichsmethode verwendet wird, um sicherzustellen, dass gleiche Ergebnisse erzielt werden. Sie erhalten also die gleichen Ergebnisse, auch wenn Sie das Online Vergleichstool oder die Vergleichsmethode in Aspose.Words verwenden.

{{% /alert %}}

## Einschränkungen und unterstützte Dateiformate {#limitations-and-supported-file-formats}

Der Vergleich von Dokumenten ist eine sehr komplexe Funktion. Es gibt verschiedene Teile der Inhaltskombination, die analysiert werden müssen, um alle Unterschiede zu erkennen. Der Grund für diese Komplexität liegt darin, dass Aspose.Words darauf abzielt, die gleichen Vergleichsergebnisse wie der Microsoft Word-Vergleichsalgorithmus zu erzielen.

Die allgemeine Einschränkung für zwei zu vergleichende Dokumente besteht darin, dass sie vor dem Aufruf der Vergleichsmethode keine Revisionen aufweisen dürfen, da diese Einschränkung in Microsoft Word besteht.

{{% alert color="primary" %}}

Beachten Sie, dass Sie zwei beliebige Dokumente innerhalb des [Unterstützte Dokumentformate](/words/de/net/supported-document-formats/) vergleichen können. Grundsätzlich können Sie Dokumentobjekte vergleichen und diese Objekte sogar von Grund auf erstellen, ohne ein bestimmtes Format zu haben.

{{% /alert %}}

## Vergleichen Sie zwei Dokumente {#compare-two-documents}

Wenn Sie Dokumente vergleichen, werden Unterschiede zwischen dem letztgenannten und dem erstgenannten Dokument als Überarbeitungen des erstgenannten Dokuments angezeigt. Wenn Sie ein Dokument ändern, erhält jede Änderung nach Ausführung der Vergleichsmethode eine eigene Revision.

Mit Aspose.Words können Sie Dokumentunterschiede mithilfe der [Compare](https://reference.aspose.com/words/de/net/aspose.words/document/compare/#compare/)-Methode identifizieren – diese ähnelt der Funktion zum Vergleichen von Microsoft Word-Dokumenten. Es ermöglicht Ihnen, Dokumente oder Dokumentversionen zu überprüfen, um Unterschiede und Änderungen zu finden, einschließlich Formatierungsänderungen wie Schriftartänderungen, Abstandsänderungen, das Hinzufügen von Wörtern und Absätzen.

Durch den Vergleich kann festgestellt werden, ob Dokumente gleich oder ungleich sind. Der Begriff "gleiche" Dokumente bedeutet, dass die Vergleichsmethode Änderungen nicht als Revisionen darstellen kann. Das bedeutet, dass sowohl der Dokumenttext als auch die Textformatierung gleich sind. Es kann aber auch andere Unterschiede zwischen Dokumenten geben. Microsoft Word unterstützt beispielsweise nur Formatrevisionen für Stile und Sie können das Einfügen/Löschen von Stilen nicht darstellen. Dokumente können also unterschiedliche Stile haben und die **Compare**-Methode erzeugt dennoch keine Revisionen.

Das folgende Codebeispiel zeigt, wie man prüft, ob zwei Dokumente gleich sind oder nicht:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Das folgende Codebeispiel zeigt, wie Sie die `Compare`-Methode einfach auf zwei Dokumente anwenden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Geben Sie die erweiterten Vergleichsoptionen {#specify-advanced-comparing-properties} an

Es gibt viele verschiedene Eigenschaften der [CompareOptions](https://reference.aspose.com/words/de/net/aspose.words.comparing/compareoptions/)-Klasse, die Sie beim Vergleichen von Dokumenten anwenden können.

Mit Aspose.Words können Sie beispielsweise Änderungen ignorieren, die während eines Vergleichsvorgangs für bestimmte Objekttypen im Originaldokument vorgenommen wurden. Sie können die entsprechende Eigenschaft für den Objekttyp auswählen, z. B. [IgnoreHeadersAndFooters](https://reference.aspose.com/words/de/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/de/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/de/net/aspose.words.comparing/compareoptions/ignorecomments/) und andere, indem Sie sie auf "true" festlegen.

Darüber hinaus bietet Aspose.Words die [Granularity](https://reference.aspose.com/words/de/net/aspose.words.comparing/compareoptions/granularity/)-Eigenschaft, mit der Sie angeben können, ob Änderungen zeichen- oder wortweise verfolgt werden sollen.

Eine weitere gemeinsame Eigenschaft ist die Auswahl, in welchem Dokument Vergleichsänderungen angezeigt werden sollen. Beispielsweise verfügt das "Dialogfeld "Dokumente vergleichen"" in Microsoft Word über die Option "Änderungen anzeigen in" – dies wirkt sich auch auf die Vergleichsergebnisse aus. Aspose.Words stellt die [Target](https://reference.aspose.com/words/de/net/aspose.words.comparing/compareoptions/target/)-Eigenschaft bereit, die diesem Zweck dient.

Das folgende Codebeispiel zeigt, wie die erweiterten Vergleichseigenschaften festgelegt werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
