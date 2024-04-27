---
title: Časté dotazy
second_title: Aspose.Words místo Java
articleTitle: Časté dotazy
linktitle: Časté dotazy
type: docs
description: "Aspose.Words místo Java odpovídá na nejčastěji kladené otázky. Naučte se tuto stránku rychle řešit svůj problém na obecné otázky nebo konkrétní témata."
weight: 75
url: /cs/java/faq/
---

Tato stránka obsahuje odpovědi na nejčastěji kladené otázky. Naučte se, prosím, aktuální stránku, možná to vám umožní vyřešit váš problém rychle.

Pokud jste nenašli odpověď na vaši otázku, můžete se zeptat na podpůrné fórum. Informace o tom, jak správně nahlásit svou otázku nebo problém, viz [Technická podpora](/words/cs/java/technical-support/) Strana.

{{% alert color="primary" %}}

Často kladené otázky jsou seskupeny podle tématu pro vaše pohodlí.

{{% /alert %}}

## Obecné

**Q: Co je? Aspose.Words?**

Aspose.Words místo Java je třídní knihovna, která umožňuje vašim aplikacím provádět širokou škálu úkolů zpracování dokumentů. S Aspose.Words místo Java, můžete vytvářet, upravovat, konvertovat, renderovat a tisk dokumentů bez aplikací třetích stran.

Podrobnosti naleznete v naší dokumentaci.

------

**Q: Co to znamená "Aspose.Words nevyžaduje žádosti třetích stran"?**

Aspose.Words místo Java nemusí instalovat žádné třetí strany aplikace nebo další softwarové balíčky pro práci. Stačí stáhnout a nainstalovat Aspose.Words jak je popsáno v [Instalace](/words/cs/java/installation/) článek a začít.

------

**Q: Jaké platformy Aspose.Words Podpora?**

Aspose.Words místo Java pokrývá většinu oblíbených vývojových prostředí a nástupišť. Jeho API lze použít k vývoji aplikací pro širokou škálu operačních systémů, jako je Windows, Linux, a Mac OS, a různé platformy.

Podrobnosti viz [Přehled produktů](/words/cs/java/product-overview/) Strana a [Platformy a Interoperability](/words/java/platforms-and-interoperability/) sekce.

------

**Q: Jaké formáty dokumentů Aspose.Words Podpora?**

Aspose.Words místo Java podporuje většinu populárních formátů dokumentů, jako je DOC, DOCX, HTML, Markdown, PDF, XML a další.

Kompletní seznam podporovaných formátů můžete vidět na [Podporované formuláře dokumentů](/words/cs/java/supported-document-formats/) Strana.

------

**Q: Jak to mám zkusit? Aspose.Words Volný?**

Můžete to udělat dvěma způsoby pomocí zkušební verze nebo 30-denní dočasné licence. Zkušební verze je stejná jako zakoupená, poskytuje plnou funkčnost produktu, ale přidává hodnoticí vodoznak na vrcholu dokumentu při načítání a ukládání a omezuje maximální velikost dokumentu na několik stovek odstavců. Dočasná licence umožňuje test Aspose.Words bez zkušebního omezení po dobu 30 dnů.

Viz [Licence a předplatn é](/words/cs/java/licensing/) stránka pro více informací.

{{% alert color="primary" %}}

