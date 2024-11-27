---
title: Zadejte možnosti uložení V C++
second_title: Aspose.Words pro C++
articleTitle: Určete Možnosti Uložení
linktitle: Určete Možnosti Uložení
description: "Přesněji řídit proces ukládání."
type: docs
weight: 10
url: /cs/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Při ukládání dokumentu můžete nastavit některé pokročilé vlastnosti. Aspose.Words vám poskytuje třídu [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), která umožňuje přesnější řízení procesu ukládání. Existují přetížení metody **Save**, které přijímají objekt **SaveOptions** - měl by to být objekt třídy odvozený od třídy **SaveOptions**. Každý formát uložení má odpovídající třídu, která obsahuje možnosti uložení pro tento formát uložení, například existuje [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) pro uložení do formátu PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) pro uložení do formátu Markdown nebo [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) pro uložení do obrázku. Tento článek poskytuje příklady práce s některými třídami možností odvozenými z **SaveOptions**.

Následující příklad kódu ukazuje, jak nastavit možnosti uložení před uložením dokumentu do HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Článek popisuje několik vlastností, které můžete ovládat při ukládání dokumentu.

## Zašifrujte dokument heslem

Pomocí vlastnosti **Password** získáte nebo nastavíte heslo pro šifrovaný dokument. Pro práci s vybraným formátem dokumentu použijte vlastnost **Password** odpovídající třídy.

Například při ukládání dokumentu do formátu DOC nebo DOT použijte vlastnost [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) třídy [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Následující příklad kódu ukazuje, jak nastavit heslo pro šifrování dokumentu pomocí metody šifrování RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Při ukládání dokumentu do formátu ODT Použijte vlastnost [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) třídy [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Následující příklad kódu ukazuje, jak načíst a uložit OpenDocument šifrované heslem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Ne všechny formáty podporují šifrování a použití vlastnosti **Password**.

## Zobrazit Oznámení O Průběhu Ukládání Dokumentů

Aspose.Words poskytuje možnost používat vlastnost [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) k získávání oznámení o průběhu ukládání dokumentů.

Nyní je k dispozici při ukládání do DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, nebo TXT formáty.

## Aktualizujte čas vytvoření dokumentu

Aspose.Words poskytuje možnost použít vlastnost [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) k získání nebo nastavení data vytvoření dokumentu v UTC. Tuto hodnotu můžete také aktualizovat před uložením pomocí možnosti [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Následující příklad kódu ukazuje, jak aktualizovat čas vytvoření dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Aktualizovat Poslední Uloženou Vlastnost

Aspose.Words poskytuje možnost použít vlastnost [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) k získání nebo nastavení hodnoty určující, zda je vlastnost [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) aktualizována před uložením.

Následující příklad kódu ukazuje, jak nastavit tuto vlastnost a uložit dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Uložte černobílý obrázek ve formátu jeden Bit na Pixel

K ovládání možností ukládání obrázků se používá třída **ImageSaveOptions**. Můžete například použít vlastnost [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) k nastavení formátu pixelů pro generované obrázky. Vezměte prosím na vědomí, že formát Pixelů výstupního obrazu se může lišit od nastavené hodnoty kvůli práci GDI+.

Následující příklad kódu ukazuje, jak uložit černobílý obrázek ve formátu jeden bit na pixel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
