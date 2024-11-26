---
title: Suchen und Ersetzen in C#
second_title: Aspose.Words für .NET
articleTitle: Suchen und Ersetzen
linktitle: Suchen und Ersetzen
type: docs
description: "Suchen Sie in Ihrem Dokument nach einer Zeichenfolge oder einem regulären Ausdrucksmuster und ersetzen Sie es mithilfe von C# durch den gewünschten Text."
weight: 100
url: /de/net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Mit Tastatur und Maus können Sie problemlos in Ihrem Dokument navigieren. Wenn Sie jedoch durch viele Seiten scrollen müssen, dauert es eine ganze Weile, bis Sie in einem langen Dokument einen bestimmten Text finden. Es wird zeitaufwändiger sein, wenn Sie bestimmte Zeichen oder Wörter ersetzen möchten, die Sie in Ihrem Dokument verwendet haben. Mit der Funktion "Suchen und Ersetzen" können Sie eine Zeichenfolge in einem Dokument finden und durch eine andere Zeichenfolge ersetzen.

Mit Aspose.Words können Sie eine bestimmte Zeichenfolge oder ein Muster eines regulären Ausdrucks in Ihrem Dokument finden und durch eine Alternative ersetzen, ohne zusätzliche Anwendungen wie Microsoft Word installieren und verwenden zu müssen. Dadurch werden viele Tipp- und Formatierungsaufgaben beschleunigt, was Ihnen möglicherweise stundenlange Arbeit erspart.

In diesem Artikel wird erläutert, wie Sie String-Ersetzung und reguläre Ausdrücke mit Unterstützung von Metazeichen anwenden.

## Möglichkeiten, {#ways-to-find-and-replace} zu finden und zu ersetzen

Aspose.Words bietet zwei Möglichkeiten, den Such- und Ersetzungsvorgang anzuwenden, indem es Folgendes verwendet:

1. *Einfache Zeichenfolgenersetzung* – um eine bestimmte Zeichenfolge zu finden und durch eine andere zu ersetzen, müssen Sie eine Suchzeichenfolge (alphanumerische Zeichen) angeben, die bei jedem Vorkommen durch eine andere angegebene Ersatzzeichenfolge ersetzt wird. Beide Zeichenfolgen dürfen keine Symbole enthalten. Berücksichtigen Sie, dass beim Vergleich von Zeichenfolgen die Groß-/Kleinschreibung beachtet werden kann. Andernfalls sind Sie möglicherweise nicht sicher, was die Schreibweise angeht, oder Sie haben mehrere ähnliche Schreibweisen.
2. *Reguläre Ausdrücke* – um einen regulären Ausdruck anzugeben, um die genauen Zeichenfolgenübereinstimmungen zu finden und sie entsprechend Ihrem regulären Ausdruck zu ersetzen. Beachten Sie, dass ein Wort nur aus alphanumerischen Zeichen besteht. Wenn beim Ersetzen nur ganze Wörter gefunden werden und die Eingabezeichenfolge zufällig Symbole enthält, werden keine Phrasen gefunden.

Darüber hinaus können Sie spezielle Metazeichen mit einfacher Zeichenfolgenersetzung und regulären Ausdrücken verwenden, um Pausen innerhalb des Such- und Ersetzungsvorgangs anzugeben.

