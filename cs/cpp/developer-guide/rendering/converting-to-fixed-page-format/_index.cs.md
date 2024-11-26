---
title: Převod do formátu pevné stránky v C++
second_title: Aspose.Words pro C++
articleTitle: Převod do formátu s pevnou stránkou
linktitle: Převod do formátu s pevnou stránkou
description: "Uložit dokumenty do PDF, XPS, HTML, XAML, PostScript, a PCL formáty."
type: docs
weight: 10
url: /cs/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words implementuje svůj vlastní modul rozvržení stránky. Než se ponoříte do jeho specifikací, stojí za to nejprve diskutovat o dokumentu na vysoké úrovni.

## Co je to dokument?

Při přemýšlení o dokumentu si uživatelé obvykle představí řadu listů papíru obsahujících slova, obrázky, tabulky a grafy. Dokumenty mohou být různých typů, jako je text, tabulky, snímky, výkresy CAD, vývojové diagramy, a proto mohou mít v podstatě různá rozvržení. Většina aplikací umožňuje odesílání dokumentů do tiskárny; to je, když uživatel může skutečně zobrazit konečný zamýšlený vzhled dokumentu.

## Zobrazení dokumentu v různých aplikacích

Různé aplikace pro prohlížení nebo publikování dokumentů umožňují uživatelům otevírat (Adobe Acrobat, XPS Viewer) a někdy upravovat (Adobe InDesign) dokumenty konkrétních formátů. Tyto aplikace obvykle produkují takzvané dokumenty ve formátu" pevné stránky". Takový formát dokumentu přesně popisuje, kde je obsah dokumentu umístěn na každé stránce. Interně formát PDF nebo XPS obsahuje popis každé stránky a také pokyny pro kreslení, které specifikují rozložení obsahu na stránce. Je to podobné jako u obrazových formátů, které popisují, kde je obsah zobrazen buď v rastrové nebo vektorové podobě.

Naproti tomu některé aplikace pro úpravy textu nepodporují prohlížení stránek dokumentu. Například Microsoft Poznámkový blok podporuje jen velmi málo jiných funkcí než pouhé zobrazování, úpravy a tisk textu. Důležitým poznatkem je, že takové aplikace nemohou zobrazit stránky dokumentu ani sdělit uživateli, kolik z nich by bylo vytištěno, což umožňuje pouze zobrazit obsah dokumentu. Dokument lze uložit ve formátu prostého textu a lze jej otevřít mnoha dalšími aplikacemi. Pomocí aplikace, která umožňuje prohlížení binárního obsahu libovolného souboru, můžete vidět, co je uloženo v souboru dokumentu – je to jen prostý text, v něm není nic jiného.

Mírně sofistikovanější aplikace pro úpravy textu, jako je Microsoft WordPad, ukládají dokument ve formátu RTF (RTF), který podporuje více funkcí formátování, jako je vkládání obrázků, formátování znaků, okraje odstavců a mezery. Formát RTF však také obsahuje pouze obsah dokumentu, který nemá žádné informace o stránkách.

Microsoft Word je nejpokročilejší aplikace pro úpravu textu v Windows dnes. Formátuje soubory ve formátu DOCX, který flexibilně a rozsáhle popisuje obsah dokumentu, což uživatelům umožňuje určit velikost stránky, orientaci sekce dokumentu a být aplikací WYSIWYG dokonce zobrazovat stránky dokumentu na obrazovce. Přesto stále neexistují žádné informace o tom, jak je obsah dokumentu zobrazen na stránkách dostupných v souboru dokumentu. Soubor dokumentu popisuje pouze samotný obsah a vzájemný vztah objektů dokumentu spolu s některými geometrickými omezeními. Výsledkem je, že před zobrazením dokumentu Microsoft Word vypočítá tuto informaci sám. Zde vstupuje do hry rozvržení stránky.

## Vidět

* [Co je rozložení stránky](/words/cpp/what-is-a-page-layout/)
* [Vytvoření rozvržení stránky](/words/cpp/creating-a-page-layout/)
* [Uložení dokumentu do formátu pevné stránky](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Určete Možnosti Rozvržení](/words/cpp/specify-layout-options/)
