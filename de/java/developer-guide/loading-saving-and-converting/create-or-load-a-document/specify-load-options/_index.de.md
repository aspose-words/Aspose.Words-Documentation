---
title: Ladeoptionen in Java angeben
second_title: Aspose.Words für Java
articleTitle: Ladeoptionen angeben
linktitle: Ladeoptionen angeben
description: "Legen Sie beim Laden eines Dokuments mit Java erweiterte Eigenschaften fest, um eine genauere Steuerung des Prozesses zu erhalten."
type: docs
weight: 10
url: /de/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Beim Laden eines Dokuments können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words stellt Ihnen die Klasse [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) zur Verfügung, die eine genauere Steuerung des Ladevorgangs ermöglicht. Einige Ladeformate haben eine entsprechende Klasse, die Ladeoptionen für dieses Ladeformat enthält, z. B. gibt es [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) zum Laden in das PDF -Format oder [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) zum Laden in TXT. Dieser Artikel enthält Beispiele für die Arbeit mit Optionen der Klasse **LoadOptions**.

## Setze Microsoft Word Version, um das Aussehen zu ändern

Verschiedene Versionen der Microsoft Word-Anwendung können Dokumente unterschiedlich anzeigen. Beispielsweise gibt es ein bekanntes Problem mit OOXML-Dokumenten wie DOCX oder DOTX, die mit WPS Office erstellt wurden. In solchen Fällen können wesentliche Dokumentauszeichnungselemente fehlen oder anders interpretiert werden, was dazu führt, dass Microsoft Word 2019 ein solches Dokument anders anzeigt als Microsoft Word 2010.

Standardmäßig öffnet Aspose.Words Dokumente mit Microsoft Word 2019-Regeln. Wenn Sie das Laden von Dokumenten so anzeigen möchten, wie es in einer der vorherigen Microsoft Word -Anwendungsversionen der Fall wäre, sollten Sie die gewünschte Version explizit mit der Eigenschaft [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) der Klasse **LoadOptions** angeben.

Das folgende Codebeispiel zeigt, wie Sie die Microsoft Word -Version mit Ladeoptionen festlegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Legen Sie die Spracheinstellungen fest, um das Erscheinungsbild zu ändern

Die Details der Anzeige eines Dokuments in Microsoft Word hängen nicht nur von der Anwendungsversion und dem Eigenschaftswert **MswVersion** ab, sondern auch von den Spracheinstellungen. Microsoft Word zeigt Dokumente möglicherweise unterschiedlich an, abhängig von den Dialogeinstellungen "Office-Spracheinstellungen", die Sie unter "Datei → Optionen → Sprache" finden. In diesem Dialogfeld kann ein Benutzer beispielsweise die Primärsprache, Korrektursprachen, Anzeigesprachen usw. auswählen. Aspose.Words stellt die Eigenschaft [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) als Äquivalent zu diesem Dialogfeld bereit. Wenn die Ausgabe von Aspose.Words von der Ausgabe von Microsoft Word abweicht, setzen Sie den entsprechenden Wert für **EditingLanguage** – dies kann das Ausgabedokument verbessern.

Das folgende Codebeispiel zeigt, wie Japanisch als **EditingLanguage** festgelegt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Verwenden Sie WarningCallback, um Probleme beim Laden eines Dokuments zu kontrollieren

Einige Dokumente sind möglicherweise beschädigt, enthalten ungültige Einträge oder verfügen über Funktionen, die derzeit von Aspose.Words nicht unterstützt werden. Wenn Sie wissen möchten, welche Probleme beim Laden eines Dokuments aufgetreten sind, bietet Aspose.Words die [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/)-Schnittstelle.

Das folgende Codebeispiel zeigt die Implementierung der **IWarningCallback**-Schnittstelle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Um Informationen über alle Probleme während der Ladezeit zu erhalten, verwenden Sie die Eigenschaft [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback).

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Verwenden Sie ResourceLoadingCallback, um das Laden externer Ressourcen zu steuern

Ein Dokument kann externe Links zu Bildern enthalten, die sich irgendwo auf einer lokalen Festplatte, im Netzwerk oder im Internet befinden. Aspose.Words lädt solche Bilder automatisch in ein Dokument, aber es gibt Situationen, in denen dieser Prozess kontrolliert werden muss. Zum Beispiel, um zu entscheiden, ob wir ein bestimmtes Bild wirklich laden oder vielleicht überspringen müssen. Mit der Option [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) laden können Sie dies steuern.

Das folgende Codebeispiel zeigt die Implementierung der [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)-Schnittstelle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Das folgende Codebeispiel zeigt, wie die Eigenschaft **ResourceLoadingCallback** verwendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Verwenden Sie TempFolder, um eine Speicherausnahme zu vermeiden

Aspose.Words unterstützt extrem große Dokumente mit Tausenden von Seiten voller umfangreicher Inhalte. Das Laden solcher Dokumente kann viel RAM erfordern. Beim Laden benötigt Aspose.Words noch mehr Speicher, um temporäre Strukturen zu speichern, die zum Parsen eines Dokuments verwendet werden.

Wenn beim Laden eines Dokuments ein Problem mit der Ausnahme Nicht genügend Arbeitsspeicher auftritt, versuchen Sie, die Eigenschaft [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) zu verwenden. In diesem Fall speichert Aspose.Words einige Daten in temporären Dateien anstelle von Speicher. Dies kann dazu beitragen, eine solche Ausnahme zu vermeiden.

Das folgende Codebeispiel zeigt, wie **TempFolder** gesetzt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Legen Sie die Kodierung explizit fest

Die meisten modernen Dokumentformate speichern ihren Inhalt in Unicode und erfordern keine spezielle Behandlung. Andererseits gibt es immer noch viele Dokumente, die eine Prä-Unicode-Codierung verwenden und manchmal entweder Codierungsinformationen vermissen oder Codierungsinformationen von Natur aus nicht einmal unterstützen. Aspose.Words versucht standardmäßig, die entsprechende Codierung automatisch zu erkennen, aber in seltenen Fällen müssen Sie möglicherweise eine andere Codierung verwenden als die, die von unserem Codierungserkennungsalgorithmus erkannt wurde. Verwenden Sie in diesem Fall die Eigenschaft [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding), um die Codierung abzurufen oder festzulegen.

Das folgende Codebeispiel zeigt, wie Sie die Codierung so einstellen, dass die automatisch ausgewählte Codierung überschrieben wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Verschlüsselte Dokumente laden

Sie können Word-Dokumente laden, die mit einem Kennwort verschlüsselt sind. Verwenden Sie dazu eine spezielle Konstruktorüberladung, die ein [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) -Objekt akzeptiert. Dieses Objekt enthält die Eigenschaft [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword), die die Kennwortzeichenfolge angibt.

Das folgende Codebeispiel zeigt, wie Sie ein mit einem Kennwort verschlüsseltes Dokument laden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Wenn Sie nicht im Voraus wissen, ob die Datei verschlüsselt ist, können Sie die Klasse [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) verwenden, die Hilfsmethoden für die Arbeit mit Dateiformaten bereitstellt, z. B. das Erkennen des Dateiformats oder das Konvertieren von Dateierweiterungen in / aus Dateiformataufzählungen. Verwenden Sie die Eigenschaft [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted), um festzustellen, ob das Dokument verschlüsselt ist und zum Öffnen ein Kennwort erforderlich ist.

Das folgende Codebeispiel zeigt, wie überprüft wird, ob OpenDocument verschlüsselt ist oder nicht:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
