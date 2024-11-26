---
title: Zadejte možnost uložení Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Zadejte možnosti uložení
linktitle: Zadejte možnosti uložení
description: "Přesnější řízení procesu ukládání pomocí Python."
type: docs
weight: 10
url: /cs/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Při ukládání dokumentu můžete nastavit některé pokročilé vlastnosti. Aspose.Words poskytuje vám [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) třída, která umožňuje přesnější řízení procesu uložení. Jsou tu přetížení. [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metoda, která přijímá [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) Objekt: [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) třída. Každý formát uložení má odpovídající třídu, která drží možnosti uložení pro tento formát uložení, například, tam je [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) pro uložení do formátu PDF nebo [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) za záchranu obrazu. Tento článek uvádí příklady práce s některými třídami možností odvozenými z [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Následující příklad kódu ukazuje, jak nastavit možnosti uložení před uložením dokumentu do HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Článek popisuje několik vlastností, které můžete ovládat při ukládání dokumentu.

## Zašifrovat dokument S heslem

Použijte **heslo** vlastnost získat nebo nastavit heslo pro zašifrovaný dokument. Použijte **heslo** vlastnost odpovídající třídy pracovat s vybraným formátem dokumentu.

Například při ukládání dokumentu do DOC nebo DOT formát, použijte [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) majetek [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) třída.

Následující příklad kódu ukazuje, jak nastavit heslo pro šifrování dokumentu pomocí šifrovací metody RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Při ukládání dokumentu do formátu Docx použijte [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) majetek [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) třída.

Následující příklad kódu ukazuje, jak načíst a uložit Docx zašifrované heslem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Ne všechny formáty podporují šifrování a používání **heslo** majetek.

## Aktualizovat čas vytvoření dokumentu

Aspose.Words poskytuje schopnost užívat [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) vlastnost získat nebo nastavit datum vytvoření dokumentu v UTC. Tuto hodnotu můžete také aktualizovat před uložením [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) Možnost.

Následující příklad kódu ukazuje, jak aktualizovat čas vytvoření dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Aktualizovat naposledy uložená vlastnost

Aspose.Words poskytuje schopnost užívat [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) vlastnost získat nebo nastavit hodnotu určující, zda [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) vlastnost je aktualizována před uložením.

Následující příklad kódu ukazuje, jak nastavit tuto vlastnost a uložit dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Uložit černou a bílou obrázek s jedním bit na formát Pixel

Pro kontrolu možností ukládání obrazu [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) Hodina se používá. Například můžete použít [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) vlastnost nastavit formát pixelů pro generované obrázky. Upozorňujeme, že formát pixelů výstupního obrazu se může lišit od nastavené hodnoty vzhledem k práci skia.

Následující příklad kódu ukazuje, jak uložit černobílý obraz s jedním bitem na formát pixelů:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
