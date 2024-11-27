---
title: Manipulujte a nahrazujte TrueType fonty v C++
second_title: Aspose.Words pro C++
articleTitle: Manipulovat a nahrazovat TrueType fonty
linktitle: Manipulovat a nahrazovat TrueType fonty
description: "Aspose.Words pro C++ lze vložit správné TrueType písma do výsledného dokumentu, aby bylo zajištěno, že se zobrazí přesně. Pokud písmo nebo konkrétní znak není k dispozici, Aspose.Words vyhledá vhodnou náhradu písma nebo použije mechanismus záložního písma."
type: docs
weight: 10
url: /cs/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words vyžaduje TrueType písma pro různé úkoly, včetně vykreslování dokumentů do formátů s pevnou stránkou, například PDF nebo XPS. Když Aspose.Words vykreslí dokument, musí provést vkládání a vkládání podmnožin písem TrueType do výsledného dokumentu, což je běžná praxe během generování dokumentu, včetně populárních formátů PDF nebo XPS. Tím je zajištěno, že se dokument bude každému prohlížeči zobrazovat stejně. SPECIFIKACE XPS navíc vyžaduje, aby písma byla vždy vložena do dokumentu.

Aby bylo zajištěno, že Aspose.Words přesně měří znaky a úspěšně vkládá příslušná písma, musí být splněny následující podmínky:

1. Aspose.Words by měl být schopen najít a přistupovat k souborům písem TrueType v systému.
1. Pro Aspose.Words musí být k dispozici dostatečné množství písem TrueType, nejlépe se stejnými rodinnými názvy písem, jaké jsou použity v dokumentu.

Všimněte si, že písmo v dokumentu představuje entitu, například příjmení, styl, velikost, barvu, která se liší od entity `TrueType` font (fyzické písmo). Aspose.Words překládá písmo v dokumentu na fyzické písmo v určité fázi zpracování. To umožňuje určité úkoly, nejčastěji úkol výpočtu velikosti textu během konstrukce rozvržení a vkládání/podsazování do formátů s pevnou stránkou. Rovněž je povolena řada dalších méně populárních úkolů, jako je rozlišení a nahrazování písem při načítání HTML nebo vkládání/podmnožství do některých formátů toku.

## Kde Aspose.Words hledá písma

Aspose.Words se pokusí najít TrueType písma v systému souborů automaticky. Při hledání písem `TrueType` se obvykle můžete spolehnout na výchozí chování Aspose.Words, ale někdy musíte zadat vlastní složky obsahující PÍSMA TrueType. V [Zadejte TrueType Umístění Písem](/words/cpp/specify-truetype-fonts-location/) téma popisuje, jak a kde Aspose.Words hledá písma, a také Jak určit vlastní umístění písem.

## Rozdíly ve zpracování formátů písem v Aspose.Words a Microsoft Word

Existují určité rozdíly ve zpracování formátů písem v Aspose.Words a Microsoft Word, jak je uvedeno v následující tabulce:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType fonty a OpenType fonty s TrueType obrysy | Podporovat. | Podporovat. |
| OpenType písma s PostScript obrysy | Podporováno pro většinu scénářů. Vkládání do formátů s pevnou stránkou, jako jsou PDF a XPS, není podporováno. Text je nahrazen bitmapovými obrázky. | Podporováno pro většinu scénářů, včetně vkládání do formátů s pevnou stránkou. |
| OpenType Variace Písma | Podporovány jsou pouze pojmenované instance. Kontinuální variace nejsou podporovány. | Podporováno pro jedinou výchozí instanci. Pojmenované instance a kontinuální variace nejsou podporovány. |
| Type1 fonty | Podporováno na Windows verzích před rokem 2013 a na MacOS verzích. Podpora je zrušena u verzí Windows od roku 2013. | Podporovat. |


