---
title: Převést PDF na jiné formáty dokumentů
second_title: Aspose.Words místo Python via .NET
articleTitle: Převést PDF na jiné formáty dokumentů
linktitle: Převést PDF na jiné formáty dokumentů
type: docs
description: "Převést PDF do formátů Word, jako je DOCX, DOC, obrazové formáty, jako je JPG nebo PNG, nebo jakékoliv jiné formáty podporované pomocí Aspose `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /cs/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words může načíst i tak složitý formát jako PDF. To otevírá nové příležitosti: je možné převést PDF na Word nebo jiné formáty, které přinášejí uživatele daleko vpřed při řešení mnoha aplikované problémy.

## Převést PDF na jiné formáty {#convert-pdf-to-other-formats}

Nejoblíbenější konverze z PDF je konverze na Microsoft Word formáty jako DOCX, DOC, jakož i formáty obrázků, jako jsou JPG nebo PNG. S tím, jak bylo řečeno, převod dokumentu z jednoho formátu do druhého provádí známým způsobem.

Následující příklad kódu ukazuje, jak převést dokument z PDF na DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Upřesnit možnosti zatížení při importu PDF {#specify-load-options-when-importing-pdf}

Aspose.Words poskytuje vám [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) třída, která umožňuje přesnější kontrolu nad načtením dokumentů PDF.

Většina nemovitostí zdědí nebo přetížení vlastnosti, které již existují v [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) třída. Kromě nich je pro formát PDF uvedena řada vlastností. Například můžete použít [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) a [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) vlastnosti definovat rozsah stránek, které mají být načteny z PDF dokumentu, a [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) vlastnosti pro kontrolu, zda by měly být obrázky při načítání PDF přeskočeny. Dalším podporovaným parametrem je [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), které musí být poskytnuty pro dokumenty chráněné heslem.

## Podporované PDF Obsah {#supported-pdf-content}

PDF2Word plugin v současné době podporuje tyto datové typy:

* Textové odstavce
* Obrázky
* Tabulky
* Seznamy
* Hlavičky a zápatí
* Poznámky
* Čísla stránek
* Pravý až levý text (s určitými omezeními)
* Vyhledatelné PDF (přední obrázky budou odstraněny ve prospěch pozadí textu)

## Plánované funkce {#planned-features}

Některé prvky jsou stále v raném vývoji nebo jsou zahrnuty v plánu rozvoje:

* Obsah
* OCR pro vyhledávatelné a nevyhledatelné PDF
* Zpráva o pokroku
* Vícesloupný text
* Matematika vzorce
* Více automatických polí (besides `PAGE` a NUMPAGES)

## PDF Výjimky z zatížení

Během konverze dokumentu PDF může nastat jedna z následujících výjimek:

|  Výjimka |  Popis zboží |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  Soubor PDF nelze z nějakého důvodu zpracovat.<br/>{{% alert color="primary" %}}Můžete nahlásit problém vývojovému týmu k podrobnému vyšetřování pomocí [Technická podpora](/words/cs/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  Soubor PDF je chráněn Adobe DRM a nelze jej dekódovat pomocí Pdf2Word |
|   *PasswordProtectedFileException*  |  Pro PDF chráněný heslem musí být uvedeno správné heslo |


