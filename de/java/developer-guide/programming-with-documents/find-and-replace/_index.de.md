---
title: Finden und Ersetzen in Java
second_title: Aspose.Words für Java
articleTitle: Finden und ersetzen
linktitle: Finden und ersetzen
type: docs
description: "Finden Sie einen String oder ein regelmäßiges Ausdrucksmuster in Ihrem Dokument und ersetzen Sie ihn durch den gewünschten Text Java."
weight: 100
url: /de/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Sie können leicht in Ihrem Dokument mit einer Tastatur und Maus navigieren, aber wenn Sie viele Seiten haben, um durchzublättern, wird es eine Weile dauern, um einen bestimmten Text in einem langen Dokument zu finden. Es wird zeitaufwendiger, wenn Sie bestimmte Zeichen oder Wörter ersetzen möchten, die Sie in Ihrem Dokument verwendet haben. Mit der Funktionalität "Find and remove" können Sie eine Zeichenfolge in einem Dokument finden und durch eine andere Zeichenfolge ersetzen.

Aspose.Words ermöglicht es Ihnen, einen bestimmten String oder ein regelmäßiges Ausdrucksmuster in Ihrem Dokument zu finden und durch eine Alternative zu ersetzen, ohne zu installieren und zusätzliche Anwendungen wie Microsoft Word. Dies beschleunigt viele Eingabe- und Formatierungsaufgaben, die Sie möglicherweise Stunden der Arbeit sparen.

Dieser Artikel erklärt, wie man String-Ersatz und regelmäßige Ausdrücke mit Unterstützung von Metacharakterern anwendet.

## Möglichkeiten zum Finden und Ersetzen {#ways-to-find-and-replace}

Aspose.Words bietet zwei Möglichkeiten, die Suche anzuwenden und den Betrieb durch folgendes zu ersetzen:

ANHANG *Einfacher String-Ersatz* – um einen bestimmten String mit einem anderen zu finden und zu ersetzen, müssen Sie einen Suchstring (alphanumerische Zeichen) angeben, der nach allen Vorkommnissen durch einen anderen vorgegebenen Ersatzstring ersetzt wird. Beide Strings dürfen keine Symbole enthalten. Berücksichtigen Sie, dass String-Vergleich fallempfindlich sein kann, oder Sie können sich nicht buchstabieren oder mehrere ähnliche Schreibweisen haben.
2. *Regulare Ausdrücke* – um einen regulären Ausdruck anzugeben, um die genauen String-Matches zu finden und entsprechend Ihrem regulären Ausdruck zu ersetzen. Beachten Sie, dass ein Wort als aus nur alphanumerischen Zeichen gebildet wird. Wenn ein Ersatz ausgeführt wird, mit nur ganzen Wörtern übereinstimmend und die Eingabekette zufällig Symbole enthalten, dann werden keine Phrasen gefunden.

Auch können Sie spezielle Metacharacter mit einfachem String-Ersatz und regelmäßigen Ausdrücken verwenden, um Pausen innerhalb des Such- und Ersatzbetriebs anzugeben.

