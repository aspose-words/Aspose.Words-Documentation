---
title: Požadavky na paměť
second_title: Aspose.Words místo .NET
articleTitle: Požadavky na paměť
linktitle: Požadavky na paměť
description: "Kolik vzpomínek Aspose.Words místo .NET vyžadovat práci s dokumenty? Naučte se detaily."
type: docs
weight: 10
url: /cs/net/memory-requirements/
---

Aspose.Words poskytuje širokou škálu funkcí pro práci s dokumenty v různých formátech. Je důležité poznamenat, že neexistuje žádný limit maximální velikosti dokumentu souboru, který Aspose.Words může zpracovat nebo renderovat. Jediné omezení je množství RAM (paměti) dostupné na vaší straně.

## Kolik paměti Aspose.Words Potřeby

Obvykle Aspose.Words potřebuje několikkrát více paměti než velikost dokumentu pro sestavení modelu dokumentu v paměti. Například, pokud je velikost dokumentu 1 MB, Aspose.Words potřebuje 10-20 MB RAM k vybudování Document Object Model (DOM) v paměti. Násobitel závisí na formátu, protože některé formáty jsou kompaktnější než jiné. Například DOCX je kompaktnější než DOC a RTF a DOC je kompaktnější než RTF.

Neexistuje žádný přesný způsob, jak odhadnout, kolik paměti Aspose.Words vlastně spotřebuje během zpracování jakéhokoliv konkrétního dokumentu. Jak možná víte .NET ukládá data ve třídách, každá třída používá určitou paměť pro interní účely CLR. Takže jakýkoliv odstavec nebo formátovaný text (i když se skládá z jednoho znaku) má po načtení do DOM. Navíc .NET Odpařovací motor používá složitý algoritmus k určení nejlepšího času k provedení sbírky paměti, což ztěžuje určení skutečné spotřeby paměti.

## Jak vypočítat množství paměti

Nechť zváží dva dokumenty:

1. dokument DOCX "A" 0.35 MB velikost (2 tisíce stran), pouze text
2. dokument DOCX "B" 0.35 MB velikost (pouze 1 strana), s PNG obraz uvnitř

Jak víte, mnoho moderních formátů jako DOCX, ODT, atd. jsou jednoduché ZIP archivy. Takže dostaneme následující výpočetní algoritmus:
1. Odklopení. Rozbalený dokument "A" má velikost 20 MB, dokument "B" má velikost 0,4 MB
2. Načítání dokumentu do modelu (budování jeho Document Object Model - Co? DOM):
* Vytvoření DOM z prvního dokumentu "A" vyžaduje velikost 49 MB
* Vytvoření DOM z druhého dokumentu "B" vyžaduje pouze 2 MB velikost.
3. Měření potřebného množství paměti pro uvedení těchto dokumentů do PDF. Pro tuto operaci, Aspose.Words vyžaduje:
  * 294 MB pro dokument "A"
  * 7 MB pro dokument "B"

Jak vidíte, není lineární závislost na velikosti vstupního dokumentu. Existuje mnoho faktorů, které mohou ovlivnit požadovanou velikost RAM formátu dokumentu, jeho složitost a strukturu, počet obrázků a jejich formát, a mnoho dalších faktorů.

## Jak nejlépe vypočítat násobič paměti

Experimenty s tisíci reálných dokumentů ukazují, že obvykle Aspose.Words vyžaduje několikrát více paměti, než je průměrná velikost dokumentu, aby se vytvořil model dokumentu v paměti a provádět jednoduché operace, jako je konverze mezi formáty průtoku, mail merge, Parse, náhradní, a tak dále. Někdy mluvíme o násobku 2 a někdy 20.

Složitější operace, jako je renderování (přeměna na pevné formáty stránek), aktualizace polí, rozdělení stránky, a další, pro některé dokumenty vyžadují 20 krát více zdrojů než paměť přidělená dokumentem nahrán v Aspose.Words DOM.

Pokud výsledky profilování naznačují možný problém paměti v Aspose.Words, prosím kontaktujte naše [Technická podpora](/words/cs/net/technical-support/) a zahrnout všechny diagnostické informace.

## Viz také

* [Měření využití paměti v Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Renderování](/words/cs/net/rendering/)
* [Mail Merge a podávání zpráv](https://docs.aspose.com/words/net/mail-merge-and-reporting/)
* [Práce s poli](/words/cs/net/working-with-fields/)