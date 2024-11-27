---
title: Co je rozložení stránky v C++
second_title: Aspose.Words pro C++
articleTitle: Co je rozložení stránky
linktitle: Co je rozložení stránky
description: "Pojďme zjistit, co je rozvržení stránky. Rozložení stránky popisuje geometrii obsahu obsaženého v dokumentu."
type: docs
weight: 5
url: /cs/cpp/what-is-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

**document page layout** je datová struktura, popisující, kde je určitý objekt umístěn na stránkách pro všechny objekty dokumentu. Kromě toho, protože objekty mají vlastnosti, které ovlivňují jejich vzhled, jako je velikost písma, efekty stínování nebo kreslení, musíte nejen vědět, kde je objekt, ale také jakou oblast (oblasti) stránky zabírá a zda se bude vztahovat na více stránek, aby ostatní objekty nepřekrývaly stejnou oblast (oblasti).

## K čemu slouží Rozvržení stránky?

Aspose.Words implementuje funkci rozvržení stránky interně, což jí umožňuje vytvářet všechny pevné formáty stránek, například PDF, XPS a různé formáty obrázků. Bez rozvržení stránky by informace uložené v souboru dokumentu pevné stránky nebyly k dispozici a všechny tyto formáty by nebyly podporovány.

Vztah mezi dokumentem a rozložením stránky je poměrně jednoduchý. Zatímco dokument popisuje obsah, odpovídající rozvržení stránky popisuje geometrii tohoto obsahu. Všimněte si, že rozvržení stránky nemůže existovat bez dokumentu, protože by neexistoval žádný obsah pro výpočet geometrie, ale dokument může existovat bez rozvržení stránky. Například když je dokument DOCX převeden na dokument RTF, je obvykle zbytečné znát geometrii, protože ani jeden formát jej neukládá.

## Vidět

* [Vytvoření rozvržení stránky](/words/cpp/creating-a-page-layout/)
* [Uložení dokumentu do formátu pevné stránky](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Určete Možnosti Rozvržení](/words/cpp/specify-layout-options/)