Aspose.Words die Suche und den Austausch der Funktionalität durch [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Sie können mit vielen Optionen während der Suche arbeiten und den Prozess ersetzen [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Klasse.

### Text mit einfacher String-Ersatz finden und ersetzen {#find-and-replace-text-using-simple-string-replacement}

Sie können eine der [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) Methoden, um einen bestimmten String zu finden oder zu ersetzen und die Anzahl der gemachten Ersatze zurückzugeben. In diesem Fall können Sie einen zu ersetzenden String angeben, einen String, der alle seine Vorkommnisse ersetzt, ob der Austausch case-sensitive ist und ob nur eigenständige Wörter betroffen sind.

Das folgende Codebeispiel zeigt, wie man den String "_CustomerName_" findet und durch den String *"James Bond"* ersetzt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Sie können den Unterschied zwischen dem Dokument bemerken, bevor Sie einen einfachen String-Ersatz anwenden:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

Und nach dem einfachen String-Ersatz:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Text mit regelmäßigen Ausdrücken finden und ersetzen {#find-and-replace-text-using-regular-expressions}

Ein regelmäßiger Ausdruck (regex) ist ein Muster, das eine bestimmte Textfolge beschreibt. Angenommen, Sie wollen alle doppelten Vorkommnisse eines Wortes durch ein einziges Wort-Ereignis ersetzen. Dann können Sie den folgenden regulären Ausdruck anwenden, um das Doppelwortmuster anzugeben: `([a-zA-Z]+) \1`.

Verwenden Sie den anderen [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) Verfahren zum Suchen und Ersetzen bestimmter Zeichenkombinationen durch Einstellen der `Regex` Parameter als reguläres Expressionsmuster, um Matches zu finden.

Das folgende Codebeispiel zeigt, wie man Strings ersetzt, die mit einem vorgegebenen Ersatzstring einem regulären Expressionsmuster entsprechen:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Sie können den Unterschied zwischen dem Dokument bemerken, bevor Sie String-Ersatz mit regelmäßigen Ausdrücken anwenden:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

Und nach der Anwendung von String-Ersatz mit regelmäßigen Ausdrücken:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### String mithilfe von Metacharactern suchen und ersetzen {#find-and-replace-text-using-metacharacters}

Sie können Metazeichen in der Suchkette oder der Ersatz-String verwenden, wenn ein bestimmter Text oder Satz aus mehreren Absätzen, Abschnitten oder Seiten besteht. Einige der Metacharacter enthalten **&p** für einen Absatzbruch, **&b** für einen Schnittbruch, **&m** für eine Seitenumbruch und **&l** für einen Line Break.

{{% alert color="primary" %}}

Beachten Sie, dass der Metacharakter **&&** gleich **&**. Zum Beispiel, wenn Sie den Text für **&p** das ist keine Absatzpause, dann können Sie **&&p**.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Text mit Absatz und Seitenbruch ersetzt werden kann:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## String finden und ersetzen in Header/Footer eines Dokumentes {#find-and-replace-string-in-header-or-footer-of-a-document}

Sie können Text im Header/Fußer-Bereich eines Word-Dokuments unter Verwendung des [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Klasse.

Das folgende Codebeispiel zeigt, wie der Text des Header-Abschnitts in Ihrem Dokument ersetzt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Sie können den Unterschied zwischen dem Dokument bemerken, bevor Sie Header string Ersatz anwenden:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Und nach dem Anwenden von Header String Ersatz:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Das Codebeispiel, um den Text des Footer-Abschnitts in Ihrem Dokument zu ersetzen, ist dem vorherigen Header-Code-Beispiel sehr ähnlich. Alles, was Sie tun müssen, ist die folgenden zwei Linien zu ersetzen:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Mit folgenden Eigenschaften:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Sie können den Unterschied zwischen dem Dokument bemerken, bevor Sie Footer string Ersatz anwenden:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

Und nach dem Anwenden von Fußzeilen-Ersatz:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignorieren von Text während des Suchens und Ersetzens {#ignore-text-during-find-and-replace}

Bei der Anwendung des Such- und Ersatzvorgangs können Sie bestimmte Textsegmente ignorieren. So können bestimmte Teile des Textes von der Suche ausgeschlossen werden, und der Fund und der Ersatz können nur auf die übrigen Teile angewendet werden.

Aspose.Words bietet viele finden und ersetzen Eigenschaften für ignorieren Text wie [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), und [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Das folgende Codebeispiel zeigt, wie Text innerhalb von Revisionen löschen ignoriert werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Passen Sie die Funktion Suchen und Ersetzen an {#customize-find-and-replace-operation}

Aspose.Words viele verschiedene [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Text zu finden und zu ersetzen, z. B. das spezifische Format anzuwenden, [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) und [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) Eigenschaften, Substitutionen in Ersatzmustern mit [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) Eigentum und andere.

Das folgende Codebeispiel zeigt, wie Sie ein bestimmtes Wort in Ihrem Dokument hervorheben können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words Sie können die [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) eine Schnittstelle zum Erstellen und Aufruf einer benutzerdefinierten Methode während eines Austauschvorgangs. Sie können einige Anwendungsfälle haben, in denen Sie die Suche anpassen und die Operation ersetzen müssen, z.B. den durch einen regelmäßigen Ausdruck mit HTML-Tags angegebenen Text ersetzen, so dass Sie grundsätzlich durch das Einfügen von HTML ersetzt werden.

Wenn Sie einen String mit einem HTML-Tag ersetzen müssen, wenden Sie das **IReplacingCallback** Schnittstelle zum Anpassen des Such- und Ersatzvorgangs, so dass das Match zu Beginn eines Laufs mit dem Match-Knoten Ihres Dokuments beginnt. Lassen Sie uns einige Beispiele für die Verwendung **IReplacingCallback**.

Das folgende Codebeispiel zeigt, wie man Text mit HTML ersetzt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Das folgende Codebeispiel zeigt, wie man positive Zahlen mit grüner Farbe und negative Zahlen mit roter Farbe hervorhebt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Das folgende Codebeispiel zeigt, wie man eine Zeilennummer zu jeder Zeile vorgibt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
