---
title: Zadejte možnosti uložení v Java
second_title: Aspose.Words místo Java
articleTitle: Zadejte možnosti uložení
linktitle: Zadejte možnosti uložení
description: "Nastavit pokročilé vlastnosti při ukládání dokumentu pomocí Java zajistit přesnější kontrolu nad procesem."
type: docs
weight: 20
url: /cs/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Při ukládání dokumentu můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje vám [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) třída, která umožňuje přesnější řízení procesu ukládání. Existují přetížení **Save** metoda, která přijímá **SaveOptions** Objekt: **SaveOptions** třída. Každý formát uložení má odpovídající třídu, která drží možnosti uložení pro tento formát uložení, například, tam je [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) pro uložení do formátu PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) pro úsporu na Markdown formát nebo [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) pro uložení do obrazu. Tento článek uvádí příklady práce s některými druhy možností odvozenými z **SaveOptions**.

Následující příklad kódu ukazuje, jak nastavit možnosti uložení před uložením dokumentu do HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Článek popisuje několik vlastností, které můžete ovládat při ukládání dokumentu.

## Zašifrovat dokument S heslem

Použijte **Password** vlastnost získat nebo nastavit heslo pro zašifrovaný dokument. Použijte **Password** vlastnost odpovídající třídy pracovat s vybraným formátem dokumentu.

Například při ukládání dokumentu do DOC nebo DOT formát, použijte [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) majetek [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) třída.

Následující příklad kódu ukazuje, jak nastavit heslo pro šifrování dokumentu pomocí šifrovací metody RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Při ukládání dokumentu do formátu ODT použijte [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) majetek [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) třída.

Následující příklad kódu ukazuje, jak načíst a uložit šifrovaný OpenDocument heslem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Ne všechny formáty podporují šifrování a používání **Password** majetek.

## Zobrazit oznámení o uložení dokumentu

Aspose.Words poskytuje schopnost užívat [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) vlastnost získat oznámení o průběhu ukládání dokumentů.

Je nyní k dispozici při ukládání na DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, nebo TXT formáty.

## Aktualizovat čas vytvoření dokumentu

Aspose.Words poskytuje schopnost užívat [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) vlastnost získat nebo nastavit datum vytvoření dokumentu v UTC. Tuto hodnotu můžete také aktualizovat před uložením [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) Možnost.

Následující příklad kódu ukazuje, jak aktualizovat čas vytvoření dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Aktualizovat naposledy uložená vlastnost

Aspose.Words poskytuje schopnost užívat [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) vlastnost získat nebo nastavit hodnotu určující, zda [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) vlastnost je aktualizována před uložením.

Následující příklad kódu ukazuje, jak nastavit tuto vlastnost a uložit dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Uložit černobílý obrázek s jedním bitem na formát Pixel

Pro kontrolu možností ukládání obrazu **ImageSaveOptions** Hodina se používá. Například můžete použít [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) vlastnost pro nastavení formátu pixelů pro generované obrázky. Vezměte prosím na vědomí, že formát pixelů výstupního obrazu se může v důsledku práce GDI+ lišit od nastavené hodnoty.

Následující příklad kódu ukazuje, jak uložit černobílý obrázek s jedním bitem na formát pixelů:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
