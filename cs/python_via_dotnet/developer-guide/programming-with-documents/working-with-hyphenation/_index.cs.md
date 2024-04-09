---
title: Práce s Hyfenation in Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s hyfenací
linktitle: Práce s hyfenací
description: "Použití pomlčky pro kompaktnější uspořádání textu pomocí Python. Poskytuje pokročilé algoritmy pro práci s pomlčkami slovníky, používá OpenOffice slovníky."
type: docs
weight: 220
url: /cs/python-net/working-with-hyphenation/
---

Někdy je nutné použít pomlčku pro kompaktnější uspořádání textu v dokumentu. Zároveň je důležité pochopit, že specifika slovní pomlčky se mohou pro každý jazyk lišit.

V současné době se pomlčka nepoužívá tak často, jak bývala, zejména v anglických textech. Nicméně použití této funkce může mít vážný dopad na uživatelské dokumenty? pomlčka ovlivňuje rozložení a v důsledku toho vzhled výstupních souborů, například ve formátu PDF.

Pro správné rozdělení slov se používají slovní slovníky specifické pro jazyk. Aspose.Words používá pokročilé algoritmy pracovat s takovými slovníky a umožňuje získat stejné pomlčky jako v Microsoft Word.

## Slovníky hyfenace

Vzhledem k tomu, různé jazyky používají různé normy a pravidla pro slovní pomlčky, optimální řešení pro správné pomlčky je použít speciální slovníky. Aspose.Words používá slovníky OpenOffice.

Pro kontrolu pravopisu, OpenOffice používá [Hunspell knihovna](https://hunspell.github.io/), což je zobecnění pomlčky TeX. Tento algoritmus umožňuje automatické nestandardní pomlčky pomocí konkurenčních standardních a vlastních pomlček. Hunspell používá [Hyfen](https://github.com/hunspell/hyphen) pro pomlčku.

{{% alert color="primary" %}}

Hyfenační slovníky mohou být převzaty z [LibreOffice slovníky GitHub](https://github.com/LibreOffice/dictionaries). Například: [en-US pomlčka slovník](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Jako Microsoft Word používá slovníky jiné než OpenOffice slovníky k provedení pomlčky, pomlčka některých slov definovaných OpenOffice slovníky se může lišit od Microsoft Word Pomlčka. Z tohoto důvodu, někdy musíme poradit zákazníkům, aby přidali potřebné vzory do svých slovníků, aby bylo možné opravit pomlčku konkrétních slov.

{{% /alert %}}

## Algoritmus hyfenace

Aspose.Words nástroje [algoritmus pomlčky TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) a může znovu použít OpenOffice pomlčky slovníky.

Následující vlastnosti Aspose.Words algoritmy by měly být zohledněny:

* Parametry hyfenace vzdálenosti (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOULLFTHYFENMIN, COMPOUNDRIGHTHYPHENMIN) uvedené ve slovníku pomlčky jsou ignorovány. Aspose.Words používá vlastní sadu parametrů vzdálenosti v závislosti na režimu kompatibility dokumentu.
* Pomlčka algoritmus v Aspose.Words Podpora [kompozitní pomlčka](https://github.com/hunspell/hyphen/blob/master/README.compound). Nicméně, Aspose.Words dělí sekvence znaků obsahující smíšené abecední a nealfabetické znaky do abecedních částí (slova) a pomlčí je samostatně.
  Všimněte si, že Microsoft Word logika pomlčky složených slov závisí na režimu kompatibility dokumentů.
* Pomlčka algoritmus v Aspose.Words neprovede [nestandardní pomlčka](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Nestandardní vzorce jsou ignorovány.

## Načítání slovníků hyfenace

Chcete-li použít funkci pomlčky, nejprve zaregistrujte slovník pomlčky. Následující příklad kódu ukazuje, jak načíst slovníky pomlček pro zadané jazyky ze souboru:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak načíst slovníky pomlčky pro daný jazyk z proudu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Dopad hyfenace na rozložení

Při vkládání textu do řádků, Aspose.Words kontroluje každé slovo, zda zcela zapadá do současné linie. Pokud je další slovo příliš dlouhé, aby se vešlo na konec řádku, ve výchozím nastavení Aspose.Words Přesune ji na začátek další řady místo pomlčky.

Nicméně, pomlčka funkce může být použita v Aspose.Words vložit pomlčky do slov k odstranění mezer v odůvodněném textu nebo k udržení rovnoměrné délky čáry v úzkých sloupcích. To může samozřejmě ovlivnit počet řádků a tím i počet stran. Jinými slovy, použití pomlčky funkce ovlivňuje rozložení dokumentu.

## Hyfenace a odůvodnění (H&J)

Microsoft Word má komplexní logiku pro výběr zlomového bodu, pokud je text oprávněný a pomlčka je povolena. Stručně řečeno, Microsoft Word může raději zmenšit nebo protáhnout prostory, aby se zabránilo pomlčka linie. S největší pravděpodobností tato logika je založena na [Knuthův článek](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words provádí vlastní H&J algoritmus, který dává stejný výsledek jako Microsoft Word a poskytuje identické přerušení řádku ve výstupním dokumentu.

## Viz také

* [Pomlčka knihovna](https://github.com/hunspell/hyphen/blob/master/README)
* [Nestandardní pomlčka](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatická nestandardní pomlčka v otevřené kanceláři](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
