﻿---
title: Název výrobce ve výstupech
second_title: Aspose.Words pro C++
articleTitle: Název generátoru nebo výrobce ve výstupních dokumentech
linktitle: Jméno výrobce ve výstupních dokumentech
description: "Aspose.Words pro C++ přidejte do dokumentu název generátoru a číslo verze, které byly použity k jeho vytvoření. Tato data lze v dokumentu nalézt způsoby, které závisí na formátu výstupního souboru."
type: docs
weight: 90
url: /cs/cpp/generator-or-producer-name-included-in-output-documents/
timestamp: 2024-10-21-11-17-44
---

Můžete snadno zjistit, zda je dokument vytvořen pomocí Aspose.Words pro C++. Můžete také najít číslo verze Aspose.Words pro C++, která byla použita k vytvoření konkrétního výstupního dokumentu. Aspose.Words tyto informace přímo zapíše do vygenerovaného dokumentu.

Číslo verze je zadáno ve formátu *YY.MM.N* nebo *YY.M.N*, například 23.12.0 nebo 24.1.0.<br />
Zde *YY* jsou poslední dvě číslice roku vydání, *M* nebo *MM* je měsíc vydání (1-12) a *N* je menší číslo vydání. Obvykle *N* je "0".

{{% alert color="primary" %}}

Všimněte si, že nemůžete instruovat Aspose.Words, aby tyto informace z výstupních dokumentů změnil nebo odstranil.

{{% /alert %}}

V závislosti na formátu výstupního souboru v následující tabulce jsou uvedeny způsoby, jak můžete znát název generátoru a číslo verze.

| SaveFormat hodnota | Řetězec, komentář nebo pole napsané v souboru | Jak najít |
| :- | :- | :- |
| `Doc` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | DOC generovaný Aspose.Words dostane zapsáno 8 bajtů. Můžete to zkontrolovat otevřením souboru v nějakém binárním editoru. |
| `Dot` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | DOT generovaný Aspose.Words dostane zapsáno 8 bajtů. Můžete to zkontrolovat otevřením souboru v nějakém binárním editoru. |
| `Docx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Přejmenujte soubor jako .zip. Extrahujte ZIP. Otevřete ~/Word/Document.xml, abyste viděli tento komentář. |
| `Docm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Přejmenujte soubor jako .zip. Extrahujte ZIP. Otevřete ~/Word/Document.xml, abyste viděli tento komentář. |
| `Dotx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Přejmenujte soubor jako .zip. Extrahujte ZIP. Otevřete ~/Document.xml, abyste viděli tento komentář. |
| `Dotm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Přejmenujte soubor jako .zip. Extrahujte ZIP. Otevřete ~/Word/Document.xml, abyste viděli tento komentář. |
| `FlatOpc` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `FlatOpcMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `FlatOpcTemplate` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `FlatOpcTemplateMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `Rtf` | `{\*\generator Aspose.Words for C++ YY.M.N;}`<br />například,<br />`{\*\generator Aspose.Words for C++ 24.1.0;}` | .rtf soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `WordML` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| Pdf | <ul><li>**Application:** Aspose.Words</li><li>**PDF Producer:** `Aspose.Words for C++ YY.M.N`, například,<br />`Aspose.Words for C++ 24.1.0`</li></ul> | ![název: image_alt_text](generator-or-producer-name-included-in-output-documents_1) |
| `Xps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Přejmenujte soubor jako .zip. Extrahujte ZIP. V XPS tento komentář lze nalézt v ~ / Documents/1 / Pages / 1.fpage |
| `XamlFixed` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `Svg` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `HtmlFixed` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />například,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | HTML soubor obsahuje tuto značku. Můžete jej otevřít v Poznámkovém bloku, abyste viděli. |
| `OpenXps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Přejmenujte soubor jako .zip. Extrahujte ZIP. V OpenXps tento komentář najdete v ~ / Documents/1 / Pages / 1.fpage |
| `Ps` | `%Generated by Aspose.Words for C++ YY.M.N`<br />například,<br />`%Generated by Aspose.Words for C++ 24.1.0` | . ps soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `Pcl` |  |  |
| `Html` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />například,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | HTML soubor obsahuje tuto značku. Můžete jej otevřít v Poznámkovém bloku, abyste viděli. |
| `Mhtml` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />například,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | MHTML soubor obsahuje tuto značku. Můžete jej otevřít v Poznámkovém bloku, abyste viděli. |
| `Epub` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />například,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | Přejmenujte soubor jako .zip. Extrahujte ZIP. Přejít na ~ / OEBPS/<file_name>.html. |
| `Odt` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Přejmenujte soubor jako .zip. Extrahujte ZIP. Zkontrolujte to ~/content.xml |
| `Ott` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Přejmenujte soubor jako .zip. Extrahujte ZIP. Zkontrolujte to ~/content.xml |
| `Text` |  |  |
| `XamlFlow` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `XamlFlowPack` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />například,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml soubor obsahuje tento komentář. Můžete jej otevřít v Poznámkovém bloku a zobrazit tento komentář. |
| `Markdown` |  |  |
| `Tiff` |  |  |
| `Png` |  |  |
| `Bmp` |  |  |
| `Emf` |  |  |
| `Jpeg` |  |  |
| `Gif` |  |  |

{{% alert color="primary" %}}

K variantám uvedeným v tabulce je také doplněk. Číslo verze Aspose.Words lze pro některé formáty zapsat na několik dalších míst. Záleží na Nastavení exportu.

Tyto další situace nejsou popsány v tabulce výše.

{{% /alert %}}