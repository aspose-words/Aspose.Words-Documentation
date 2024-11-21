---
title: Práce s Hyfenation in Java
second_title: Aspose.Words místo Java
articleTitle: Práce s hyfenací
linktitle: Práce s hyfenací
description: "Používej pomlčku pro kompaktnější uspořádání textu. Poskytuje pokročilé algoritmy pro práci s pomlčkami slovníky, používá OpenOffice slovníky pomocí Java."
type: docs
weight: 220
url: /cs/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Někdy je nutné použít pomlčku pro kompaktnější uspořádání textu v dokumentu. Zároveň je důležité pochopit, že specifika slova pomlčka se mohou pro každý jazyk lišit.

V současné době se pomlčka nepoužívá tak často, jak bývala, zejména v anglických textech. Nicméně použití této funkce může mít vážný dopad na uživatelské dokumenty

Pro správné rozdělení slov se používají slovníky specifické pro jazyk. Aspose.Words používá pokročilé algoritmy pracovat s takovými slovníky a umožňuje získat stejné pomlčky jako v Microsoft Word.

## Slovníky hyfenace

Vzhledem k tomu, různé jazyky používají různé normy a pravidla pro slovní pomlčky, optimální řešení pro korektní pomlčky je použít speciální slovníky. Aspose.Words používá slovníky OpenOffice.

Pro kontrolu pravopisu, OpenOffice používá [Hunspell knihovna](https://hunspell.github.io/), což je zobecnění pomlčky TeX. Tento algoritmus umožňuje automatické nestandardní pomlčky pomocí konkurenčních standardních a vlastních pomlček. Hunspell používá [Hyfen](https://github.com/hunspell/hyphen) pro pomlčku.

{{% alert color="primary" %}}

Hyfenační slovníky mohou být převzaty z [LibreOffice slovenský GitHub](https://github.com/LibreOffice/dictionaries). Například, [en-US pomlčka slovensky](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Jako Microsoft Word používá slovníky jiné než OpenOffice slovníky k provádění pomlčky, pomlčka některých slov definované OpenOffice slovníky se mohou lišit od Microsoft Word Pomlčka. Z tohoto důvodu, někdy musíme poradit zákazníkům, aby přidali potřebné vzory do svých slovníků, aby bylo možné opravit pomlčku konkrétních slov.

{{% /alert %}}

## Algoritmus hyfenace

Aspose.Words nástroje [algoritmus pomlčky TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) a může znovu použít pomlčky OpenOffice.

Následující vlastnosti Aspose.Words algoritmy by měly být zohledněny:

* Parametry hyfenační vzdálenosti (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOULLEFTHYFENMIN, COMPOUNDRIGHTHYPHENMIN) uvedené ve slovníku pomlčky jsou ignorovány. Aspose.Words používá vlastní sadu parametrů vzdálenosti v závislosti na režimu kompatibility dokumentu.
* Pomlčka algoritmus v Aspose.Words Podpora [Kompozitní pomlčka](https://github.com/hunspell/hyphen/blob/master/README.compound). Nicméně, Aspose.Words dělí znakové sekvence obsahující smíšené abecední a nealfabetické znaky do abecedních částí (slova) a pomlčí je samostatně.
  Všimněte si, že Microsoft Word logika pomlčky složených slov závisí na režimu kompatibility dokumentů.
* Pomlčka algoritmus v Aspose.Words neprovede [nestandardní pomlčka](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Nestandardní vzorce jsou ignorovány.

## Načítání slovníků hyfenace

Chcete-li použít funkci pomlčky, nejprve zaregistrujte pomlčovací slovník. Následující příklad kódu ukazuje, jak načíst slovníky pomlčky pro zadané jazyky ze souboru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak načíst slovníky pomlčky pro daný jazyk z proudu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Jako alternativa k předregistrační pomlčky slovníků, je možné zaregistrovat pouze požadované pomlčky slovníky? podle požadavku? Aby toho bylo dosaženo, implementujte [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) rozhraní a použití statického zpětného volání [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Následující příklad kódu ukazuje, jak provést **IHyphenationCallback** rozhraní:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Dopad hyfenace na rozložení

Při vkládání textu do řádků, Aspose.Words kontroluje každé slovo, zda zcela zapadá do aktuální linie. Pokud je další slovo příliš dlouhé, aby se vešlo na konec řádku, ve výchozím nastavení Aspose.Words Přesune ji na začátek další řady místo pomlčky.

Nicméně, pomlčka funkce může být použita v Aspose.Words vložit pomlčky do slov k odstranění mezer v odůvodněném textu nebo k udržení rovnoměrné délky čáry v úzkých sloupcích. To může samozřejmě ovlivnit počet řádků a tím i počet stran. Jinými slovy, použití pomlčky funkce ovlivňuje rozložení dokumentu.

## Hyfenace a odůvodnění (H&J)

Microsoft Word má komplexní logiku pro výběr zlomového bodu, pokud je text oprávněný a pomlčka je povolena. Stručně řečeno, Microsoft Word může raději zmenšit nebo protáhnout prostory, aby se zabránilo pomlčka linie. S největší pravděpodobností tato logika je založena na [Knuthův článek](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words provádí vlastní H&J algoritmus, který dává stejný výsledek jako Microsoft Word a poskytuje identické přerušení řádku ve výstupním dokumentu.

## Viz také

* [Pomlčka knihovna](https://github.com/hunspell/hyphen/blob/master/README)
* [Nestandardní pomlčka](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatická nestandardní pomlčka v otevřené kanceláři](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
