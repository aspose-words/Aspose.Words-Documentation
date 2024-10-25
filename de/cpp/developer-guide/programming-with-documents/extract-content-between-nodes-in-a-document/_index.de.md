---
title: So extrahieren Sie Inhalte zwischen Dokumentknoten
second_title: Aspose.Words für C++
articleTitle: Extrahieren von Inhalten zwischen Knoten in einem Dokument
linktitle: Inhalte zwischen Knoten extrahieren
type: docs
description: "Extrahieren von Dokumentinhalten in verschiedenen mit C++."
weight: 140
url: /de/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
---

Bei der Arbeit mit Dokumenten ist es wichtig, Inhalte aus einem bestimmten Bereich innerhalb eines Dokuments einfach extrahieren zu können. Der Inhalt kann jedoch aus komplexen Elementen wie Absätzen, Tabellen, Bildern usw. bestehen.

Unabhängig davon, welcher Inhalt extrahiert werden muss, wird die Methode zum Extrahieren dieses Inhalts immer dadurch bestimmt, zwischen welchen Knoten Inhalte extrahiert werden sollen. Dies können ganze Textkörper oder einfache Textläufe sein.

Es gibt viele mögliche Situationen und daher viele verschiedene Knotentypen, die beim Extrahieren von Inhalten berücksichtigt werden müssen. Beispielsweise möchten Sie möglicherweise Inhalte extrahieren zwischen:

- Zwei spezifische Absätze
- Spezifische Textläufe
- Felder verschiedener Typen, z. B. Seriendruckfelder
- Anfangs- und Endbereich eines Lesezeichens oder Kommentars
- Verschiedene Textkörper, die in separaten Abschnitten enthalten sind

In einigen Situationen müssen Sie möglicherweise sogar verschiedene Knotentypen kombinieren, z. B. das Extrahieren von Inhalten zwischen einem Absatz und einem Feld oder zwischen einem Lauf und einem Lesezeichen.

Dieser Artikel enthält die Codeimplementierung zum Extrahieren von Text zwischen verschiedenen Knoten sowie Beispiele für gängige Szenarien.

{{% alert color="primary" %}}

Diese Beispiele sind nur einige Beispiele für die vielen Möglichkeiten. Wir planen, dass die Textextraktionsfunktionalität in Zukunft Teil der Öffentlichkeit API ist und kein zusätzlicher Code erforderlich ist. In der Zwischenzeit können Sie Ihre Anfragen zu dieser Funktionalität gerne auf der Website posten [Aspose.Words Foren-Übersicht](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Warum Inhalte extrahieren

Oft besteht das Ziel des Extrahierens des Inhalts darin, ihn zu duplizieren oder separat in einem neuen Dokument zu speichern. Sie können beispielsweise Inhalte extrahieren und:

- Kopieren Sie es in ein separates Dokument
- Konvertieren Sie einen bestimmten Teil eines Dokuments in PDF oder ein Bild
- Duplizieren Sie den Inhalt des Dokuments mehrmals
- Arbeiten Sie mit extrahiertem Inhalt getrennt vom Rest des Dokuments

Dies kann leicht mit Aspose.Words und der folgenden Code-Implementierung erreicht werden.

## Algorithmus zum Extrahieren von Inhalten

Der Code in diesem Abschnitt behandelt alle oben beschriebenen möglichen Situationen mit einer verallgemeinerten und wiederverwendbaren Methode. Der allgemeine Überblick über diese Technik beinhaltet:

1. Sammeln der Knoten, die den Inhaltsbereich vorgeben, der aus Ihrem Dokument extrahiert wird. Das Abrufen dieser Knoten wird vom Benutzer in seinem Code basierend auf dem, was extrahiert werden soll, gehandhabt.
1. Übergeben dieser Knoten an die unten angegebene **ExtractContent** -Methode. Sie müssen auch einen booleschen Parameter übergeben, der angibt, ob diese Knoten, die als Marker fungieren, in die Extraktion einbezogen werden sollen oder nicht.
1. Abrufen einer Liste geklonter Inhalte (kopierter Knoten), die extrahiert werden sollen. Sie können diese Knotenliste auf beliebige Weise verwenden, z. B. um ein neues Dokument zu erstellen, das nur den ausgewählten Inhalt enthält.

## So extrahieren Sie Inhalte

Um den Inhalt aus Ihrem Dokument zu extrahieren, müssen Sie die unten stehende Methode `ExtractContent` aufrufen und die entsprechenden Parameter übergeben. Die zugrunde liegende Grundlage dieser Methode besteht darin, Knoten auf Blockebene (Absätze und Tabellen) zu finden und sie zu klonen, um identische Kopien zu erstellen. Wenn die übergebenen Markerknoten Blockebene sind, kann die Methode den Inhalt auf dieser Ebene einfach kopieren und dem Array hinzufügen.

Wenn die Markerknoten jedoch inline sind (ein untergeordnetes Element eines Absatzes), wird die Situation komplexer, da der Absatz am Inline-Knoten aufgeteilt werden muss, sei es ein Lauf, Lesezeichenfelder usw. Inhalt in den geklonten übergeordneten Knoten, der nicht zwischen den Markern vorhanden ist, wird entfernt. Dieser Prozess wird verwendet, um sicherzustellen, dass die Inline-Knoten weiterhin die Formatierung des übergeordneten Absatzes beibehalten. Die Methode führt auch Überprüfungen der als Parameter übergebenen Knoten durch und löst eine Ausnahme aus, wenn einer der Knoten ungültig ist. Die Parameter, die an diese Methode übergeben werden sollen, sind:

1. **StartNode** und **EndNode**. Die ersten beiden Parameter sind die Knoten, die definieren, wo die Extraktion des Inhalts beginnen bzw. enden soll. Diese Knoten können sowohl Blockebene (Absatz, Tabelle) als auch Inline-Ebene (z. B. Ausführen, FieldStart, BookmarkStart usw.) sein.):
   1. Um ein Feld zu übergeben, sollten Sie das entsprechende **FieldStart** -Objekt übergeben.
   1. Um Lesezeichen zu übergeben, sollten die Knoten **BookmarkStart** und BookmarkEnd übergeben werden.
   1. Um Kommentare zu übergeben, sollten die Knoten CommentRangeStart und CommentRangeEnd verwendet werden.