Aspose.Words bietet die Such- und Ersetzungsfunktion mit dem [Aspose.Words.Replacing](https://reference.aspose.com/words/de/net/aspose.words.replacing/)-Namespace. Mithilfe der [FindReplaceOptions](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/)-Klasse können Sie während des Such- und Ersetzungsprozesses mit vielen Optionen arbeiten.

### Suchen und ersetzen Sie Text mithilfe der einfachen Zeichenfolgenersetzung {#find-and-replace-text-using-simple-string-replacement}

Sie können eine der [Replace](https://reference.aspose.com/words/de/net/aspose.words/range/replace/#replace/)-Methoden verwenden, um eine bestimmte Zeichenfolge zu suchen oder zu ersetzen und die Anzahl der vorgenommenen Ersetzungen zurückzugeben. In diesem Fall können Sie eine zu ersetzende Zeichenfolge angeben, eine Zeichenfolge, die alle Vorkommen ersetzt, ob bei der Ersetzung die Groß-/Kleinschreibung beachtet werden soll und ob nur eigenständige Wörter betroffen sein sollen.

Das folgende Codebeispiel zeigt, wie Sie die Zeichenfolge "_CustomerName_" finden und durch die Zeichenfolge *"James Bond"* ersetzen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Sie können den Unterschied zwischen dem Dokument erkennen, bevor Sie eine einfache Zeichenfolgenersetzung anwenden:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="vor dem einfachen String-Ersatz" style="width:600px"/>

Und nach der einfachen String-Ersetzung:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="nach dem einfachen String-Ersatz" style="width:600px"/>

### Suchen und Ersetzen von Text mithilfe regulärer Ausdrücke {#find-and-replace-text-using-regular-expressions}

Ein regulärer Ausdruck (Regex) ist ein Muster, das eine bestimmte Textsequenz beschreibt. Angenommen, Sie möchten alle doppelten Vorkommen eines Wortes durch ein einziges Wort ersetzen. Anschließend können Sie den folgenden regulären Ausdruck anwenden, um das Doppelwortmuster anzugeben: `([a-zA-Z]+) \1`.

Verwenden Sie die andere [Replace](https://reference.aspose.com/words/de/net/aspose.words/range/replace/)-Methode, um bestimmte Zeichenkombinationen zu suchen und zu ersetzen, indem Sie den `Regex`-Parameter als reguläres Ausdrucksmuster festlegen, um Übereinstimmungen zu finden.

Das folgende Codebeispiel zeigt, wie Zeichenfolgen, die einem regulären Ausdrucksmuster entsprechen, durch eine angegebene Ersetzungszeichenfolge ersetzt werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Sie können den Unterschied zwischen dem Dokument erkennen, bevor Sie die Zeichenfolgenersetzung durch reguläre Ausdrücke anwenden:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="vor dem Ersetzen durch reguläre Ausdrücke" style="width:600px"/>

Und nach der String-Ersetzung durch reguläre Ausdrücke:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="nach dem Ersetzen durch reguläre Ausdrücke" style="width:600px"/>

### Suchen und Ersetzen von Zeichenfolgen mithilfe von Metazeichen {#find-and-replace-text-using-metacharacters}

Sie können Metazeichen in der Suchzeichenfolge oder der Ersetzungszeichenfolge verwenden, wenn ein bestimmter Text oder Satz aus mehreren Absätzen, Abschnitten oder Seiten besteht. Zu den Metazeichen gehören **&amp;P** für einen Absatzumbruch, **&amp;B** für einen Abschnittsumbruch, **&amp;M** für einen Seitenumbruch und **&amp;l** für einen Zeilenumbruch.

{{% alert color="primary" %}}

Beachten Sie, dass das Metazeichen **&&** **&** entspricht. Wenn Sie beispielsweise Text für **&amp;P** suchen müssen, der kein Absatzumbruch ist, können Sie **&amp;&amp;P** verwenden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Text durch Absatz und Seitenumbruch ersetzt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Suchen und ersetzen Sie eine Zeichenfolge in der Kopf-/Fußzeile eines {#find-and-replace-string-in-header-or-footer-of-a-document}-Dokuments

Mithilfe der [HeaderFooter](https://reference.aspose.com/words/de/net/aspose.words/headerfooter/)-Klasse können Sie Text im Kopf-/Fußzeilenbereich eines Word-Dokuments suchen und ersetzen.

Das folgende Codebeispiel zeigt, wie Sie den Text des Kopfzeilenabschnitts in Ihrem Dokument ersetzen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Sie können den Unterschied zwischen dem Dokument erkennen, bevor Sie die Ersetzung der Header-Zeichenfolge anwenden:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="vor dem Anwenden des Header-String-Ersatzes" style="width:600px"/>

Und nach der Anwendung der Header-String-Ersetzung:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="Nach dem Anwenden des Header-String-Ersatzes" style="width:600px"/>

Das Codebeispiel zum Ersetzen des Texts des Fußzeilenabschnitts in Ihrem Dokument ist dem vorherigen Codebeispiel für die Kopfzeile sehr ähnlich. Sie müssen lediglich die folgenden beiden Zeilen ersetzen:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Mit den folgenden:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Sie können den Unterschied zwischen dem Dokument erkennen, bevor Sie die Ersetzung der Fußzeilenzeichenfolge anwenden:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="vor dem Anwenden des Fußzeilen-String-Ersatzes" style="width:600px"/>

Und nach dem Ersetzen der Fußzeilenzeichenfolge:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="Nach dem Anwenden des Ersetzens der Fußzeilenzeichenfolge" style="width:600px"/>

## Text beim Suchen und Ersetzen von {#ignore-text-during-find-and-replace} ignorieren

Während Sie den Such- und Ersetzungsvorgang anwenden, können Sie bestimmte Textsegmente ignorieren. So können bestimmte Teile des Textes von der Suche ausgeschlossen werden und das Suchen und Ersetzen nur auf die übrigen Teile angewendet werden.

Aspose.Words bietet viele Such- und Ersetzungseigenschaften zum Ignorieren von Text wie [IgnoreDeleted](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) und [IgnoreInserted](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

Das folgende Codebeispiel zeigt, wie Text in Löschrevisionen ignoriert wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Passen Sie den Such- und Ersetzungsvorgang {#customize-find-and-replace-operation} an

Aspose.Words bietet viele verschiedene [properties](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/) zum Suchen und Ersetzen von Text, z. B. das Anwenden eines bestimmten Formats mit [ApplyFont](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/applyfont/)- und [ApplyParagraphFormats](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/)-Eigenschaften, die Verwendung von Ersetzungen in Ersetzungsmustern mit [UseSubstitutions](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/)-Eigenschaften und andere.

Das folgende Codebeispiel zeigt, wie Sie ein bestimmtes Wort in Ihrem Dokument hervorheben:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Mit Aspose.Words können Sie die [IReplacingCallback](https://reference.aspose.com/words/de/net/aspose.words.replacing/ireplacingcallback/)-Schnittstelle verwenden, um während eines Ersetzungsvorgangs eine benutzerdefinierte Methode zu erstellen und aufzurufen. Möglicherweise gibt es einige Anwendungsfälle, in denen Sie den Such- und Ersetzungsvorgang anpassen müssen, z. B. das Ersetzen von mit einem regulären Ausdruck angegebenem Text durch HTML-Tags. Grundsätzlich wenden Sie also das Ersetzen durch Einfügen von HTML an.

Wenn Sie eine Zeichenfolge durch ein HTML-Tag ersetzen müssen, wenden Sie die **IReplacingCallback**-Schnittstelle an, um den Such- und Ersetzungsvorgang so anzupassen, dass die Übereinstimmung am Anfang einer Ausführung mit dem Übereinstimmungsknoten Ihres Dokuments beginnt. Lassen Sie uns einige Beispiele für die Verwendung von **IReplacingCallback** bereitstellen.

Das folgende Codebeispiel zeigt, wie der angegebene Text durch HTML ersetzt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Das folgende Codebeispiel zeigt, wie man positive Zahlen mit grüner Farbe und negative Zahlen mit roter Farbe hervorhebt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

Das folgende Codebeispiel zeigt, wie jeder Zeile eine Zeilennummer vorangestellt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
