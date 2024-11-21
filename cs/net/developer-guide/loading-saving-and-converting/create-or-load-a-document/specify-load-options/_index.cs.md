---
title: Zadejte možnosti zatížení v C#
second_title: Aspose.Words místo .NET
articleTitle: Zadejte možnosti zatížení
linktitle: Zadejte možnosti zatížení
description: "Přesnější řízení procesu zatížení pomocí C#."
type: docs
weight: 10
url: /cs/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

Při načítání dokumentu můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje vám [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) třída, která umožňuje přesnější řízení procesu zatížení. Některé formáty zatížení mají odpovídající třídu, která drží možnosti zatížení pro tento formát zatížení, například [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) pro načtení do formátu PDF nebo [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) pro načtení do TXT. Tento článek uvádí příklady práce s možnostmi **LoadOptions** třída.

## Nastavit Microsoft Word Verze pro změnu vzhledu

Různé verze Microsoft Word aplikace může zobrazovat dokumenty jinak. Například existuje známý problém s OOXML dokumenty, jako je DOCX nebo DOTX vyrobené pomocí WPS Office. V takovém případě mohou být základní prvky značení dokumentů chybějící nebo mohou být vykládány jinak, což způsobuje Microsoft Word 2019 ukázat takový dokument jinak než Microsoft Word 2010.

Výchozí Aspose.Words otevírá dokumenty pomocí Microsoft Word 2019 pravidla. Pokud potřebujete načíst dokument, zdá se, že by se to stalo v jednom z předchozích případů Microsoft Word Aplikace verze, měli byste výslovně zadat požadovanou verzi pomocí [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) majetek **LoadOptions** třída.

Následující příklad kódu ukazuje, jak nastavit Microsoft Word verze s možností zatížení:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Nastavit předvolby jazyka ke změně vzhledu

Údaje o zobrazení dokumentu v Microsoft Word závisí nejen na verzi aplikace a **MswVersion** hodnota vlastnosti, ale také nastavení jazyka. Microsoft Word může zobrazit dokumenty jinak v závislosti na dialogovém okně "Office Language Preferences," které lze nalézt v "File → Options → Languаge." Pomocí tohoto dialogu si uživatel může vybrat například primární jazyk, dokládající jazyky, zobrazovat jazyky a tak dále. Aspose.Words poskytuje [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) vlastnost jako ekvivalent tohoto dialogu. Pokud Aspose.Words výstup se liší od Microsoft Word výstup, nastavit vhodnou hodnotu pro **EditingLanguage** To může zlepšit výstupní dokument.

Následující příklad kódu ukazuje, jak nastavit japonsky jako **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Použití WarningCallback na kontrolu problémů Při načítání dokumentu

Některé dokumenty mohou být poškozeny, obsahují neplatné položky nebo mají funkce, které nejsou v současné době podporovány Aspose.Words. Pokud chcete vědět o problémech, které nastaly při načítání dokumentu, Aspose.Words poskytuje [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) rozhraní.

Následující příklad kódu ukazuje provádění **IWarningCallback** rozhraní:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Chcete- li získat informace o všech problémech po celou dobu zatížení, použijte [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) majetek.

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Použít vyhledávání zdrojů Zpětná vazba k ovládání zatížení externích zdrojů

Dokument může obsahovat externí odkazy na obrázky umístěné někde na místním disku, síti nebo internetu. Aspose.Words automaticky tyto obrázky naloží do dokumentu, ale existují situace, kdy je třeba tento proces kontrolovat. Například rozhodnout, zda opravdu potřebujeme načíst určitý obraz nebo jej možná přeskočit. • [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) možnost načíst umožňuje ovládat.

Následující příklad kódu ukazuje provádění [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) rozhraní:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Následující příklad kódu ukazuje, jak používat **ResourceLoadingCallback** vlastnost:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Pomocí TempFolder vyhnout paměti výjimky

Aspose.Words podporuje mimořádně velké dokumenty, které mají tisíce stránek plných bohatého obsahu. Načítání těchto dokumentů může vyžadovat mnoho RAM. Během nakládky Aspose.Words potřebuje ještě více paměti k udržení dočasných struktur používaných k analýze dokumentu.

Pokud máte problém s výjimkou mimo paměť při načítání dokumentu, zkuste použít [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) majetek. V tomto případě Aspose.Words uloží některé údaje do dočasných souborů namísto paměti, a to může pomoci vyhnout se této výjimky.

Následující příklad kódu ukazuje, jak nastavit **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Nastavit kódování Explicitně

Většina moderních formátů dokumentů ukládá svůj obsah v Unicode a nevyžaduje zvláštní zacházení. Na druhé straně je stále mnoho dokumentů, které používají nějaké kódování před Unicode a někdy buď vynechá informace o kódování, nebo dokonce nepodpoří kódování podle povahy. Aspose.Words se snaží automaticky detekovat odpovídající kódování ve výchozím nastavení, ale ve vzácných případech budete muset použít kódování odlišné od toho, které detekuje náš kódovací algoritmus. V tomto případě použijte [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) vlastnost získat nebo nastavit kódování.

Následující příklad kódu ukazuje, jak nastavit kódování k potlačení automaticky zvoleného kódování:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Načíst zašifrované dokumenty

Můžete nabíjet Slovní dokumenty zašifrované heslem. K tomu použijte speciální konstruktor přetížení, které přijímá [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) objekt. Tento objekt obsahuje [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) vlastnost, která určuje řetězec hesla.

Následující příklad kódu ukazuje, jak načíst dokument zašifrovaný heslem:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Pokud nevíte předem, zda je soubor zašifrován, můžete použít [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) třída, která poskytuje užitné metody pro práci s formáty souborů, jako je zjištění formátu souboru nebo převod přípony souboru do/z čísel formátu souboru. Chcete-li zjistit, zda je dokument zašifrovaný a vyžaduje heslo k jeho otevření, použijte [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) majetek.

Následující příklad kódu ukazuje, jak ověřit OpenDocument buď je zašifrovaný, nebo ne:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
