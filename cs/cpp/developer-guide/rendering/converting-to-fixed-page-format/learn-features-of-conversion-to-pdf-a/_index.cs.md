---
title: Převod na PDF/A a PDF/UA
second_title: Aspose.Words pro C++
articleTitle: Naučte se funkce převodu na PDF/A a PDF/UA
linktitle: Naučte se funkce převodu na PDF/A a PDF/UA
description: "Převést na PDF/A-1, PDF/A-2, PDF/A-4 a PDF/UA Pomocí C++. Vyberte nejlepší PDF standard pro převod dokumentu pomocí С++."
type: docs
weight: 35
url: /cs/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF je pevný formát stránky, který je mezi uživateli velmi oblíbený a je široce podporován různými aplikacemi, protože dokument PDF vypadá na jakémkoli zařízení stejně. Z tohoto důvodu je převod na PDF důležitou vlastností Aspose.Words.

PDF je složitý formát sám o sobě, protože má specifickou strukturu souborů, grafický model, vkládání písem a některé složité výstupní funkce, jako jsou značky struktury dokumentů, šifrování, digitální podpisy a upravitelné formuláře. Převod dokumentu na PDF navíc vyžaduje několik fází výpočtu, které jsou složité a časově náročné.

V této části zvážíme hlavní problémy, které mohou nastat při práci s dokumenty v různých standardech PDF, a popíšeme možnosti jejich řešení.

## Který PDF Standardní Aspose.Words Podporuje

Aspose.Words nyní umožňuje uživatelům pracovat s formáty PDF/A-1, PDF/A-2 a PDF/A-4 a také s PDF/UA-1:

* PDF/A-1 má vážná omezení, jako je průhlednost a některé možnosti komprese jsou zakázány
* PDF/A-2 eliminuje některá omezení PDF/A-1, jako je podpora efektů průhlednosti a vrstvy nebo vkládání písem OpenType
* PDF/A-4 předpokládá revidované úrovně shody:normální PDF/A-4 shoda je ekvivalentní shodě úrovně u předchozích verzí a shoda úrovně a je odstraněna
* PDF/UA-1 obsah by měl být označen a standardizován podle ISO 32000-1: 2008

PDF/A je ISO-standardizovaná verze PDF určená pro použití při archivaci a dlouhodobém ukládání elektronických dokumentů. PDF/UA je zároveň další ISO standardizovaná verze PDF navržená tak, aby zajistila dostupnost pro osoby se zdravotním postižením, které používají asistenční technologii. Chcete-li určit úroveň shody s normami PDF, použijte vlastnost [Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/). Kvůli podmínkám skladování musí PDF/A dokument vložit všechna písma a zakázat šifrování, zatímco PDF/UA musí vložit pouze všechna písma.

V této části se blíže podíváme na práci s dokumenty PDF/A nebo PDF/UA-1.

## Relevantní ISO pro PDF standardy

Chcete-li se dozvědět více o různých standardech PDF, Zkontrolujte následující ISOs:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Vidět

* [Jak upravit značky struktury dokumentu v Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Jak zkontrolovat nebo upravit jazyk textu v Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Jak změnit jazyk textu v Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Jak přidat alternativní text do tvaru, obrázku, grafu, grafiky SmartArt nebo jiného objektu v Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Jak přidat alternativní text a doplňující informace ke značkám](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (nebo si přečtěte stejné informace v [Adobe Acrobat Uživatelská Příručka](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Jak nastavit ActualText záznam pro text](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), část" přidat skutečný Text pro zkrácený výraz, vzorec nebo Symbol bez Unicode"
* [Mapování Unicode pro běžná symbolická písma Windows ](http://www.alanwood.net/demos/webdings.html)

