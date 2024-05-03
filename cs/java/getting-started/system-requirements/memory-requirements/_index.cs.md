---
title: Požadavky na paměť
second_title: Aspose.Words místo Java
articleTitle: Požadavky na paměť
linktitle: Požadavky na paměť
description: "Kolik paměť dělá Aspose.Words místo Java vyžaduje práci s dokumenty? Naučte se detaily."
type: docs
weight: 10
url: /cs/java/memory-requirements/
---

Aspose.Words poskytuje širokou škálu funkcí pro práci s dokumenty v různých formátech. Je důležité poznamenat, že neexistuje žádný limit maximální velikosti dokumentu souboru, který Aspose.Words může zpracovávat nebo vykreslovat. Jediné omezení je množství RAM (paměti) dostupné na vaší straně.

## Kolik paměti Aspose.Words Potřeby

Obvykle Aspose.Words potřebuje několikrát více paměti než velikost dokumentu pro sestavení modelu dokumentu v paměti. Například, pokud je velikost dokumentu 1 MB, Aspose.Words potřebuje 10-20 MB RAM ke stavbě Document Object Model (DOM) v paměti. Násobitel závisí na formátu, protože některé formáty jsou kompaktnější než jiné. Například DOCX je kompaktnější než DOC a RTF a DOC je kompaktnější než RTF.

Neexistuje žádný přesný způsob, jak odhadnout, kolik paměti Aspose.Words ve skutečnosti spotřebuje během zpracování jakéhokoliv konkrétního dokumentu souboru. Jak možná víte Java ukládá data ve třídách, každá třída používá určitou paměť pro JVM (Java virtuální stroj) vnitřní účely. Takže jakýkoliv odstavec nebo formátovaný text (i když se skládá z jednoho znaku) má po načtení do DOM. Navíc Java Sběratel odpadků používá komplexní algoritmus k určení nejlepšího času k provedení sběru paměti, což ztěžuje určení skutečné spotřeby paměti.

## Jak vypočítat množství paměti

Nechť zváží dva dokumenty:

1. dokument DOCX "A" - velikost 0.35 MB (2 tisíce stran), pouze text
2. dokument DOCX "B" - velikost 0.35 MB (pouze 1 strana), uvnitř obrázek PNG

Jak víte, mnoho moderních formátů jako DOCX, ODT, atd. jsou jednoduché ZIP archivy. Takže dostaneme následující algoritmus výpočtu:
1. Odklopení. Rozbalený dokument "A" má velikost 20 MB, dokument "B" má velikost 0,4 MB
2. Načítání dokumentu do modelu (budování jeho Document Object Model? DOM):
* Vytvoření DOM z prvního dokumentu "A" vyžaduje velikost 49 MB
* Vytvoření DOM z druhého dokumentu "B" vyžaduje pouze 2 MB velikost.
3. Měření potřebného množství paměti pro uvedení těchto dokumentů do PDF. Pro tuto operaci, Aspose.Words vyžaduje:
  * 294 MB pro dokument "A"
  * 7 MB pro dokument "B"

Jak vidíte, není lineární závislost na velikosti vstupního dokumentu. Existuje mnoho faktorů, které mohou ovlivnit požadovanou velikost RAM formátu dokumentu, jeho složitost a strukturu, počet obrázků a jejich formát, a mnoho dalších faktorů.

## Jak nejlépe vypočítat násobitel paměti

Experimenty s tisíci reálných dokumentů ukazují, že obvykle Aspose.Words vyžaduje několikrát více paměti než je průměrná velikost dokumentu k vytvoření modelu dokumentu v paměti a provádět jednoduché operace, jako je konverze mezi formáty průtoku, mail merge, Parse, náhradní, a tak dále. Někdy mluvíme o násobku 2 a někdy 20.

Složitější operace, jako je renderování (přeměna na pevné formáty stránek), aktualizace polí, rozdělení stránky, a další, pro některé dokumenty vyžadují 20 krát více zdrojů než paměť přidělená dokumentem načten v Aspose.Words DOM.

Pokud vaše výsledky profilování indikují možný problém paměti v Aspose.Words, prosím kontaktujte naše [Technická podpora](/words/cs/java/technical-support/) a zahrnout všechny diagnostické informace.

## Viz také

* [Renderování](/words/cs/java/rendering/)
* [Mail Merge a využití prostředků](https://docs.aspose.com/words/java/mail-merge-and-reporting/)
* [Práce s poli](/words/cs/java/working-with-fields/)