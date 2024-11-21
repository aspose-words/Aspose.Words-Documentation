---
title: Belastungsoptionen in Java
second_title: Aspose.Words für Java
articleTitle: Lastoptionen angeben
linktitle: Lastoptionen angeben
description: "Legen Sie erweiterte Eigenschaften beim Laden eines Dokuments mit Java um eine genauere Kontrolle des Prozesses zu erhalten."
type: docs
weight: 10
url: /de/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Beim Laden eines Dokuments können Sie einige erweiterte Eigenschaften festlegen. Aspose.Words bietet Ihnen die [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) Klasse, die eine genauere Steuerung des Lastprozesses ermöglicht. Einige Lastformate haben eine entsprechende Klasse, die Ladeoptionen für dieses Lastformat hält, beispielsweise gibt es [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) zum Laden in PDF-Format oder [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) zum Laden auf TXT. Dieser Artikel bietet Beispiele für die Arbeit mit Optionen der **LoadOptions** Klasse.

## Set Microsoft Word Version zum Ändern der Erscheinung

Verschiedene Versionen der Microsoft Word Anwendung kann Dokumente in unterschiedlicher Weise anzeigen. Zum Beispiel gibt es ein bekanntes Problem mit OOXML-Dokumenten wie DOCX oder DOTX hergestellt mit WPS Office. In solchen Fällen können wesentliche Dokumentmarkierungselemente fehlen oder anders interpretiert werden, was Microsoft Word 2019 ein solches Dokument im Vergleich zu Microsoft Word 2010.

Standardmäßig Aspose.Words öffnet Dokumente mit Microsoft Word 2019 Regeln. Wenn Sie die Belegladung erscheinen lassen müssen, wie es in einem der vorherigen passieren würde Microsoft Word Anwendungsversionen, sollten Sie die gewünschte Version mit der [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) Eigentum der **LoadOptions** Klasse.

Das folgende Codebeispiel zeigt, wie man die Microsoft Word Version mit Ladeoptionen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Einstellen von Spracheinstellungen, um die Erscheinung zu ändern

Die Einzelheiten der Anzeige eines Dokuments Microsoft Word nicht nur auf die Anwendungsversion und die **MswVersion** einen Immobilienwert, aber auch die Spracheinstellungen. Microsoft Word kann Dokumente je nach den Dialogeinstellungen "Office Language Preferences" unterschiedlich anzeigen, die in "File → Optionen → Languаge" zu finden sind. Mit diesem Dialog kann ein Benutzer z.B. Primärsprache, Sprachnachweise, Anzeigesprachen usw. auswählen. Aspose.Words bietet [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) Eigenschaft als Äquivalent dieses Dialogs. wenn Aspose.Words von der Microsoft Word ausgeben, den entsprechenden Wert für **EditingLanguage** – dies kann das Ausgabedokument verbessern.

Das folgende Codebeispiel zeigt, wie man Japanisch als **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Verwendung WarningCallback Probleme zu kontrollieren Beim Laden eines Dokumentes

Einige Dokumente können beschädigt sein, ungültige Einträge enthalten oder Funktionen haben, die derzeit nicht von Aspose.Words. Wenn Sie über Probleme wissen wollen, die beim Laden eines Dokuments aufgetreten sind, Aspose.Words bietet [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) Schnittstelle.

Das folgende Codebeispiel zeigt die Implementierung der **IWarningCallback** Schnittstelle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Um Informationen über alle Probleme während der Ladezeit zu erhalten, verwenden Sie die [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) Eigentum.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft genutzt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## ResourceLoading verwenden Rückruf zur Steuerung der externen Ressourcen

Ein Dokument kann externe Links zu Bildern enthalten, die sich irgendwo auf einer lokalen Festplatte, Netzwerk oder Internet befinden. Aspose.Words lädt solche Bilder automatisch in ein Dokument, aber es gibt Situationen, wenn dieser Prozess gesteuert werden muss. Zum Beispiel zu entscheiden, ob wir wirklich ein bestimmtes Bild laden oder vielleicht überspringen müssen. Die [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) Ladeoption ermöglicht es Ihnen, dies zu steuern.

Das folgende Codebeispiel zeigt die Implementierung der [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) Schnittstelle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Das folgende Codebeispiel zeigt, wie man die **ResourceLoadingCallback** Eigentum:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Verwenden Sie TempFolder, um eine Speicherausnahme zu vermeiden

Aspose.Words unterstützt extrem große Dokumente, die Tausende von Seiten mit reichem Inhalt haben. Das Laden solcher Dokumente kann viel RAM erfordern. bei der Beladung, Aspose.Words benötigt noch mehr Speicher, um temporäre Strukturen zu halten, die verwendet werden, um ein Dokument zu parse.

Wenn Sie ein Problem mit der Out of Memory Ausnahme beim Laden eines Dokuments haben, versuchen Sie, die [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) Eigentum. In diesem Fall Aspose.Words speichert einige Daten in temporären Dateien statt Speicher, und dies kann dazu beitragen, eine solche Ausnahme zu vermeiden.

Das folgende Codebeispiel zeigt, wie man **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Stellen Sie die Kodierung aus

Die meisten modernen Dokumentformate speichern ihre Inhalte in Unicode und benötigen keine besondere Handhabung. Auf der anderen Seite gibt es noch viele Dokumente, die eine Vor-Unicode-Kodierung verwenden und manchmal entweder vermissen Sie die Kodierung Informationen oder unterstützen Sie nicht einmal die Kodierung von Informationen nach der Natur. Aspose.Words versucht, automatisch die entsprechende Kodierung standardmäßig zu erkennen, aber in einem seltenen Fall müssen Sie eine Kodierung verwenden, die von der von unserem Kodierungserkennungsalgorithmus erfassten unterscheidet. In diesem Fall verwenden Sie die [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) Eigentum, um die Kodierung zu erhalten oder einzustellen.

Das folgende Codebeispiel zeigt, wie die Codierung eingestellt wird, um die automatisch gewählte Codierung zu überschreiben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Verschlüsselte Dokumente laden

Sie können laden Word-Dokumente verschlüsselt mit einem Passwort. Verwenden Sie dazu eine spezielle Konstruktorüberlastung, die a [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) Objekt. Dieses Objekt enthält [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) Eigenschaft, die den Passwort-String angibt.

Das folgende Codebeispiel zeigt, wie ein mit einem Passwort verschlüsseltes Dokument geladen werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Wenn Sie im Voraus nicht wissen, ob die Datei verschlüsselt ist, können Sie die [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) class, die Dienstprogrammmethoden zum Arbeiten mit Dateiformaten bietet, wie zum Beispiel das Erkennen des Dateiformats oder die Konvertierung der Dateierweiterungen zu/von Dateiformatenumerationen. Um zu erkennen, ob das Dokument verschlüsselt ist und ein Passwort zum Öffnen benötigt, verwenden Sie die [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) Eigentum.

Das folgende Codebeispiel zeigt, wie man OpenDocument entweder verschlüsselt oder nicht:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