Můžete také vyzkoušet některé z nejpopulárnějších Aspose.Words rysy prostřednictvím [Aspose.Words zdarma online Aplikace](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Jak mohu koupit Aspose.Words?**

Koupit si Aspose.Words Licence, musíte jít do [Nakup](https://purchase.aspose.com/buy) stránka, vyberte "Aspose.Words"produkt a typ licence, která vám vyhovuje. Pak přidejte licenci do košíku a postupujte podle pokynů nákupního košíku.

Po zakoupení, požádat o licenci, jak je popsáno v [Licence Koupená](/words/java/licensing/#purchased-license) sekce.

Podrobnosti o instalaci Aspose.Words lze číst na [Instalace](/words/cs/java/installation/) Strana.

------

**Q: Jak mohu získat podporu?**

Použijte zdarma technické fórum podpory. Podrobnosti o tom, jak správně nahlásit problém a co je třeba udělat před kontaktem na fórum, viz [Technická podpora](/words/cs/java/technical-support/) Strana.

## Předkládání dokumentu

{{% alert color="primary" %}}

Podrobnější informace o vykreslení najdete v [Renderování](/words/cs/java/rendering/) sekce dokumentace.

{{% /alert %}}

**Q: Proč se uspořádání a písma ve výstupním dokumentu liší od originálu?**

Písmo nemusí být k dispozici, nebo formát písma je podporován Microsoft Word ale nepodpoří Aspose.Words. Aspose.Words vystoupí [Manipulovat a Nahradit Pravda. Typ písma](/words/cs/java/manipulate-and-substitute-truetype-fonts/).

Chcete-li zkontrolovat, zda písmo chybí:

- In Aspose.Words Použijte varování o nahrazení písma (podrobnosti viz sekce "Jak rozpoznat, že písmo bylo nahrazeno" [Manipulovat a Nahradit Pravda. Typ písma](/words/cs/java/manipulate-and-substitute-truetype-fonts/) Článek).
- In Microsoft Word Otevřete dialogové okno Font Substitution (File → Options → Advanced → Font Substitution).

------

**Q: Proč nefont záloha funguje na non-Windows platformy a Unicode znaky se nahrazují .notdef glyph?**

Můžeme často vidět `.notdef` glyph místo nějaké Unicode postavy. To je obvykle krabice nebo otázka glyph.

To proto, že Microsoft Kancelářské nastavení je vybráno ve výchozím nastavení a Microsoft Kancelářská písma nejsou k dispozici. Uživatelé musí nainstalovat Microsoft Kancelářská písma nebo změna nastavení zálohy.

------

**Q: Proč by mohl být z nějakého důvodu nesprávně zobrazen složitý text skriptu, jako je thajština nebo hebrejština, například nesprávný postoj pro diakritiku nebo nepřesné ligatury?**

Některé složité písma skriptů vyžadují zpracování funkcí Advanced Typography, aby byly správně zobrazeny. Pokročilá typografie je vypnuta v Aspose.Words ve výchozím nastavení. Uživatelé musí povolit pokročilou typografii s [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Potřebuji licenční soubory pro písma, která používám?**

Ano, máš. Proto při kopírování písem mějte na paměti, že většina písem je chráněna autorským právem. Najděte předem licence na písmo a ověřte, zda je lze volně převést do jiného stroje.

## Mníkovec bělolemý Mail Merge

{{% alert color="primary" %}}

Podrobnější informace o mail merge v [Mail Merge a využití prostředků](/words/java/mail-merge-and-reporting/) sekce dokumentace.

{{% /alert %}}

**Q: Proč nejsou ve generovaném výstupu sloučená pole?**

Původní název pole sloučení zůstává stejný, aniž by byly nahrazeny požadovanými údaji ze zdroje dat, pak:

- Zkontrolujte, zda jsou data správně načítána do tabulek: [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) správně se všemi požadovanými primárními klíči a vztahy.
- Zkontrolujte, zda jsou pole sloučení správně pojmenována. Použijte [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) způsob, jak získat všechna jména polí sloučení a zajistit, že název polí sloučení ve vaší šabloně odpovídá té ve vašem zdroji dat.

------

**Q: Proč výstup vnořeného sloučení nezobrazuje data z dětské tabulky pro první položku v základní tabulce, ale zobrazí všechny položky pro poslední položku v základní tabulce, a to ani ty, které s ní nejsou ve skutečnosti spojeny?**

To proto, že regiony sloučení v šabloně nejsou správně vytvořeny, což může všechny hnízdit mail merge regiony, které přestanou vůbec nic vystavovat. The [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) otevírací značka a [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) zavírací značka musí odpovídat a musí být ve stejné řadě nebo buňce. Pokud například začnete hnízdit regiony sloučení v buňce tabulky, musíte oblast sloučení ukončit ve stejném řádku jako první buňka.

------

**Q: Proč každý záznam z rodičovského stolu zobrazuje každou položku v dětské tabulce, a to i ty, které s ní nejsou ve skutečnosti spojeny?**

To proto, že vztah mezi rodičovské a dětské tabulky nejsou nastaveny nebo jsou špatně nastaveny. Je nezbytné:

- Zajistit integritu údajů uvnitř **DataSet** a použijte **DataRelation** má za cíl reprezentovat vztah rodičů a dětí mezi příslušnými datovými tabulkami.
- Zkontrolujte sekci Jak nastavit datové vztahy v Nestedu Mail Merge s regiony v článku [Mníkovec bílý Mail Merge s regiony](/words/java/nested-mail-merge-with-regions/).

------

**Q: Proč je výjimka: systém. Spor Výjimka: Toto omezení nemůže být povoleno, protože ne všechny hodnoty mají odpovídající základní hodnoty [65] při provádění hnízda mail merge?**

To se stává, protože ne každý mateřský záznam má dětský záznam, takže váš zdroj dat neodpovídá následujícím kritériím: *každý řádek v rodičovské tabulce by měl mít vztah jeden k jednomu s řádky dětského stolu na základě primárních a cizích klíčů*.

Zakázat cizí klíčová omezení, když vytvoříte **DataRelation**.

## Přidání nebo vložení dokumentu

{{% alert color="primary" %}}

Podrobnější informace o programování naleznete v dokumentu [Programování s dokumenty](/words/cs/java/programming-with-documents/) sekce dokumentace.

{{% /alert %}}

**Q: Proč obsah připojený k dokumentu není uveden na stejné straně?**

Výsledek přílohy se objeví na samostatné stránce, protože rozdíl v [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) nastavení úseků, kde jsou dokumenty připojeny společně. Udělat identický **PageSetup** nastavení úseků, kde jsou dokumenty připojeny společně.

## Převést dokument

{{% alert color="primary" %}}

Podrobnější informace o převodu dokumentu naleznete v [Převést dokument](/words/cs/java/convert-a-document/) sekce dokumentace.

{{% /alert %}}

**Q: Jak převést DOCX do PDF?**

Je to velmi snadné, stačí načíst dokument do modelu a uložit jej do jakéhokoli podporovaného formátu.

Následující příklad kódu ukazuje proces převodu DOCX souboru do PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipulujte s dokumentem

{{% alert color="primary" %}}

Podrobnější informace o programování naleznete v dokumentu [Programování s dokumenty](/words/cs/java/programming-with-documents/) sekce dokumentace.

{{% /alert %}}

**Q: Jak rozdělit stránku dokumentu na stránku?**

Aspose.Words umožňuje rozdělit vícestránkovou stránku dokumentu na stránku.

Následující příklad kódu ukazuje, jak rozdělit dokument a uložit každou stránku jako samostatný dokument:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q: Jak otevřít zašifrované** **Dokument?**

Můžete se pokusit otevřít zašifrovaný dokument bez hesla, což by mělo vést k výjimku.

Následující příklad kódu ukazuje, jak otevřít zašifrovaný dokument heslem:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**Q: Jak vytisknout dokument?**

Podrobnou odpověď najdete v článku [Tisk dokumentu Programově nebo pomocí dialogů](/words/cs/java/print-a-document-programmatically-or-using-dialogs/).
