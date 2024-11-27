---
title: Zadejte možnosti načtení v C++
second_title: Aspose.Words pro C++
articleTitle: Zadejte Možnosti Načtení
linktitle: Zadejte Možnosti Načtení
description: "Přesněji řídit proces zatížení."
type: docs
weight: 10
url: /cs/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Při načítání dokumentu můžete nastavit některé pokročilé vlastnosti. Aspose.Words vám poskytuje třídu [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), která umožňuje přesnější řízení procesu načítání. Některé formáty načítání mají odpovídající třídu, která obsahuje možnosti načítání pro tento formát načítání, například existuje [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) pro načítání do formátu PDF nebo [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) pro načítání do TXT. Tento článek poskytuje příklady práce s možnostmi třídy **LoadOptions**.

## Nastavení Microsoft Word verze pro změnu vzhledu

Různé verze aplikace Microsoft Word mohou lhostejně zobrazovat dokumenty. Například existuje známý problém s OOXML dokumenty, jako je DOCX nebo DOTX vytvořené pomocí WPS Office. V takovém případě mohou chybět základní prvky značení dokumentů nebo mohou být interpretovány odlišně, což způsobí, že Microsoft Word 2019 zobrazí takový dokument odlišně ve srovnání s Microsoft Word 2010.

Ve výchozím nastavení Aspose.Words otevírá dokumenty pomocí pravidel Microsoft Word 2019. Pokud potřebujete, aby se načítání dokumentů zobrazovalo tak, jak by se to stalo v jedné z předchozích verzí aplikace Microsoft Word, měli byste explicitně zadat požadovanou verzi pomocí vlastnosti [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) třídy **LoadOptions**.

Následující příklad kódu ukazuje, jak nastavit verzi Microsoft Word s možnostmi načtení:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Nastavení jazykových předvoleb pro změnu vzhledu

Podrobnosti o zobrazení dokumentu v Microsoft Word závisí nejen na verzi aplikace a hodnotě vlastnosti **MswVersion**, ale také na nastavení jazyka. Microsoft Word může zobrazovat dokumenty odlišně v závislosti na nastavení dialogového okna" Předvolby jazyka Office", které najdete v"Soubor → Možnosti → jazyk". Pomocí tohoto dialogu může uživatel vybrat například primární jazyk, jazyky kontroly pravopisu, jazyky zobrazení atd. Aspose.Words poskytuje vlastnost [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) jako ekvivalent tohoto dialogu. Pokud se výstup Aspose.Words liší od výstupu Microsoft Word, nastavte příslušnou hodnotu pro **EditingLanguage** – to může zlepšit výstupní dokument.

Následující příklad kódu ukazuje, jak nastavit japonštinu jako **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Použití WarningCallback k řízení problémů při načítání dokumentu

Některé dokumenty mohou být poškozené, obsahují neplatné položky nebo mají funkce, které Aspose.Words aktuálně nepodporuje. Pokud chcete vědět o problémech, ke kterým došlo při načítání dokumentu, Aspose.Words poskytuje rozhraní [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Následující příklad kódu ukazuje implementaci rozhraní **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Chcete-li získat informace o všech problémech po celou dobu načítání, použijte vlastnost `WarningCallback`.

Následující příklad kódu ukazuje, jak tuto vlastnost používat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Použijte ResourceLoadingCallback k řízení načítání externích zdrojů

Dokument může obsahovat externí odkazy na obrázky umístěné někde na místním disku, síti nebo internetu. Aspose.Words automaticky načte takové obrázky do dokumentu, ale existují situace, kdy je třeba tento proces ovládat. Například se rozhodnout, zda skutečně potřebujeme načíst určitý obrázek nebo jej možná přeskočit. Možnost ResourceLoadingCallback načíst vám to umožňuje ovládat.

Následující příklad kódu ukazuje implementaci rozhraní IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Následující příklad kódu ukazuje, jak používat vlastnost **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Použijte TempFolder, abyste se vyhnuli výjimce paměti

Aspose.Words podporuje extrémně velké dokumenty, které mají tisíce stránek plných bohatého obsahu. Načítání takových dokumentů může vyžadovat hodně RAM. V procesu načítání potřebuje Aspose.Words ještě více paměti pro uložení dočasných struktur používaných k analýze dokumentu.

Pokud máte při načítání dokumentu problém s výjimkou nedostatku paměti, zkuste použít vlastnost [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). V tomto případě Aspose.Words uloží některá data do dočasných souborů místo do paměti, což může pomoci vyhnout se takové výjimce.

Následující příklad kódu ukazuje, jak nastavit **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Explicitně nastavte kódování

Většina moderních formátů dokumentů ukládá svůj obsah do Unicode a nevyžaduje zvláštní zacházení. Na druhou stranu stále existuje mnoho dokumentů, které používají nějaké kódování před Unicode a někdy buď chybí informace o kódování, nebo dokonce nepodporují informace o kódování od přírody. Aspose.Words se ve výchozím nastavení pokusí automaticky detekovat příslušné kódování, ale ve výjimečných případech možná budete muset použít kódování odlišné od kódování detekovaného naším algoritmem rozpoznávání kódování. V takovém případě použijte vlastnost [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) k získání nebo nastavení kódování.

Následující příklad kódu ukazuje, jak nastavit kódování tak, aby přepsalo automaticky zvolené kódování:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Načtěte Šifrované Dokumenty

Můžete načíst Word dokumenty šifrované heslem. Chcete-li to provést, použijte speciální přetížení konstruktoru, které přijímá objekt [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Tento objekt obsahuje vlastnost [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), která určuje řetězec hesla.

Následující příklad kódu ukazuje, jak načíst dokument zašifrovaný heslem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Pokud předem nevíte, zda je soubor zašifrován, můžete použít třídu [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), která poskytuje obslužné metody pro práci s formáty souborů, jako je detekce formátu souboru nebo převod přípon souborů do/z výčtů formátů souborů. Chcete-li zjistit, zda je dokument zašifrován a vyžaduje k jeho otevření heslo, použijte vlastnost `IsEncrypted`.

Následující příklad kódu ukazuje, jak ověřit OpenDocument, zda je šifrován nebo ne:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
