---
title: Stavitel dokumentů Přehled v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Přehled stavitelů dokumentů
linktitle: Přehled stavitelů dokumentů
type: docs
description: "DocumentBuilder umožňuje vytvářet dynamické dokumenty od nuly nebo přidávat nové prvky k existujícím pomocí Python. DokumentBuilder poskytuje metody pro vložení textu, zaškrtávacích boxů, tabulek, obrázků a dalších prvků obsahu v Python."
weight: 30
url: /cs/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) je mocná třída, která spolupracuje s [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) a umožňuje vytvářet dynamické dokumenty od nuly nebo přidávat nové prvky k existujícímu.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) poskytuje metody pro vložení textu, checkboxů, ole objektů, odstavců, seznamů, tabulek, obrázků a dalších prvků obsahu. Umožňuje zadat písma, odstavec nebo oddíl formátování a provádět další operace.

## Stavitel dokumentů nebo Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) doplňuje třídy a metody dostupné v Aspose.Words Document Object Model (DOM) zjednodušit nejčastější úkoly budování dokumentů. To znamená, že můžete vytvářet a upravovat obsah dokumentů jak prostřednictvím Aspose.Words DOM, který vyžaduje dobré pochopení struktury stromu a pomocí DocumentBuilder. • `DocumentBuilder` je "fasáda" pro komplex **Document** struktura, která vám umožní rychle a snadno vložit obsah a formátování.

Operace, které jsou možné s [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) jsou také možné při použití tříd Aspose.Words DOM přímo. Nicméně při použití Aspose.Words DOM třídy přímo obvykle vyžadují více řádků kódu než použití [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Navigace dokumentů

Navigace dokumentů je založena na konceptu virtuálního kurzoru, se kterým se můžete přesunout na jiné místo v dokumentu pomocí různých **DokumentBuilder.move_to_XX** metody, jako jsou [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) a [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Tento virtuální kurzor označuje, kde bude text vložen při volání metod [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), a další. Viz následující článek "Navigace s kurzorem" se dozvíte více o virtuálním kurzoru.

Následující příklad kódu ukazuje, jak přejít na záložku:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Budova dokumentů a modifikace

Aspose.Words API poskytuje několik tříd, které jsou odpovědné za formátování různých prvků dokumentu. Každá z tříd zapouzdřuje vlastnosti formátování týkající se konkrétního prvku dokumentu, jako je text, odstavec, oddíl a další. Například: [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) třída představuje vlastnosti formátování znaků, [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) třída představuje vlastnosti formátování odstavce a tak dále. Předměty těchto tříd vrací odpovídající [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) vlastnosti, které mají stejné názvy jako třídy. Proto se k nim můžete dostat a během sestavení dokumentu nastavit požadované formátování.

Můžete také vložit text, checkbox, ole objekt, obrázky, záložky, formulářová pole a další prvky dokumentu na pozici kurzoru pomocí `Write` nebo **DokumentBuilder. vložit_XXX** metody, například [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), a podobné metody.

Podívejme se, jak vytvořit jednoduchý dokument pomocí [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Vytvořit dokument pomocí nástroje DokumentBuilder

Pro začátek musíte vytvořit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) a přidruž ji k [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) objekt. Vytvoříte nový příklad [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) tím, že volá jeho konstruktor a předat jej do [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) objekt pro připojení ke staviteli.

Chcete-li vložit text, přejděte řetězec textu, který musíte vložit do dokumentu [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) metoda.

Následující příklad kódu ukazuje, jak vytvořit jednoduchý dokument pomocí stavitele dokumentů.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Upřesnit formát dokumentu

• [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) vlastnost definuje formátování textu. Tento objekt obsahuje různé atributy písma (název fontu, velikost písma, barva atd.). Některé důležité atributy písma jsou také reprezentovány [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) vlastnosti, které vám umožní přístup přímo. Tohle jsou [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), a [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) Booleovské vlastnosti.

Následující příklad kódu ukazuje, jak vložit formátovaný text [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) určuje formát znaků, který bude aplikován na všechny texty vložené od aktuální polohy v dokumentu dále.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) určuje formátování odstavce pro aktuální a všechny odstavce, které mají být vloženy.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) určuje vlastnosti stránky a sekce pro aktuální sekci a celou sekci, která bude vložena.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) a [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) specifikovat vlastnosti formátování, které budou aplikovány na buňky tabulky a řádky od aktuální polohy v dokumentu dále.

V této situaci se "aktuálním" rozumí poloha, odstavec, oddíl, buňka nebo řádek, ve kterém je kurzor.

{{% /alert %}}

{{% alert color="primary" %}}

Všimněte si, že [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), a [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) vlastnosti jsou aktualizovány pokaždé, když přejdete na jiné místo v dokumentu, aby odrážely vlastnosti formátování tohoto umístění.

{{% /alert %}}
