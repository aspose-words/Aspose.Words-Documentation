---
title: Stavitel dokumentů Přehled v C#
second_title: Aspose.Words místo .NET
articleTitle: Přehled stavitelů dokumentů
linktitle: Přehled stavitelů dokumentů
type: docs
description: "DocumentBuilder umožňuje vytvářet dynamické dokumenty od nuly nebo přidávat nové prvky k existujícím pomocí C#. DokumentBuilder poskytuje metody pro vložení textu, zaškrtávacích boxů, tabulek, obrázků a dalších prvků obsahu v .NET."
weight: 30
url: /cs/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) je mocná třída, která spolupracuje s [Document](https://reference.aspose.com/words/net/aspose.words/document/) a umožňuje vytvářet dynamické dokumenty od nuly nebo přidávat nové prvky k existujícímu.

**DocumentBuilder** poskytuje metody pro vložení textu, checkboxů, ole objektů, odstavců, seznamů, tabulek, obrázků a dalších prvků obsahu. Umožňuje zadat písma, odstavec nebo oddíl formátování a provádět další operace.

## Stavitel dokumentů nebo Aspose.Words DOM

**DocumentBuilder** doplňuje třídy a metody dostupné v Aspose.Words Document Object Model (DOM) zjednodušit nejčastější úkoly budování dokumentů. To znamená, že můžete vytvářet a upravovat obsah dokumentů jak prostřednictvím Aspose.Words DOM, který vyžaduje dobré pochopení struktury stromu a pomocí DocumentBuilder. • `DocumentBuilder` je "fasáda" pro komplex **Document** struktura, která vám umožní rychle a snadno vložit obsah a formátování.

Operace, které jsou možné s **DocumentBuilder** jsou také možné při použití tříd Aspose.Words DOM přímo. Nicméně při použití Aspose.Words DOM třídy přímo obvykle vyžadují více řádků kódu než použití **DocumentBuilder**.

## Navigace dokumentů

Navigace dokumentů je založena na konceptu virtuálního kurzoru, se kterým se můžete přesunout na jiné místo v dokumentu pomocí různých **DocumentBuilder.MoveToXXX** metody, jako jsou [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) a [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Tento virtuální kurzor označuje, kde bude text vložen při volání metod [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/), a další. Viz následující článek "Navigace s kurzorem" se dozvíte více o virtuálním kurzoru.

Následující příklad kódu ukazuje, jak přejít na záložku:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Budova dokumentů a modifikace

Aspose.Words API poskytuje několik tříd, které jsou odpovědné za formátování různých prvků dokumentu. Každá z tříd zapouzdřuje vlastnosti formátování týkající se konkrétního prvku dokumentu, jako je text, odstavec, oddíl a další. Například: [Font](https://reference.aspose.com/words/net/aspose.words/font/) třída představuje vlastnosti formátování znaků, [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) třída představuje vlastnosti formátování odstavce a tak dále. Předměty těchto tříd vrací odpovídající **DocumentBuilder** vlastnosti, které mají stejné názvy jako třídy. Proto se k nim můžete dostat a během sestavení dokumentu nastavit požadované formátování.

Můžete také vložit text, checkbox, ole objekt, obrázky, záložky, formulářová pole a další prvky dokumentu na pozici kurzoru pomocí `Write` nebo **DocumentBuilder.InsertXXX** metody, například [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/), a podobné metody.

Podívejme se, jak vytvořit jednoduchý dokument pomocí **DocumentBuilder**.

### Vytvořit dokument pomocí nástroje DokumentBuilder

Pro začátek musíte vytvořit **DocumentBuilder** a přidruž ji k **Document** objekt. Vytvoříte nový příklad **DocumentBuilder** tím, že volá jeho konstruktor a předat jej do **Document** objekt pro připojení ke staviteli.

Chcete-li vložit text, přejděte řetězec textu, který musíte vložit do dokumentu **Write** metoda.

Následující příklad kódu ukazuje, jak vytvořit jednoduchý dokument pomocí stavitele dokumentů.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Upřesnit formát dokumentu

• [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) vlastnost definuje formátování textu. Tento objekt obsahuje různé atributy písma (název fontu, velikost písma, barva atd.). Některé důležité atributy písma jsou také reprezentovány **DocumentBuilder** vlastnosti, které vám umožní přístup přímo. Tohle jsou [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/), a [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) Booleovské vlastnosti.

Následující příklad kódu ukazuje, jak vložit formátovaný text **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) určuje formát znaků, který bude aplikován na všechny texty vložené od aktuální polohy v dokumentu dále.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) určuje formátování odstavce pro aktuální a všechny odstavce, které mají být vloženy.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) určuje vlastnosti stránky a sekce pro aktuální sekci a celou sekci, která bude vložena.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) a [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) specifikovat vlastnosti formátování, které budou aplikovány na buňky tabulky a řádky od aktuální polohy v dokumentu dále.

V této situaci se "aktuálním" rozumí poloha, odstavec, oddíl, buňka nebo řádek, ve kterém je kurzor.

{{% /alert %}}

{{% alert color="primary" %}}

Všimněte si, že **Font**, **ParagraphFormat**, a **PageSetup** vlastnosti jsou aktualizovány pokaždé, když přejdete na jiné místo v dokumentu, aby odrážely vlastnosti formátování tohoto umístění.

{{% /alert %}}
