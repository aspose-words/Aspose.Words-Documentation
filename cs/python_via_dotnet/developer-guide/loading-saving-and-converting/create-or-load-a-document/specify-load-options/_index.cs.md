---
title: Zadejte možnosti zatížení v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Zadejte možnosti zatížení
linktitle: Zadejte možnosti zatížení
description: "Přesnější řízení procesu zatížení pomocí Python."
type: docs
weight: 10
url: /cs/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Při načítání dokumentu můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje vám [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) třída, která umožňuje přesnější řízení procesu zatížení. Některé formáty zatížení mají odpovídající třídu, která drží možnosti zatížení pro tento formát zatížení, například [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) pro načtení do formátu PDF nebo [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) pro načtení do TXT. Tento článek uvádí příklady práce s možnostmi [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) třída.

## Nastavit Microsoft Word Verze pro změnu vzhledu

Různé verze Microsoft Word aplikace může zobrazovat dokumenty jinak. Například existuje známý problém s OOXML dokumenty, jako je DOCX nebo DOTX vyrobené pomocí WPS Office. V takovém případě mohou být základní prvky značení dokumentů chybějící nebo mohou být vykládány jinak, což způsobuje Microsoft Word 2019 ukázat takový dokument jinak než Microsoft Word 2010.

Výchozí Aspose.Words otevírá dokumenty pomocí Microsoft Word 2019 pravidla. Pokud potřebujete načíst dokument, zdá se, že by se to stalo v jednom z předchozích případů Microsoft Word Aplikace verze, měli byste výslovně zadat požadovanou verzi pomocí [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) majetek [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) třída.

Následující příklad kódu ukazuje, jak nastavit Microsoft Word verze s možností zatížení:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Nastavit předvolby jazyka ke změně vzhledu

Údaje o zobrazení dokumentu v Microsoft Word závisí nejen na verzi aplikace a [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) hodnota vlastnosti, ale také nastavení jazyka. Microsoft Word může zobrazit dokumenty jinak v závislosti na dialogovém okně "Office Language Preferences," které lze nalézt v "File → Options → Languаge." Pomocí tohoto dialogu si uživatel může vybrat například primární jazyk, dokládající jazyky, zobrazovat jazyky a tak dále. Aspose.Words poskytuje [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) vlastnost jako ekvivalent tohoto dialogu. Pokud Aspose.Words výstup se liší od Microsoft Word výstup, nastavit vhodnou hodnotu pro [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) To může zlepšit výstupní dokument.

Následující příklad kódu ukazuje, jak nastavit japonsky jako [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Pomocí TempFolder vyhnout paměti výjimky

Aspose.Words podporuje mimořádně velké dokumenty, které mají tisíce stránek plných bohatého obsahu. Načítání těchto dokumentů může vyžadovat mnoho RAM. Během nakládky Aspose.Words potřebuje ještě více paměti k udržení dočasných struktur používaných k analýze dokumentu.

Pokud máte problém s výjimkou mimo paměť při načítání dokumentu, zkuste použít [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) majetek. V tomto případě Aspose.Words uloží některé údaje do dočasných souborů namísto paměti, a to může pomoci vyhnout se této výjimky.

Následující příklad kódu ukazuje, jak nastavit [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Nastavit kódování Explicitně

Většina moderních formátů dokumentů ukládá svůj obsah v Unicode a nevyžaduje zvláštní zacházení. Na druhé straně je stále mnoho dokumentů, které používají nějaké kódování před Unicode a někdy buď vynechá informace o kódování, nebo dokonce nepodpoří kódování podle povahy. Aspose.Words se snaží automaticky detekovat odpovídající kódování ve výchozím nastavení, ale ve vzácných případech budete muset použít kódování odlišné od toho, které detekuje náš kódovací algoritmus. V tomto případě použijte [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) vlastnost získat nebo nastavit kódování.

Následující příklad kódu ukazuje, jak nastavit kódování k potlačení automaticky zvoleného kódování:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Načíst zašifrované dokumenty

Můžete nabíjet Slovní dokumenty zašifrované heslem. K tomu použijte speciální konstruktor přetížení, které přijímá [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) objekt. Tento objekt obsahuje [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) vlastnost, která určuje řetězec hesla.

Následující příklad kódu ukazuje, jak načíst dokument zašifrovaný heslem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Pokud nevíte předem, zda je soubor zašifrován, můžete použít [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) třída, která poskytuje užitné metody pro práci s formáty souborů, jako je zjištění formátu souboru nebo převod přípony souboru do/z čísel formátu souboru. Chcete-li zjistit, zda je dokument zašifrovaný a vyžaduje heslo k jeho otevření, použijte [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) majetek.

Následující příklad kódu ukazuje, jak ověřit dokument buď je šifrován, nebo ne:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
