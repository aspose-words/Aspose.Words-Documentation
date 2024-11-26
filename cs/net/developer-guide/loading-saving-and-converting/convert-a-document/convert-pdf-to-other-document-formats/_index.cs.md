---
title: Převést PDF na jiný formát dokumentu v C#
second_title: Aspose.Words místo .NET
articleTitle: Převést PDF na jiné formáty dokumentů
linktitle: Převést PDF na jiné formáty dokumentů
type: docs
description: "Převést PDF na formáty Word, jako je DOCX, DOC, obrazové formáty, jako je JPG nebo PNG, nebo jiné formáty podporované Aspose.Words podání C#."
keywords: convert pdf to other formats c#
weight: 45
url: /cs/net/convert-pdf-to-other-document-formats/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words může načíst i tak složitý formát jako PDF. To otevírá nové příležitosti: je možné převést PDF na Word nebo jiné formáty, které přinášejí uživatele daleko vpřed při řešení mnoha aplikované problémy.

## Předpoklady

* Přidán odkaz na Aspose.Words balení *** NEBO*** Aspose.Words.Pdf2Word.dll.
* Alespoň .NET Framework 4.6.1 nebo .NET Standard 2.0 Cíle jako .NET Core 2.x nebo 3.0, .NET 5 a Xamarin jsou rovněž podporovány prostřednictvím kompatibility s .NET Standard.

## Převést PDF na různé formáty {#convert-pdf-to-other-formats}

Nejoblíbenější konverze z PDF je konverze na Microsoft Word formáty jako DOCX, DOC, jakož i formáty obrázků, jako jsou JPG nebo PNG. S tím, jak bylo řečeno, převod dokumentu z jednoho formátu do druhého provádí známým způsobem.

Následující příklad kódu ukazuje, jak převést dokument z PDF na DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Upřesnit možnosti zatížení při importu PDF {#specify-load-options-when-importing-pdf}

Aspose.Words poskytuje vám [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) třída, která umožňuje přesnější kontrolu nad načtením dokumentů PDF.

Většina nemovitostí zdědí nebo přetížení vlastnosti, které již existují v `LoadOptions` třída. Kromě nich je pro formát PDF uvedena řada vlastností. Například můžete použít [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) a [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) vlastnosti definovat rozsah stránek, které mají být načteny z PDF dokumentu, a [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) vlastnosti pro kontrolu, zda by měly být obrázky při načítání PDF přeskočeny. Dalším podporovaným parametrem je [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), který musí být stanoven [dokumenty chráněné heslem](/words/net/protect-documents-and-parts-of-documents/).

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

## Budoucí funkce {#planned-features}

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
|  `FileLoadException`               |  Soubor PDF nelze z nějakého důvodu zpracovat.<br/>{{% alert color="primary" %}}Můžete nahlásit problém vývojovému týmu k podrobnému vyšetřování pomocí [Technická podpora](/words/cs/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  Soubor PDF je chráněn Adobe DRM a nelze jej dekódovat pomocí Pdf2Word |
|  `PasswordProtectedFileException`  |  Pro PDF chráněný heslem musí být uvedeno správné heslo |

## Viz také

* [Nuget odkaz na Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

