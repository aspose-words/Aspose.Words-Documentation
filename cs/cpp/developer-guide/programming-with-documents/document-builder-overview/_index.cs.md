---
title: Přehled nástroje pro tvorbu dokumentů v C++
second_title: Aspose.Words pro C++
articleTitle: Přehled Nástroje Pro Tvorbu Dokumentů
linktitle: Přehled Nástroje Pro Tvorbu Dokumentů
type: docs
description: "DocumentBuilder umožňuje vytvářet dynamické dokumenty od nuly nebo přidávat nové prvky k existujícím pomocí C++. DocumentBuilder poskytuje metody pro vložení textu, checkboxes, tabulek, obrázků a dalších prvků obsahu do C++."
weight: 30
url: /cs/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) je výkonná třída, která se přidružuje k [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) a umožňuje vytvářet dynamické dokumenty od nuly nebo přidávat nové prvky do existujícího.

**DocumentBuilder**

## Tvůrce dokumentů nebo Aspose.Words DOM

**DocumentBuilder**

Operace, které jsou možné pomocí **DocumentBuilder**, jsou také možné při přímém použití tříd Aspose.Words DOM. Přímé použití tříd Aspose.Words DOM však obvykle vyžaduje více řádků kódu než použití **DocumentBuilder**.

## Navigace V Dokumentu

Navigace v dokumentu je založena na konceptu virtuálního kurzoru, pomocí kterého se můžete přesunout na jiné místo v dokumentu pomocí různých metod **DocumentBuilder.MoveToXXX**, například [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) a [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Tento virtuální kurzor označuje, kam bude text vložen při volání metod [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), a další.

Následující příklad kódu ukazuje, jak přejít na záložku:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Vytváření a úpravy dokumentů

Aspose.Words API poskytuje několik tříd, které jsou zodpovědné za formátování různých prvků dokumentu. Každá z tříd zapouzdřuje vlastnosti formátování související s konkrétním prvkem dokumentu, jako je text, odstavec, oddíl a další. Například třída [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) představuje vlastnosti formátování znaků, třída [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) představuje vlastnosti formátování odstavců atd. Objekty těchto tříd jsou vráceny odpovídajícími vlastnostmi **DocumentBuilder**, které mají stejné názvy jako třídy. Proto k nim můžete přistupovat a nastavit požadované formátování během vytváření dokumentu.

Můžete také vložit text, checkbox, objekt ole, obrázky, záložky, pole formuláře a další prvky dokumentu na pozici kurzoru pomocí metody `Write` nebo kterékoli z metod **DocumentBuilder.InsertXXX**, například [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) a podobných metod.

Podívejme se, jak vytvořit jednoduchý dokument pomocí **DocumentBuilder**.

### Vytvoření dokumentu pomocí DocumentBuilder

Chcete-li začít, musíte vytvořit **DocumentBuilder** a přiřadit jej k objektu **Document**. Novou instanci **DocumentBuilder** vytvoříte voláním jejího konstruktoru a předáním objektu **Document** pro připojení k staviteli.

Chcete-li vložit text, předejte řetězec textu, který potřebujete vložit do dokumentu, metodě **Write**.

Následující příklad kódu ukazuje, jak vytvořit jednoduchý dokument pomocí nástroje pro tvorbu dokumentů.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Určete Formátování Dokumentu

Vlastnost [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) definuje formátování textu. Tento objekt obsahuje různé atributy písma (název písma, velikost písma, barvu atd.). Některé důležité atributy písma jsou také reprezentovány vlastnostmi **DocumentBuilder**, které vám umožňují přímý přístup k nim. Jedná se o [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) a [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/) booleovské vlastnosti.

Následující příklad kódu ukazuje, jak vložit formátovaný text pomocí **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) určuje formátování znaků, které se použije na veškerý text vložený z aktuální pozice v dokumentu dále.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) určuje formátování odstavce pro aktuální a všechny odstavce, které mají být vloženy.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) určuje vlastnosti stránky a oddílu pro aktuální oddíl a celý oddíl, který bude vložen.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) a [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) určují vlastnosti formátování, které budou použity na buňky a řádky tabulky od aktuální pozice v dokumentu dále.

V této situaci "aktuální" znamená pozici, odstavec, sekci, buňku nebo řádek, ve kterém je kurzor.

{{% /alert %}}

{{% alert color="primary" %}}

Všimněte si, že vlastnosti **Font**, **ParagraphFormat** a **PageSetup** se aktualizují při každém přechodu do jiného umístění v dokumentu, aby odrážely vlastnosti formátování tohoto umístění.

{{% /alert %}}
