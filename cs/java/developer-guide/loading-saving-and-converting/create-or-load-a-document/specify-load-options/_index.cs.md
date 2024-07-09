---
title: Zadejte možnosti zatížení v Java
second_title: Aspose.Words místo Java
articleTitle: Upřesnit možnosti zatížení
linktitle: Upřesnit možnosti zatížení
description: "Nastavit pokročilé vlastnosti při načtení dokumentu pomocí Java získat přesnější kontrolu nad procesem."
type: docs
weight: 10
url: /cs/java/specify-load-options/
---

Při načítání dokumentu můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje vám [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) třída, která umožňuje přesnější řízení procesu zatížení. Některé formáty zatížení mají odpovídající třídu, která drží možnosti zatížení pro tento formát zatížení, například, tam je [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) pro načtení do formátu PDF nebo [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) pro načtení do TXT. Tento článek uvádí příklady práce s možnostmi **LoadOptions** třída.

## Nastavit Microsoft Word Verze ke změně vzhledu

Různé verze Microsoft Word aplikace může zobrazovat dokumenty jinak. Například existuje známý problém s OOXML dokumenty, jako je DOCX nebo DOTX vyrobené pomocí WPS Office. V takových případech mohou chybět základní prvky značení dokumentů nebo je lze vykládat jinak, což způsobuje Microsoft Word 2019 ukázat takový dokument jinak než Microsoft Word 2010.

Výchozí Aspose.Words otevírá dokumenty pomocí Microsoft Word 2019 pravidla. Pokud potřebujete, aby se načítání dokumentů zdálo jako v jednom z předchozích Microsoft Word Aplikace verze, měli byste výslovně zadat požadovanou verzi pomocí [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) majetek **LoadOptions** třída.

Následující příklad kódu ukazuje, jak nastavit Microsoft Word verze s možností zatížení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Nastavit předvolby jazyka ke změně vzhledu

Údaje o zobrazení dokumentu v Microsoft Word závisí nejen na verzi aplikace a **MswVersion** hodnota vlastnosti, ale také na nastavení jazyka. Microsoft Word může zobrazit dokumenty jinak v závislosti na dialogovém okně "Office Language Preferences," které lze nalézt v "File → Options → Languаge." Pomocí tohoto dialogu si uživatel může vybrat například primární jazyk, dokládající jazyky, zobrazovat jazyky a tak dále. Aspose.Words poskytuje [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) vlastnost jako ekvivalent tohoto dialogu. Pokud Aspose.Words výstup se liší od Microsoft Word výstup, nastavit vhodnou hodnotu pro **EditingLanguage** To může zlepšit výstupní dokument.

Následující příklad kódu ukazuje, jak nastavit japonsky jako **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Použití WarningCallback na kontrolu problémů Při načítání dokumentu

Některé dokumenty mohou být poškozeny, obsahují neplatné položky nebo mají funkce, které nejsou v současné době podporovány Aspose.Words. Pokud chcete vědět o problémech, které nastaly při načtení dokumentu, Aspose.Words poskytuje [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) rozhraní.

Následující příklad kódu ukazuje provádění **IWarningCallback** rozhraní:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Chcete- li získat informace o všech problémech po celou dobu zátěže, použijte [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) majetek.

Následující příklad kódu ukazuje, jak používat tuto vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Použít vyhledávání zdrojů Zpětná vazba k ovládání zatížení externích zdrojů

Dokument může obsahovat externí odkazy na obrázky umístěné někde na místním disku, síti nebo internetu. Aspose.Words automaticky tyto obrázky naloží do dokumentu, ale existují situace, kdy je třeba tento proces kontrolovat. Například rozhodnout, zda opravdu potřebujeme načíst určitý obraz nebo jej možná přeskočit. The [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) možnost načíst umožňuje ovládat.

Následující příklad kódu ukazuje provádění [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) rozhraní:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Následující příklad kódu ukazuje, jak používat **ResourceLoadingCallback** vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Pomocí TempFolder vyhnout paměti výjimky

Aspose.Words podporuje nesmírně velké dokumenty, které mají tisíce stránek plných bohatého obsahu. Načítání těchto dokumentů může vyžadovat mnoho RAM. V průběhu nakládky, Aspose.Words potřebuje ještě více paměti k udržení dočasných struktur používaných k analýze dokumentu.

Pokud máte problém s výjimkou mimo paměť při načítání dokumentu, zkuste použít [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) majetek. V tomto případě Aspose.Words uloží některé údaje do dočasných souborů namísto paměti, a to může pomoci vyhnout se této výjimky.

Následující příklad kódu ukazuje, jak nastavit **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Nastavte kódování explicitně

Většina moderních formátů dokumentů ukládá svůj obsah v Unicode a nevyžaduje zvláštní zacházení. Na druhé straně je stále mnoho dokumentů, které používají nějaké kódování před Unicode a někdy buď vynecháte kódování informací, nebo dokonce nepodporujete kódování informací podle povahy. Aspose.Words se snaží automaticky detekovat odpovídající kódování ve výchozím nastavení, ale ve vzácném případě budete muset použít kódování odlišné od toho, které detekuje náš kódovací algoritmus. V tomto případě použijte [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) vlastnost získat nebo nastavit kódování.

Následující příklad kódu ukazuje, jak nastavit kódování k potlačení automaticky zvoleného kódování:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Načíst zašifrované dokumenty

Můžete načíst Slovní dokumenty zašifrované heslem. K tomu použijte speciální konstruktor přetížení, který přijímá [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) objekt. Tento objekt obsahuje [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) vlastnost, která určuje řetězec hesla.

Následující příklad kódu ukazuje, jak načíst dokument zašifrovaný heslem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Pokud nevíte předem, zda je soubor zašifrovaný, můžete použít [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) třída, která poskytuje užitné metody pro práci s formáty souborů, jako je zjištění formátu souboru nebo převod přípony souboru do/z čísel formátu souboru. Chcete-li zjistit, zda je dokument zašifrován a vyžaduje heslo k jeho otevření, použijte [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) majetek.

Následující příklad kódu ukazuje, jak ověřit OpenDocument buď je zašifrovaný, nebo ne:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