1. **IsInclusive**. Definiert, ob die Marker in die Extraktion einbezogen werden oder nicht. Wenn diese Option auf false gesetzt ist und derselbe Knoten oder aufeinanderfolgende Knoten übergeben werden, wird eine leere Liste zurückgegeben:

      1. Wenn ein **FieldStart**-Knoten übergeben wird, definiert diese Option, ob das gesamte Feld eingeschlossen oder ausgeschlossen werden soll.
      1. Wenn ein **BookmarkStart**- oder **BookmarkEnd**-Knoten übergeben wird, definiert diese Option, ob das Lesezeichen enthalten ist oder nur der Inhalt zwischen dem Lesezeichenbereich.
      1. Wenn ein **CommentRangeStart**- oder **CommentRangeEnd**-Knoten übergeben wird, definiert diese Option, ob der Kommentar selbst oder nur der Inhalt in den Kommentarbereich aufgenommen werden soll.

Die Implementierung der **ExtractContent** -Methode finden Sie [hier](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Auf diese Methode wird in den Szenarien in diesem Artikel Bezug genommen.

Wir werden auch eine benutzerdefinierte Methode definieren, um auf einfache Weise ein Dokument aus extrahierten Knoten zu generieren. Diese Methode wird in vielen der folgenden Szenarien verwendet und erstellt einfach ein neues Dokument und importiert den extrahierten Inhalt hinein.

Das folgende Codebeispiel zeigt, wie eine Liste von Knoten erstellt und in ein neues Dokument eingefügt wird.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Inhalt zwischen Absätzen extrahieren

Dies zeigt, wie Sie mit der obigen Methode Inhalte zwischen bestimmten Absätzen extrahieren. In diesem Fall möchten wir den Text des Briefes extrahieren, der in der ersten Hälfte des Dokuments gefunden wurde. Wir können erkennen, dass dies zwischen dem 7 -ten und dem 11. Absatz liegt.

Der folgende Code führt diese Aufgabe aus. Die entsprechenden Absätze werden mit der [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) -Methode im Dokument extrahiert und übergeben die angegebenen Indizes. Diese Knoten übergeben wir dann an die Methode **ExtractContent** und geben an, dass diese in die Extraktion einbezogen werden sollen. Diese Methode gibt den kopierten Inhalt zwischen diesen Knoten zurück, die dann in ein neues Dokument eingefügt werden.

Das folgende Codebeispiel zeigt, wie Sie den Inhalt zwischen bestimmten Absätzen mit der obigen `ExtractContent` -Methode extrahieren:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Extrahieren von Inhalten zwischen verschiedenen Knotentypen

Wir können Inhalte zwischen beliebigen Kombinationen von Block-Level- oder Inline-Knoten extrahieren. In diesem Szenario werden wir den Inhalt zwischen dem ersten Absatz und der Tabelle im zweiten Abschnitt einschließlich extrahieren. Wir erhalten die Markerknoten, indem wir die Methoden `Body.FirstParagraph` und [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) im zweiten Abschnitt des Dokuments aufrufen, um die entsprechenden Absatz- und Tabellenknoten abzurufen. Für eine leichte Variation duplizieren wir stattdessen den Inhalt und fügen ihn unter das Original ein.

Das folgende Codebeispiel zeigt, wie Sie den Inhalt zwischen einem Absatz und einer Tabelle mit der Methode `ExtractContent` extrahieren:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Extrahieren von Inhalten zwischen Absätzen basierend auf dem Stil

Möglicherweise müssen Sie den Inhalt zwischen Absätzen desselben oder verschiedener Stile extrahieren, z. B. zwischen Absätzen, die mit Überschriftenstilen markiert sind. Der folgende Code zeigt, wie dies erreicht werden kann. Es ist ein einfaches Beispiel, das den Inhalt zwischen der ersten Instanz der Stile "Überschrift 1" und "Überschrift 3" extrahiert, ohne auch die Überschriften zu extrahieren. Dazu setzen wir den letzten Parameter auf false, der angibt, dass die Markerknoten nicht enthalten sein sollen.

In einer ordnungsgemäßen Implementierung sollte dies in einer Schleife ausgeführt werden, um Inhalte zwischen allen Absätzen dieser Stile aus dem Dokument zu extrahieren. Der extrahierte Inhalt wird in ein neues Dokument kopiert.

Das folgende Codebeispiel zeigt, wie Inhalte zwischen Absätzen mit bestimmten Stilen mithilfe der `ExtractContent`-Methode extrahiert werden:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Extrahieren von Inhalten zwischen bestimmten Läufen

Sie können auch Inhalte zwischen Inline-Knoten wie [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) extrahieren. **Runs** aus verschiedenen Absätzen können als Marker übergeben werden. Der folgende Code zeigt, wie Sie bestimmten Text zwischen demselben **Paragraph** -Knoten extrahieren.

Das folgende Codebeispiel zeigt, wie Inhalte zwischen bestimmten Läufen desselben Absatzes mit der Methode **ExtractContent** extrahiert werden:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Extrahieren von Inhalten mithilfe eines Felds

Um ein Feld als Markierung zu verwenden, sollte der `FieldStart` -Knoten übergeben werden. Der letzte Parameter der `ExtractContent` -Methode definiert, ob das gesamte Feld eingeschlossen werden soll oder nicht. Extrahieren wir den Inhalt zwischen dem Seriendruckfeld "FullName" und einem Absatz im Dokument. Wir verwenden die [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) -Methode der [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) -Klasse. Dadurch wird der Knoten **FieldStart** aus dem Namen des übergebenen Seriendruckfelds zurückgegeben.

In unserem Fall setzen wir den letzten an die **ExtractContent** -Methode übergebenen Parameter auf false, um das Feld von der Extraktion auszuschließen. Wir werden den extrahierten Inhalt in PDF rendern.

Das folgende Codebeispiel zeigt, wie Sie mit der Methode **ExtractContent** Inhalte zwischen einem bestimmten Feld und einem Absatz im Dokument extrahieren:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Inhalte aus einem Lesezeichen extrahieren

In einem Dokument wird der Inhalt, der in einem Lesezeichen definiert ist, durch die Knoten `BookmarkStart` und BookmarkEnd gekapselt. Der Inhalt, der zwischen diesen beiden Knoten gefunden wird, bildet das Lesezeichen. Sie können jeden dieser Knoten als beliebige Markierung übergeben, auch als Solche aus verschiedenen Lesezeichen, sofern die Startmarkierung vor der Endmarkierung im Dokument angezeigt wird. Wir werden diesen Inhalt mit dem folgenden Code in ein neues Dokument extrahieren. Die Parameteroption **IsInclusive** zeigt, wie das Lesezeichen beibehalten oder verworfen wird.

Das folgende Codebeispiel zeigt, wie Sie den Inhalt, auf den ein Lesezeichen verweist, mit der Methode **ExtractContent** extrahieren:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Inhalt aus einem Kommentar extrahieren

Ein Kommentar besteht aus den Knoten CommentRangeStart, CommentRangeEnd und Kommentar. Alle diese Knoten sind inline. Die ersten beiden Knoten kapseln den Inhalt des Dokuments ein, auf den der Kommentar verweist, wie in der Abbildung unten zu sehen ist.

Der **Comment** -Knoten selbst ist eine InlineStory, die Absätze und Läufe enthalten kann. Es stellt die Nachricht des Kommentars als Kommentarblase im Vorschaufenster dar. Da dieser Knoten inline ist und von einem Body abstammt, können Sie den Inhalt auch aus dieser Nachricht extrahieren.

Der Kommentar kapselt die Überschrift, den ersten Absatz und die Tabelle im zweiten Abschnitt ein. Extrahieren wir diesen Kommentar in ein neues Dokument. Die Option **IsInclusive** bestimmt, ob der Kommentar selbst beibehalten oder verworfen wird.

Das folgende Codebeispiel zeigt, wie dies zu tun ist:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## So extrahieren Sie Inhalte mit DocumentVisitor

Verwenden Sie die Klasse [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/), um dieses Verwendungsszenario zu implementieren. Diese Klasse entspricht dem bekannten Besucherdesignmuster. Mit **DocumentVisitor,** können Sie benutzerdefinierte Operationen definieren und ausführen, die eine Aufzählung über den Dokumentbaum erfordern.

**DocumentVisitor**

Jede **DocumentVisitor.VisitXXX**-Methode gibt einen [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/)-Wert zurück, der die Aufzählung von Knoten steuert. Sie können entweder anfordern, die Aufzählung fortzusetzen, den aktuellen Knoten zu überspringen (aber die Aufzählung fortzusetzen) oder die Aufzählung von Knoten zu stoppen.

Dies sind die Schritte, die Sie ausführen sollten, um verschiedene Teile eines Dokuments programmgesteuert zu bestimmen und zu extrahieren:

- Erstellen Sie eine von **DocumentVisitor** abgeleitete Klasse
- Überschreiben und Bereitstellen von Implementierungen für einige oder alle **DocumentVisitor.VisitXXX** -Methoden, um einige benutzerdefinierte Vorgänge auszuführen
- Rufen Sie `Node.Accept` auf dem Knoten auf, von dem aus Sie die Aufzählung starten möchten. Wenn Sie beispielsweise das gesamte Dokument auflisten möchten, verwenden Sie `Document.Accept`

**DocumentVisitor**

Dieses Beispiel zeigt, wie Sie das Besuchermuster verwenden, um dem Aspose.Words-Objektmodell neue Operationen hinzuzufügen. In diesem Fall erstellen wir einen einfachen Dokumentenkonverter in ein Textformat:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## So extrahieren Sie nur Text

Die Möglichkeiten zum Abrufen von Text aus dem Dokument sind:

- Verwenden Sie [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) mit [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/), um als Klartext in einer Datei oder einem Stream zu speichern
- Verwenden Sie [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) und übergeben Sie den Parameter **SaveFormat.Text**. Intern ruft dies das Speichern als Text in einen Speicherstrom auf und gibt die resultierende Zeichenfolge zurück
- Verwenden Sie [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/), um Text mit allen Microsoft Word Steuerzeichen einschließlich Feldcodes abzurufen
- Implementieren Sie eine benutzerdefinierte [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/), um eine benutzerdefinierte Extraktion durchzuführen

### Verwenden von `Node.GetText` und `Node.ToString`

Ein Word-Dokument kann Steuerzeichen enthalten, die spezielle Elemente wie Feld, Zellende, Abschnittsende usw. kennzeichnen. Die vollständige Liste der möglichen Wortsteuerzeichen ist in der Klasse [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) definiert. Die Methode **Node.GetText** gibt Text mit allen im Knoten vorhandenen Steuerzeichenzeichen zurück.

Der Aufruf von **ToString** gibt die Klartextdarstellung des Dokuments nur ohne Steuerzeichen zurück.

Das folgende Codebeispiel zeigt den Unterschied zwischen dem Aufruf der Methoden **GetText** und **ToString** auf einem Knoten:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Verwenden von `SaveFormat.Text`

In diesem Beispiel wird das Dokument wie folgt gespeichert:

- Filtert Feldzeichen und Feldcodes, Form-, Fußnoten-, Endnoten- und Kommentarreferenzen heraus
- Ersetzt das Ende von Absatz **ControlChar.Cr** -Zeichen durch **ControlChar.CrLf** -Kombinationen
- Verwendet UTF8 -Codierung

Das folgende Codebeispiel zeigt, wie Sie ein Dokument im Format TXT speichern:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Bilder aus Formen extrahieren

Möglicherweise müssen Sie Dokumentbilder extrahieren, um einige Aufgaben auszuführen. Mit Aspose.Words können Sie dies auch tun.

Das folgende Codebeispiel zeigt, wie Bilder aus einem Dokument extrahiert werden:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}