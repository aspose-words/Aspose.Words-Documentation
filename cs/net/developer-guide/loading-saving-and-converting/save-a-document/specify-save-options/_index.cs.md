---
title: Zadejte možnost uložení C#
second_title: Aspose.Words místo .NET
articleTitle: Zadejte možnosti uložení
linktitle: Zadejte možnosti uložení
description: "Přesnější řízení procesu ukládání pomocí C#."
type: docs
weight: 10
url: /cs/net/specify-save-options/
---

Při ukládání dokumentu můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje vám [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) třída, která umožňuje přesnější řízení procesu uložení. Jsou tu přetížení. **Save** metoda, která přijímá **SaveOptions** Objekt: **SaveOptions** třída. Každý formát uložení má odpovídající třídu, která drží možnosti uložení pro tento formát uložení, například, tam je [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) pro uložení do formátu PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) pro úsporu na Markdown formát nebo [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) za záchranu obrazu. Tento článek uvádí příklady práce s některými třídami možností odvozenými z **SaveOptions**.

Následující příklad kódu ukazuje, jak nastavit možnosti uložení před uložením dokumentu do HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Článek popisuje několik vlastností, které můžete ovládat při ukládání dokumentu.

## Zašifrovat dokument S heslem

Použijte **Password** vlastnost získat nebo nastavit heslo pro zašifrovaný dokument. Použijte **Password** vlastnost odpovídající třídy pracovat s vybraným formátem dokumentu.

Například při ukládání dokumentu do DOC nebo DOT formát, použijte [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) majetek [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) třída.

Následující příklad kódu ukazuje, jak nastavit heslo pro šifrování dokumentu pomocí šifrovací metody RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Při ukládání dokumentu do formátu Odt použijte [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) majetek [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) třída.

Následující příklad kódu ukazuje, jak načíst a uložit kód OpenDocument zašifrovaný heslem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Ne všechny formáty podporují šifrování a používání **Password** majetek.

## Zobrazit oznámení o uložení dokumentu

Aspose.Words poskytuje schopnost používat [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) vlastnost získat oznámení o průběhu ukládání dokumentů.

Je nyní k dispozici při ukládání na DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, nebo TXT formáty.

## Aktualizovat čas vytvoření dokumentu

Aspose.Words poskytuje schopnost užívat [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) vlastnost získat nebo nastavit datum vytvoření dokumentu v UTC. Tuto hodnotu můžete také aktualizovat před uložením [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) Možnost.

Následující příklad kódu ukazuje, jak aktualizovat čas vytvoření dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Aktualizovat naposledy uložená vlastnost

Aspose.Words poskytuje schopnost užívat [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) vlastnost získat nebo nastavit hodnotu určující, zda [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) vlastnost je aktualizována před uložením.

Následující příklad kódu ukazuje, jak nastavit tuto vlastnost a uložit dokument:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Ovládání externích zdrojů Při ukládání dokumentu do HTML nebo SVG

Chcete-li převést HTML nebo SVG do PDF, jednoduše použít [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) metoda a zadejte název souboru s příponou PDF. Pokud chcete načíst obrázky, CSS, atd. z externích zdrojů, můžete použít [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

Následující příklad kódu ukazuje, jak převést HTML do PDF a načítá obrázky z externích zdrojů:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Uložit černou a bílou obrázek s jedním bit na formát Pixel

Pro kontrolu možností ukládání obrazu **ImageSaveOptions** Hodina se používá. Například můžete použít [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) vlastnost nastavit formát pixelů pro generované obrázky. Vezměte prosím na vědomí, že formát pixelů výstupního obrazu se může v důsledku práce GDI+ lišit od nastavené hodnoty.

Následující příklad kódu ukazuje, jak uložit černobílý obraz s jedním bitem na formát pixelů:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
