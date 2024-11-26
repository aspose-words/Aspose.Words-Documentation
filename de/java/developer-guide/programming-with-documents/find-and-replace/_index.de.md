---
title: Suchen und Ersetzen in Java
second_title: Aspose.Words für Java
articleTitle: Suchen und Ersetzen
linktitle: Suchen und Ersetzen
type: docs
description: "Suchen Sie eine Zeichenfolge oder ein Muster für reguläre Ausdrücke in Ihrem Dokument und ersetzen Sie es mit Java durch den gewünschten Text."
weight: 100
url: /de/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Sie können einfach mit Tastatur und Maus in Ihrem Dokument navigieren, aber wenn Sie viele Seiten zum Scrollen haben, dauert es eine Weile, bis Sie bestimmten Text in einem langen Dokument finden. Es wird zeitaufwändiger, wenn Sie bestimmte Zeichen oder Wörter ersetzen möchten, die Sie in Ihrem Dokument verwendet haben. Die Funktion "Suchen und Ersetzen" ermöglicht es Ihnen, eine Zeichenfolge in einem Dokument zu finden und durch eine andere Zeichenfolge zu ersetzen.

Aspose.Words ermöglicht es Ihnen, eine bestimmte Zeichenfolge oder ein Muster für reguläre Ausdrücke in Ihrem Dokument zu finden und durch eine Alternative zu ersetzen, ohne zusätzliche Anwendungen wie Microsoft Word zu installieren und zu verwenden. Dies beschleunigt viele Tipp- und Formatierungsaufgaben und spart Ihnen möglicherweise Stunden Arbeit.

In diesem Artikel wird erläutert, wie Sie Zeichenfolgenersetzung und reguläre Ausdrücke mit Unterstützung von Metazeichen anwenden.

## Möglichkeiten zum Suchen und Ersetzen von {#ways-to-find-and-replace}

Aspose.Words bietet zwei Möglichkeiten, die Operation Suchen und Ersetzen anzuwenden, indem Sie Folgendes verwenden:

1. *Simple string replacement* - Um eine bestimmte Zeichenfolge zu finden und durch eine andere zu ersetzen, müssen Sie eine Suchzeichenfolge (alphanumerische Zeichen) angeben, die bei allen Vorkommen durch eine andere angegebene Ersatzzeichenfolge ersetzt wird. Beide Zeichenfolgen dürfen keine Symbole enthalten. Berücksichtigen Sie, dass beim Zeichenfolgenvergleich zwischen Groß- und Kleinschreibung unterschieden werden kann oder dass Sie sich bei der Rechtschreibung nicht sicher sind oder mehrere ähnliche Schreibweisen haben.
2. *Regular expressions* - um einen regulären Ausdruck anzugeben, um die genauen Übereinstimmungen der Zeichenfolge zu finden und sie gemäß Ihrem regulären Ausdruck zu ersetzen. Beachten Sie, dass ein Wort so definiert ist, dass es nur aus alphanumerischen Zeichen besteht. Wenn eine Ersetzung ausgeführt wird, bei der nur ganze Wörter übereinstimmen und die Eingabezeichenfolge zufällig Symbole enthält, werden keine Phrasen gefunden.

Sie können auch spezielle Metazeichen mit einfacher Zeichenfolgenersetzung und regulären Ausdrücken verwenden, um Unterbrechungen innerhalb der Such- und Ersetzungsoperation anzugeben.

Aspose.Words zeigt die Funktion zum Suchen und Ersetzen mit [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) an. Sie können während des Such- und Ersetzungsprozesses mit der Klasse [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) mit vielen Optionen arbeiten.

### Suchen und Ersetzen von Text mit der einfachen Zeichenfolgenersetzung {#find-and-replace-text-using-simple-string-replacement}

Sie können eine der [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) -Methoden verwenden, um eine bestimmte Zeichenfolge zu suchen oder zu ersetzen und die Anzahl der vorgenommenen Ersetzungen zurückzugeben. In diesem Fall können Sie eine zu ersetzende Zeichenfolge angeben, eine Zeichenfolge, die alle Vorkommen ersetzt, ob bei der Ersetzung zwischen Groß- und Kleinschreibung unterschieden wird und ob nur eigenständige Wörter betroffen sind.

Das folgende Codebeispiel zeigt, wie Sie die Zeichenfolge "_CustomerName_" finden und durch die Zeichenfolge *"James Bond"* ersetzen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie eine einfache Zeichenfolgenersetzung anwenden:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

