---
title: Stavitel dokumentů Přehled v Java
second_title: Aspose.Words místo Java
articleTitle: Přehled stavitelů dokumentů
linktitle: Přehled stavitelů dokumentů
type: docs
description: "DokumentBuilder umožňuje vytvářet dynamické dokumenty od nuly nebo přidávat nové prvky k existujícím. DokumentBuilder poskytuje metody pro vložení textu, zaškrtávacích boxů, tabulek, obrázků a dalších prvků obsahu v Java."
weight: 30
url: /cs/java/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) je mocná třída, která se spojuje s [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) a umožňuje vytvářet dynamické dokumenty od nuly nebo přidávat nové prvky k existujícímu.

**DocumentBuilder** poskytuje metody pro vložení textu, zaškrtávacích boxů, ole objektů, odstavců, seznamů, tabulek, obrázků a dalších prvků obsahu. Umožňuje zadat písma, odstavec nebo oddíl formátování a provádět další operace.

## Stavitel dokumentů nebo Aspose.Words DOM

**DocumentBuilder** doplňuje třídy a metody dostupné v Aspose.Words Document Object Model (DOM) zjednodušit nejčastější úkoly budování dokumentů. To znamená, že můžete vytvořit a upravit obsah dokumentů jak prostřednictvím Aspose.Words DOM, který vyžaduje dobré pochopení struktury stromu, a pomocí DocumentBuilder. The `DocumentBuilder` je "fasáda" pro komplex **Document** struktura, která vám umožní rychle a snadno vložit obsah a formátování.

Operace, které jsou možné s **DocumentBuilder** jsou také možné při použití tříd Aspose.Words DOM přímo. Použití Aspose.Words DOM třídy přímo obvykle vyžadují více řádků kódu než použití **DocumentBuilder**.

## Navigace dokumentů

Navigace dokumentů je založena na konceptu virtuálního kurzoru, se kterým se můžete přesunout na jiné místo v dokumentu pomocí různých **DocumentBuilder.MoveToXXX** metody, jako jsou [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) a [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Tento virtuální kurzor označuje, kde bude text vložen při volání metod [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), a další. Viz následující článek "Navigace s kurzorem" se dozvíte více o virtuálním kurzoru.

Následující příklad kódu ukazuje, jak přejít na záložku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Budování dokumentů a modifikace

Aspose.Words API poskytuje několik tříd, které jsou odpovědné za formátování různých prvků dokumentu. Každá z tříd zapouzdřuje vlastnosti formátování týkající se konkrétního prvku dokumentu, jako je text, odstavec, oddíl a další. Například: [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) třída představuje vlastnosti formátování znaků, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) třída představuje vlastnosti formátování odstavce a tak dále. Předměty těchto tříd vrací odpovídající **DocumentBuilder** vlastnosti, které mají stejné názvy jako třídy. Proto se k nim můžete dostat a během sestavení dokumentu nastavit požadované formátování.

Můžete také vložit text, zaškrtávačku, ole objekt, obrázky, záložky, formulářová pole a další prvky dokumentu na pozici kurzoru pomocí `Write` nebo **DocumentBuilder.InsertXXX** metody, jako jsou [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), a podobné metody.

Podívejme se, jak vytvořit jednoduchý dokument pomocí **DocumentBuilder**.

### Vytvořit dokument pomocí nástroje DokumentBuilder

Pro začátek musíte vytvořit **DocumentBuilder** a přidruž ji k **Document** objekt. Vytvoříte nový příklad **DocumentBuilder** tím, že volá jeho konstruktor a předat jej do **Document** objekt pro připojení ke staviteli.

Chcete-li vložit text, přejděte řetězec textu musíte vložit do dokumentu **Write** metoda.

Následující příklad kódu ukazuje, jak vytvořit jednoduchý dokument pomocí stavitele dokumentů.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Upřesnit formát dokumentu

The [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) vlastnost definuje formátování textu. Tento objekt obsahuje různé atributy písma (název fontu, velikost písma, barva atd.). Některé důležité atributy písma jsou také reprezentovány **DocumentBuilder** vlastnosti, které vám umožní přístup přímo. Toto jsou [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), a [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) Booleovské vlastnosti.

Následující příklad kódu ukazuje, jak vložit formátovaný text **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) určuje formát znaků, který bude použit pro všechny texty vložené od aktuální polohy v dokumentu dále.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) určuje formátování odstavce pro aktuální a všechny odstavce, které mají být vloženy.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) určuje vlastnosti stránky a sekce pro aktuální sekci a celou část, která bude vložena.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) a [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) specifikovat vlastnosti formátování, které budou použity pro buňky tabulky a řádky od aktuální polohy v dokumentu dále.

V této situaci se "aktuálem" rozumí poloha, odstavec, oddíl, buňka nebo řádek, ve kterém je kurzor.

{{% /alert %}}

{{% alert color="primary" %}}

Všimněte si, že **Font**, **ParagraphFormat**, a **PageSetup** vlastnosti jsou aktualizovány pokaždé, když přejdete na jiné místo v dokumentu, aby odrážely vlastnosti formátování tohoto umístění.

{{% /alert %}}
