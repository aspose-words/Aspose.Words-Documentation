---
title: Práce s dělením slov v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s dělením slov
linktitle: Práce s dělením slov
description: "Použijte dělení slov pro kompaktnější uspořádání textu pomocí C++. Poskytuje pokročilé algoritmy pro práci se slovníky dělení slov, používá slovníky OpenOffice."
type: docs
weight: 220
url: /cs/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

Někdy je nutné použít dělení slov pro kompaktnější uspořádání textu v dokumentu. Současně je důležité pochopit, že specifika dělení slov se mohou u každého jazyka lišit.

V současné době se dělení slov nepoužívá tak často jako dříve, zejména v anglických textech. Použití této funkce však může mít vážný dopad na uživatelské dokumenty – dělení slov ovlivňuje rozložení a v důsledku toho vzhled výstupních souborů, například ve formátu PDF.

Pro správné rozdělení slov se používají slovníky dělení slov specifické pro jazyk. Aspose.Words používá pokročilé algoritmy pro práci s takovými slovníky a umožňuje vám získat stejné dělení slov jako v Microsoft Word.

## Slovníky Dělení Slov

Protože různé jazyky používají různé normy a pravidla pro dělení slov, optimálním řešením pro správné dělení slov je použití speciálních slovníků. Aspose.Words používá OpenOffice slovníky.

Pro kontrolu pravopisu OpenOffice používá [Hunspell knihovna](https://hunspell.github.io/), což je zobecnění texova algoritmu dělení slov. Tento algoritmus umožňuje automatické nestandardní dělení slov pomocí konkurenčních standardních a vlastních vzorů dělení slov. Hunspell používá [Pomlčka](https://github.com/hunspell/hyphen) pro dělení slov.

{{% alert color="primary" %}}

Slovníky dělení slov mohou být převzaty z [LibreOffice slovníky GitHub](https://github.com/LibreOffice/dictionaries). Příklad, [CS - US slovník dělení slov](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Protože Microsoft Word používá k dělení slov jiné slovníky než OpenOffice slovníky, může se dělení slov některých slov definovaných slovníky OpenOffice lišit od dělení slov Microsoft Word. Z tohoto důvodu někdy musíme zákazníkům poradit, aby do svých slovníků přidali potřebné vzory, aby bylo možné opravit dělení slov jednotlivých slov.

{{% /alert %}}

## Algoritmus Dělení Slov

Aspose.Words nástroje [algoritmus dělení slov TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) a může znovu použít OpenOffice slovníky dělení slov.

Je třeba vzít v úvahu následující vlastnosti algoritmů Aspose.Words:

* Parametry vzdálenosti dělení slov (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) uvedené ve slovníku dělení slov jsou ignorovány. Aspose.Words používá vlastní sadu parametrů vzdálenosti v závislosti na režimu kompatibility dokumentu.
* Algoritmus dělení slov v Aspose.Words podporuje [složené dělení slov](https://github.com/hunspell/hyphen/blob/master/README.compound). Aspose.Words však rozděluje znakové sekvence obsahující smíšené abecední a nealfabetické znaky na části (slova) pouze v abecedním pořadí a dělí je Samostatně.
  Všimněte si, že Microsoft Word logika dělení složených slov závisí na režimu kompatibility dokumentů.
* Algoritmus dělení slov v Aspose.Words neimplementuje [nestandardní dělení slov](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Nestandardní vzory jsou ignorovány.

## Načítání Slovníků Dělení Slov

Chcete-li použít funkci dělení slov, nejprve zaregistrujte slovník dělení slov.Následující příklad kódu ukazuje, jak načíst slovníky dělení slov pro zadané jazyky ze souboru:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Následující příklad kódu ukazuje, jak načíst slovníky dělení slov pro zadaný jazyk ze streamu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Jako alternativu k předběžné registraci slovníků dělení slov je možné registrovat pouze požadované slovníky dělení slov "na vyžádání". Chcete-li toho dosáhnout, implementujte rozhraní [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) a použijte statické zpětné volání [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

Následující příklad kódu ukazuje, jak implementovat rozhraní **IHyphenationCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## Dopad dělení slov na rozvržení

Při rozdělování textu na řádky Aspose.Words zkontroluje každé slovo, zda zcela zapadá do aktuálního řádku. Pokud je jiné slovo příliš dlouhé na to, aby se vešlo na konec řádku, ve výchozím nastavení jej Aspose.Words přesune na začátek dalšího řádku místo dělení slov.

Funkci dělení slov však lze v Aspose.Words použít k vložení pomlček do slov, aby se odstranily mezery v oprávněném textu nebo aby se zachovala sudá délka řádku v úzkých sloupcích. To může samozřejmě ovlivnit počet řádků, a tedy i počet stránek. Jinými slovy, použití funkce dělení slov ovlivňuje rozložení dokumentu.

## Dělení slov a odůvodnění (H & J)

Microsoft Word má složitou logiku pro výběr zarážky, pokud je text oprávněný a je povoleno dělení slov. Stručně řečeno, Microsoft Word může upřednostňovat zmenšení nebo roztažení mezer, aby se zabránilo dělení čar. S největší pravděpodobností je tato logika založena na [Knuthův článek](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementuje svůj vlastní h & j algoritmus, který dává stejný výsledek jako Microsoft Word a poskytuje identické lámání řádků ve výstupním dokumentu.

## Vidět

* [Pomlčka-knihovna dělení slov](https://github.com/hunspell/hyphen/blob/master/README)
* [Nestandardní dělení slov](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatické nestandardní dělení slov v Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