Und nach dem Anwenden eines einfachen String-Ersetzens:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Suchen und Ersetzen von Text mit regulären Ausdrücken {#find-and-replace-text-using-regular-expressions}

Ein regulärer Ausdruck (Regex) ist ein Muster, das eine bestimmte Textfolge beschreibt. Angenommen, Sie möchten alle doppelten Vorkommen eines Wortes durch ein einzelnes Vorkommen ersetzen. Dann können Sie den folgenden regulären Ausdruck anwenden, um das Doppelwortmuster anzugeben: `([a-zA-Z]+) \1`.

Verwenden Sie die andere [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String)-Methode, um bestimmte Zeichenkombinationen zu suchen und zu ersetzen, indem Sie den Parameter `Regex` als Muster für reguläre Ausdrücke festlegen, um Übereinstimmungen zu finden.

Das folgende Codebeispiel zeigt, wie Zeichenfolgen, die einem regulären Ausdrucksmuster entsprechen, durch eine angegebene Ersetzungszeichenfolge ersetzt werden:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie die Zeichenfolgenersetzung durch reguläre Ausdrücke anwenden:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

Und nach dem Anwenden der Zeichenfolgenersetzung durch reguläre Ausdrücke:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Suchen und Ersetzen von Zeichenfolgen mit Metazeichen {#find-and-replace-text-using-metacharacters}

Sie können Metazeichen in der Suchzeichenfolge oder der Ersetzungszeichenfolge verwenden, wenn ein bestimmter Text oder Ausdruck aus mehreren Absätzen, Abschnitten oder Seiten besteht. Einige der Metazeichen enthalten **&p** für einen Absatzumbruch, **&b** für einen Abschnittsumbruch, **&m** für einen Seitenumbruch und **&l** für einen Zeilenumbruch.

{{% alert color="primary" %}}

Beachten Sie, dass das Metazeichen **&&** gleich **&** ist. Wenn Sie beispielsweise den Text für **&p** suchen müssen, der kein Absatzumbruch ist, können Sie **&&p** verwenden.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Text durch Absatz- und Seitenumbrüche ersetzt wird:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Zeichenfolge in Kopf- / Fußzeile eines Dokuments suchen und ersetzen {#find-and-replace-string-in-header-or-footer-of-a-document}

Sie können Text im Kopf- / Fußzeilenbereich eines Word-Dokuments mit der Klasse [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) suchen und ersetzen.

Das folgende Codebeispiel zeigt, wie Sie den Text des Kopfzeilenabschnitts in Ihrem Dokument ersetzen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie die Ersetzung der Kopfzeilenzeichenfolge anwenden:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Und nach dem Anwenden des Ersetzens der Header-Zeichenfolge:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Das Codebeispiel zum Ersetzen des Textes des Fußzeilenabschnitts in Ihrem Dokument ist dem vorherigen Codebeispiel für die Kopfzeile sehr ähnlich. Alles was Sie tun müssen, ist die folgenden zwei Zeilen zu ersetzen:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Mit den folgenden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie das Ersetzen der Fußzeilenzeichenfolge anwenden:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

Und nach dem Anwenden des Ersetzens der Fußzeilenzeichenfolge:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Text beim Suchen und Ersetzen ignorieren {#ignore-text-during-find-and-replace}

Beim Anwenden der Operation Suchen und Ersetzen können Sie bestimmte Textsegmente ignorieren. So können bestimmte Teile des Textes von der Suche ausgeschlossen werden, und das Suchen und Ersetzen kann nur auf die verbleibenden Teile angewendet werden.

Aspose.Words bietet viele Such- und Ersetzungseigenschaften zum Ignorieren von Text, z. B.: [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), und [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Das folgende Codebeispiel zeigt, wie Text in Löschrevisionen ignoriert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Anpassen der Such- und Ersetzungsoperation {#customize-find-and-replace-operation}

Aspose.Words bietet viele verschiedene [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) zum Suchen und Ersetzen von Text, z. B. das Anwenden eines bestimmten Formats mit [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) - und [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) -Eigenschaften, das Verwenden von Ersetzungen in Ersetzungsmustern mit [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) -Eigenschaften und andere.

Das folgende Codebeispiel zeigt, wie Sie ein bestimmtes Wort in Ihrem Dokument hervorheben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words ermöglicht die Verwendung der [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/)-Schnittstelle zum Erstellen und Aufrufen einer benutzerdefinierten Methode während einer Ersetzungsoperation. Möglicherweise haben Sie einige Anwendungsfälle, in denen Sie die Such- und Ersetzungsoperation anpassen müssen, z. B. das Ersetzen von Text, der durch einen regulären Ausdruck mit HTML -Tags angegeben wurde. Im Grunde werden Sie replace durch Einfügen von HTML anwenden.

Wenn Sie eine Zeichenfolge durch ein HTML-Tag ersetzen müssen, wenden Sie die **IReplacingCallback**-Schnittstelle an, um die Such- und Ersetzungsoperation so anzupassen, dass die Übereinstimmung zu Beginn eines Laufs mit dem Übereinstimmungsknoten Ihres Dokuments beginnt. Lassen Sie uns einige Beispiele für die Verwendung von **IReplacingCallback** geben.

Das folgende Codebeispiel zeigt, wie der durch HTML angegebene Text ersetzt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Das folgende Codebeispiel zeigt, wie positive Zahlen mit grüner Farbe und negative Zahlen mit roter Farbe hervorgehoben werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Das folgende Codebeispiel zeigt, wie jeder Zeile eine Zeilennummer vorangestellt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
