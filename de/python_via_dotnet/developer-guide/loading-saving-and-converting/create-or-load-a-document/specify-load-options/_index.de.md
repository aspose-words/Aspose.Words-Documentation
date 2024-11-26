---
title: Geben Sie Ladeoptionen in Python an
second_title: Aspose.Words für Python via .NET
articleTitle: Geben Sie Ladeoptionen an
linktitle: Geben Sie Ladeoptionen an
description: "Steuern Sie den Ladevorgang mithilfe von Python genauer."
type: docs
weight: 10
url: /de/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Beim Laden eines Dokuments können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words stellt Ihnen die [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/)-Klasse zur Verfügung, die eine genauere Steuerung des Ladevorgangs ermöglicht. Einige Ladeformate verfügen über eine entsprechende Klasse, die Ladeoptionen für dieses Ladeformat enthält. Beispielsweise gibt es [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) zum Laden in das PDF-Format oder [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) zum Laden in TXT. Dieser Artikel enthält Beispiele für die Arbeit mit Optionen der [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/)-Klasse.

## Legen Sie die Microsoft Word-Version fest, um das Erscheinungsbild zu ändern

Verschiedene Versionen der Microsoft Word-Anwendung können Dokumente unterschiedlich anzeigen. Beispielsweise gibt es ein bekanntes Problem mit OOXML-Dokumenten wie DOCX oder DOTX, die mit WPS Office erstellt wurden. In einem solchen Fall fehlen möglicherweise wichtige Dokument-Markup-Elemente oder werden anders interpretiert, was dazu führt, dass Microsoft Word 2019 ein solches Dokument anders als Microsoft Word 2010 anzeigt.

Standardmäßig öffnet Aspose.Words Dokumente mithilfe der Microsoft Word 2019-Regeln. Wenn Sie das Laden von Dokumenten so gestalten möchten, wie es in einer der vorherigen Microsoft Word-Anwendungsversionen der Fall wäre, sollten Sie die gewünschte Version mithilfe der [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/)-Eigenschaft der [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/)-Klasse explizit angeben.

Das folgende Codebeispiel zeigt, wie die Microsoft Word-Version mit Ladeoptionen festgelegt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Legen Sie die Spracheinstellungen fest, um das Erscheinungsbild zu ändern

Die Details der Anzeige eines Dokuments in Microsoft Word hängen nicht nur von der Anwendungsversion und dem [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/)-Eigenschaftswert ab, sondern auch von den Spracheinstellungen. Abhängig von den Einstellungen im Dialogfeld "Office-Spracheinstellungen", die Sie unter "Datei → Optionen → Sprache" finden, kann es sein, dass Microsoft Word Dokumente unterschiedlich anzeigt. Mithilfe dieses Dialogfelds kann ein Benutzer beispielsweise die Primärsprache, Korrektursprachen, Anzeigesprachen usw. auswählen. Aspose.Words stellt die [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/)-Eigenschaft als Äquivalent dieses Dialogfelds bereit. Wenn sich die Aspose.Words-Ausgabe von der Microsoft Word-Ausgabe unterscheidet, legen Sie den entsprechenden Wert für [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) fest – dies kann das Ausgabedokument verbessern.

Das folgende Codebeispiel zeigt, wie man Japanisch als [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) festlegt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Verwenden Sie TempFolder, um eine Speicherausnahme zu vermeiden

Aspose.Words unterstützt extrem große Dokumente mit Tausenden von Seiten voller umfangreicher Inhalte. Das Laden solcher Dokumente erfordert möglicherweise viel RAM. Während des Ladevorgangs benötigt Aspose.Words noch mehr Speicher, um temporäre Strukturen zu speichern, die zum Parsen eines Dokuments verwendet werden.

Wenn beim Laden eines Dokuments ein Problem mit der Ausnahme "Nicht genügend Arbeitsspeicher" auftritt, versuchen Sie, die [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/)-Eigenschaft zu verwenden. In diesem Fall speichert Aspose.Words einige Daten in temporären Dateien statt im Speicher, was dazu beitragen kann, eine solche Ausnahme zu vermeiden.

Das folgende Codebeispiel zeigt, wie [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) festgelegt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Legen Sie die Kodierung explizit fest

Die meisten modernen Dokumentformate speichern ihren Inhalt in Unicode und erfordern keine besondere Behandlung. Andererseits gibt es immer noch viele Dokumente, die eine Kodierung vor Unicode verwenden und manchmal entweder Kodierungsinformationen fehlen oder die Kodierungsinformationen nicht einmal von Natur aus unterstützen. Aspose.Words versucht standardmäßig, die entsprechende Kodierung automatisch zu erkennen. In seltenen Fällen müssen Sie jedoch möglicherweise eine andere Kodierung verwenden als die, die von unserem Kodierungserkennungsalgorithmus erkannt wird. Verwenden Sie in diesem Fall die [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/)-Eigenschaft, um die Kodierung abzurufen oder festzulegen.

Das folgende Codebeispiel zeigt, wie Sie die Codierung so festlegen, dass sie die automatisch ausgewählte Codierung überschreibt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Laden Sie verschlüsselte Dokumente

Sie können Word-Dokumente verschlüsselt mit einem Passwort laden. Verwenden Sie dazu eine spezielle Konstruktorüberladung, die ein [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/)-Objekt akzeptiert. Dieses Objekt enthält die [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/)-Eigenschaft, die die Passwortzeichenfolge angibt.

Das folgende Codebeispiel zeigt, wie ein mit einem Passwort verschlüsseltes Dokument geladen wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Wenn Sie nicht im Voraus wissen, ob die Datei verschlüsselt ist, können Sie die [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/)-Klasse verwenden, die Hilfsmethoden zum Arbeiten mit Dateiformaten bereitstellt, z. B. zum Erkennen des Dateiformats oder zum Konvertieren von Dateierweiterungen in/aus Dateiformataufzählungen. Um festzustellen, ob das Dokument verschlüsselt ist und zum Öffnen ein Kennwort erforderlich ist, verwenden Sie die [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/)-Eigenschaft.

Das folgende Codebeispiel zeigt, wie Sie überprüfen, ob ein Dokument verschlüsselt ist oder nicht:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
