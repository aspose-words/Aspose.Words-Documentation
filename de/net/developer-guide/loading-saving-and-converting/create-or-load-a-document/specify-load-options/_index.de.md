---
title: Geben Sie Ladeoptionen in C# an
second_title: Aspose.Words für .NET
articleTitle: Geben Sie Ladeoptionen an
linktitle: Geben Sie Ladeoptionen an
description: "Steuern Sie den Ladevorgang mithilfe von C# genauer."
type: docs
weight: 10
url: /de/net/specify-load-options/
---

Beim Laden eines Dokuments können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words stellt Ihnen die [LoadOptions](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/)-Klasse zur Verfügung, die eine genauere Steuerung des Ladevorgangs ermöglicht. Einige Ladeformate verfügen über eine entsprechende Klasse, die Ladeoptionen für dieses Ladeformat enthält. Beispielsweise gibt es [PdfLoadOptions](https://reference.aspose.com/words/de/net/aspose.words.loading/pdfloadoptions/) zum Laden in das PDF-Format oder [TxtLoadOptions](https://reference.aspose.com/words/de/net/aspose.words.loading/txtloadoptions/) zum Laden in TXT. Dieser Artikel enthält Beispiele für die Arbeit mit Optionen der **LoadOptions**-Klasse.

## Legen Sie die Microsoft Word-Version fest, um das Erscheinungsbild zu ändern

Verschiedene Versionen der Microsoft Word-Anwendung können Dokumente unterschiedlich anzeigen. Beispielsweise gibt es ein bekanntes Problem mit OOXML-Dokumenten wie DOCX oder DOTX, die mit WPS Office erstellt wurden. In einem solchen Fall fehlen möglicherweise wichtige Dokument-Markup-Elemente oder werden anders interpretiert, was dazu führt, dass Microsoft Word 2019 ein solches Dokument anders als Microsoft Word 2010 anzeigt.

Standardmäßig öffnet Aspose.Words Dokumente mithilfe der Microsoft Word 2019-Regeln. Wenn Sie das Laden von Dokumenten so gestalten möchten, wie es in einer der vorherigen Microsoft Word-Anwendungsversionen der Fall wäre, sollten Sie die gewünschte Version mithilfe der [MswVersion](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/mswversion/)-Eigenschaft der **LoadOptions**-Klasse explizit angeben.

Das folgende Codebeispiel zeigt, wie die Microsoft Word-Version mit Ladeoptionen festgelegt wird:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Legen Sie die Spracheinstellungen fest, um das Erscheinungsbild zu ändern

Die Details der Anzeige eines Dokuments in Microsoft Word hängen nicht nur von der Anwendungsversion und dem **MswVersion**-Eigenschaftswert ab, sondern auch von den Spracheinstellungen. Abhängig von den Einstellungen im Dialogfeld "Office-Spracheinstellungen", die Sie unter "Datei → Optionen → Sprache" finden, kann es sein, dass Microsoft Word Dokumente unterschiedlich anzeigt. Mithilfe dieses Dialogfelds kann ein Benutzer beispielsweise die Primärsprache, Korrektursprachen, Anzeigesprachen usw. auswählen. Aspose.Words stellt die [LanguagePreferences](https://reference.aspose.com/words/de/net/aspose.words.loading/languagepreferences/)-Eigenschaft als Äquivalent dieses Dialogfelds bereit. Wenn sich die Aspose.Words-Ausgabe von der Microsoft Word-Ausgabe unterscheidet, legen Sie den entsprechenden Wert für **EditingLanguage** fest – dies kann das Ausgabedokument verbessern.

Das folgende Codebeispiel zeigt, wie man Japanisch als **EditingLanguage** festlegt:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Verwenden Sie WarningCallback, um Probleme beim Laden eines Dokuments zu kontrollieren

Einige Dokumente sind möglicherweise beschädigt, enthalten ungültige Einträge oder verfügen über Funktionen, die derzeit von Aspose.Words nicht unterstützt werden. Wenn Sie wissen möchten, welche Probleme beim Laden eines Dokuments aufgetreten sind, stellt Aspose.Words die [IWarningCallback](https://reference.aspose.com/words/de/net/aspose.words/iwarningcallback/)-Schnittstelle zur Verfügung.

Das folgende Codebeispiel zeigt die Implementierung der **IWarningCallback**-Schnittstelle:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Um Informationen zu allen Problemen während der Ladezeit zu erhalten, verwenden Sie die [WarningCallback](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/warningcallback/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Verwenden Sie ResourceLoadingCallback, um das Laden externer Ressourcen zu steuern

Ein Dokument kann externe Links zu Bildern enthalten, die sich irgendwo auf einer lokalen Festplatte, im Netzwerk oder im Internet befinden. Aspose.Words lädt solche Bilder automatisch in ein Dokument, aber es gibt Situationen, in denen dieser Prozess kontrolliert werden muss. Zum Beispiel um zu entscheiden, ob wir ein bestimmtes Bild wirklich laden oder vielleicht überspringen müssen. Mit der [ResourceLoadingCallback](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/resourceloadingcallback/)-Ladeoption können Sie dies steuern.

Das folgende Codebeispiel zeigt die Implementierung der [IResourceLoadingCallback](https://reference.aspose.com/words/de/net/aspose.words.loading/iresourceloadingcallback/)-Schnittstelle:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Das folgende Codebeispiel zeigt, wie die **ResourceLoadingCallback**-Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Verwenden Sie TempFolder, um eine Speicherausnahme zu vermeiden

Aspose.Words unterstützt extrem große Dokumente mit Tausenden von Seiten voller umfangreicher Inhalte. Das Laden solcher Dokumente erfordert möglicherweise viel RAM. Während des Ladevorgangs benötigt Aspose.Words noch mehr Speicher, um temporäre Strukturen zu speichern, die zum Parsen eines Dokuments verwendet werden.

Wenn beim Laden eines Dokuments ein Problem mit der Ausnahme "Nicht genügend Arbeitsspeicher" auftritt, versuchen Sie, die [TempFolder](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/tempfolder/)-Eigenschaft zu verwenden. In diesem Fall speichert Aspose.Words einige Daten in temporären Dateien statt im Speicher, was dazu beitragen kann, eine solche Ausnahme zu vermeiden.

Das folgende Codebeispiel zeigt, wie **TempFolder** festgelegt wird:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Legen Sie die Kodierung explizit fest

Die meisten modernen Dokumentformate speichern ihren Inhalt in Unicode und erfordern keine besondere Behandlung. Andererseits gibt es immer noch viele Dokumente, die eine Kodierung vor Unicode verwenden und manchmal entweder Kodierungsinformationen fehlen oder die Kodierungsinformationen nicht einmal von Natur aus unterstützen. Aspose.Words versucht standardmäßig, die entsprechende Kodierung automatisch zu erkennen. In seltenen Fällen müssen Sie jedoch möglicherweise eine andere Kodierung verwenden als die, die von unserem Kodierungserkennungsalgorithmus erkannt wird. Verwenden Sie in diesem Fall die [Encoding](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/encoding/)-Eigenschaft, um die Kodierung abzurufen oder festzulegen.

Das folgende Codebeispiel zeigt, wie Sie die Codierung so festlegen, dass sie die automatisch ausgewählte Codierung überschreibt:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Laden Sie verschlüsselte Dokumente

Sie können Word-Dokumente verschlüsselt mit einem Passwort laden. Verwenden Sie dazu eine spezielle Konstruktorüberladung, die ein [LoadOptions](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/)-Objekt akzeptiert. Dieses Objekt enthält die [Password](https://reference.aspose.com/words/de/net/aspose.words.loading/loadoptions/password/)-Eigenschaft, die die Passwortzeichenfolge angibt.

Das folgende Codebeispiel zeigt, wie ein mit einem Passwort verschlüsseltes Dokument geladen wird:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Wenn Sie nicht im Voraus wissen, ob die Datei verschlüsselt ist, können Sie die [FileFormatUtil](https://reference.aspose.com/words/de/net/aspose.words/fileformatutil/)-Klasse verwenden, die Hilfsmethoden für die Arbeit mit Dateiformaten bereitstellt, z. B. das Erkennen des Dateiformats oder das Konvertieren von Dateierweiterungen in/aus Dateiformataufzählungen. Um festzustellen, ob das Dokument verschlüsselt ist und zum Öffnen ein Kennwort erforderlich ist, verwenden Sie die [IsEncrypted](https://reference.aspose.com/words/de/net/aspose.words/fileformatinfo/isencrypted/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie Sie überprüfen, ob OpenDocument verschlüsselt ist oder nicht:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
