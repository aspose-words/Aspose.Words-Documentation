---
title: FAQ
second_title: Aspose.Words místo .NET
articleTitle: Často kladené otázky Aspose.Words místo .NET
linktitle: Často kladené otázky Aspose.Words místo .NET
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words místo .NET odpovídá na nejčastěji kladené otázky. Naučte se tuto stránku rychle řešit svůj problém na obecné otázky nebo konkrétní témata."
weight: 75
url: /cs/net/faq/
timestamp: 2024-11-18-12-56-02
---

Tato stránka obsahuje odpovědi na nejčastěji kladené otázky. Prosím, naučte se aktuální stránku? snad to vám umožní vyřešit váš problém rychle.

Pokud jste nenašli odpověď na vaši otázku, můžete se zeptat na podpůrné fórum. Informace o tom, jak správně nahlásit svou otázku nebo problém, viz [Technická podpora](/words/cs/net/technical-support/) stránka.

{{% alert color="primary" %}}

Často kladené otázky jsou seskupeny podle tématu pro vaše pohodlí.

{{% /alert %}}

## Obecné

**Q: Co je? Aspose.Words?**

Aspose.Words místo .NET je třídní knihovna, která umožňuje aplikacím provádět širokou škálu úkolů zpracování dokumentů. S Aspose.Words místo .NET, můžete vytvářet, upravovat, převádět, renderovat a tisk dokumentů bez aplikací třetích stran.

Podrobnosti naleznete v naší dokumentaci.

------

**Q: Co to znamená "Aspose.Words nevyžaduje žádosti třetích stran"?**

Aspose.Words místo .NET nemusí instalovat žádné třetí strany aplikace nebo další softwarové balíčky pro práci. Stačí stáhnout a nainstalovat Aspose.Words jak je popsáno v [Instalace](/words/cs/net/installation/) článek a začít.

------

**Q: Jaké platformy Aspose.Words podporu?**

Aspose.Words místo .NET pokrývá většinu oblíbených vývojových prostředí a nástupišť. Její API lze použít pro vývoj aplikací pro širokou škálu operačních systémů, jako je Windows, Linux, a Mac OS, a různé platformy.

Podrobnosti viz [Přehled produktů](/words/cs/net/product-overview/) Strana a [Platformy a Interoperability](/words/net/platforms-and-interoperability/) sekce.

------

**Q: Jaké formáty dokumentů Aspose.Words podporu?**

Aspose.Words místo .NET podporuje většinu populárních formátů dokumentů, jako jsou DOC, DOCX, HTML, Markdown, PDF, XML a další.

Kompletní seznam podporovaných formátů můžete vidět na [Podporované formáty dokumentů](/words/cs/net/supported-document-formats/) stránka.

------

**Q: Jak to mám zkusit? Aspose.Words Volný?**

Můžete to udělat dvěma způsoby pomocí zkušební verze nebo 30-denní dočasné licence. Zkušební verze je stejná jako zakoupená, poskytuje plnou funkčnost produktu, ale přidává hodnoticí vodoznak na vrcholu dokumentu při načítání a ukládání a omezuje maximální velikost dokumentu na několik set odstavců. Dočasná licence vám umožňuje testovat Aspose.Words bez zkušebního omezení po dobu 30 dnů.

Viz [Licence a předplatné](/words/cs/net/licensing/) stránka pro více informací.

{{% alert color="primary" %}}

Můžete také vyzkoušet některé z nejpopulárnějších Aspose.Words funkce prostřednictvím [Aspose.Words zdarma online Aplikace](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Jak mohu koupit Aspose.Words?**

Koupit si Aspose.Words Licence, musíte jít do [Nákup](https://purchase.aspose.com/buy) stránka, vyberte "Aspose.Words" produkt a typ licence, která vám vyhovuje. Pak přidejte licenci do košíku a postupujte podle pokynů nákupního košíku.

Po zakoupení, požádat o licenci, jak je popsáno v [Koupená licence](/words/net/licensing/#purchased-license) sekce.

Podrobnosti o instalaci Aspose.Words lze číst na [Instalace](/words/cs/net/installation/) stránka.

------

**Q: Jak mohu získat podporu?**

Použijte zdarma technické fórum podpory. Podrobnosti o tom, jak správně nahlásit problém a co je třeba udělat před kontaktem na fórum, viz [Technická podpora](/words/cs/net/technical-support/) stránka.

## Předkládání dokumentu

{{% alert color="primary" %}}

Podrobnější informace o zobrazování najdete v [Renderování](/words/cs/net/rendering/) sekce dokumentace.

{{% /alert %}}

**Q: Proč se uspořádání a písma ve výstupním dokumentu liší od originálu?**

Písmo nemusí být k dispozici, nebo formát písma je podporován Microsoft Word ale není podporován Aspose.Words. Aspose.Words vystoupí [Manipulovat a nahradit TrueType písma](/words/cs/net/manipulating-and-substitution-truetype-fonts/).

Chcete-li zkontrolovat, zda písmo chybí:

* In Aspose.Words Použijte varování o nahrazení písma (podrobnosti viz sekce "Jak rozpoznat, že písmo bylo nahrazeno" [Manipulovat a nahradit TrueType písma](/words/cs/net/manipulating-and-substitution-truetype-fonts/) Článek).
* In Microsoft Word Otevřete dialogové okno Font Substitution (File → Options → Advanced → Font Substitution).

------

**Q: Kde mám ukládat písma pro ASP.NET Žádosti?**

In `APS.NET`, není přístup ke složce systémových písem ve střední důvěře. Uživatelé musí ukládat písma ve své vlastní složce.

------

**Q: Proč nefont záloha funguje na non-Windows platformy a znaky Unicode jsou nahrazeny .notdef glyph?**

Můžeme často vidět `.notdef` glyph místo nějaké Unicode postavy. To je obvykle krabice nebo otázka glyph.

To je proto, že Microsoft Kancelářské nastavení se volí ve výchozím nastavení a Microsoft Kancelářská písma nejsou k dispozici. Uživatelé musí nainstalovat Microsoft Kancelářská písma nebo změna nastavení záloh.

------

**Q: Proč by se mohl z nějakého důvodu chybně zobrazovat složitý text skriptu, jako je thajština nebo hebrejština, například nesprávné postavení diakritiky nebo nepřesné ligatury?**

Některá složitá písma skriptu vyžadují zpracování funkcí pokročilé typografie, aby je bylo možné správně zobrazit. Pokročilá typografie je vypnuta Aspose.Words ve výchozím nastavení. Uživatelé musí povolit pokročilou typografii s [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**Q: Potřebuji licenční soubory pro písma, která používám?**

Ano, máš. Proto při kopírování písem mějte na paměti, že většina písem je chráněna autorským právem. Najděte předem licence na písmo a ověřte, zda je lze volně převést na jiný stroj.

## Mníkovec bělolemý Mail Merge

{{% alert color="primary" %}}

Podrobnější informace o mail merge v [Mail Merge a podávání zpráv](/words/net/mail-merge-and-reporting/) sekce dokumentace.

{{% /alert %}}

**Q: Proč nejsou ve generovaném výstupu sloučená pole?**

Původní název pole sloučení zůstává stejný, aniž by byly nahrazeny požadovanými údaji ze zdroje dat, pak:

* Zkontrolujte, zda jsou data správně nahrávána do tabulek: nastavit [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) správně se všemi požadovanými primárními klíči a vztahy.
* Zkontrolujte, zda jsou pole sloučení správně pojmenována. Použijte [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) způsob, jak získat všechna jména polí sloučení a zajistit, aby název polí sloučení ve vaší šabloně odpovídal té ve vašem zdroji dat.

------

**Q: Proč výstup vnořeného sloučení nezobrazuje data z dětské tabulky pro první položku v základní tabulce, ale zobrazí všechny položky pro poslední položku v základní tabulce, ani ty, které s ní nejsou ve skutečnosti spojeny?**

To proto, že regiony sloučení v šabloně nejsou správně vytvořeny, které mohou všechny hnízdit mail merge Regiony, které přestanou nic vystavovat. • [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) otevírací značka a [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) zavírací značka musí odpovídat a musí být ve stejné řadě nebo buňce. Pokud například začnete hnízdit regiony sloučení v buňce tabulky, musíte oblast sloučení ukončit ve stejném řádku jako první buňka.

------

**Q: Proč každý záznam z rodičovského stolu zobrazuje každou položku v dětské tabulce, a to i ty, které s ní nejsou ve skutečnosti spojeny?**

To proto, že vztah mezi rodičovské a dětské tabulky nejsou nastaveny nebo jsou špatně nastaveny. Je nezbytné:

* Zajistit integritu údajů uvnitř **DataSet** a použijte **DataRelation** má za cíl reprezentovat vztah rodičů a dítěte mezi příslušnými datovými tabulkami.
* Zkontrolujte, jak nastavit vztahy s daty v Nestedu Mail Merge s regiony v článku [Mníkovec bělolemý Mail Merge s regiony](/words/net/nested-mail-merge-with-regions/).

------

**Q: Proč je výjimka: Systém. Spor Výjimkou: Toto omezení nemůže být povoleno, protože ne všechny hodnoty mají odpovídající mateřské hodnoty [65] při výkonu hnízda mail merge?**

To se stává, protože ne každý mateřský záznam má dětský záznam, takže váš zdroj dat neodpovídá následujícím kritériím: *každý řádek v základní tabulce by měl mít vztah jeden ku jedné s řádky dětské tabulky založený na primárních a zahraničních klíčích*.

Zakázat cizí klíčová omezení, když vytvoříte **DataRelation**.

## Připojit nebo vložit dokument

{{% alert color="primary" %}}

Podrobnější informace o programování naleznete v dokumentu [Programování s dokumenty](/words/cs/net/programming-with-documents/) sekce dokumentace.

{{% /alert %}}

**Q: Proč obsah připojený k dokumentu není uveden na stejné straně?**

Výsledek přílohy se objeví na samostatné stránce, protože rozdíl v [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) nastavení úseků, kde jsou dokumenty připojeny společně. Udělat identický **PageSetup** nastavení úseků, kde jsou dokumenty připojeny společně.

## Převést dokument

{{% alert color="primary" %}}

Podrobnější informace o převodu dokumentu naleznete v [Převést dokument](/words/cs/net/convert-a-document/) sekce dokumentace.

{{% /alert %}}

**Q: Jak převést PDF na Word?**

Je to velmi snadné, stačí načíst dokument do modelu a uložit jej do jakéhokoli podporovaného formátu.

Následující příklad kódu ukazuje proces převodu PDF souboru na DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**Q: Jak převést DOCX do PDF?**

Je to velmi snadné, stačí načíst dokument do modelu a uložit jej do jakéhokoli podporovaného formátu.

Následující příklad kódu ukazuje proces převodu DOCX souboru do PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipulujte s dokumentem

{{% alert color="primary" %}}

Podrobnější informace o programování naleznete v dokumentu [Programování s dokumenty](/words/cs/net/programming-with-documents/) sekce dokumentace.

{{% /alert %}}

**Q: Jak rozdělit stránku dokumentu na stránku?**

Aspose.Words umožňuje rozdělit vícestránkovou stránku dokumentu na stránku.

Následující příklad kódu ukazuje, jak rozdělit dokument a uložit každou stránku jako samostatný dokument:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**Q: Jak otevřít zašifrované** **Dokument?**

Můžete se pokusit otevřít zašifrovaný dokument bez hesla, což by mělo vést k výjimku.

Následující příklad kódu ukazuje, jak otevřít zašifrovaný dokument heslem:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**Q: Jak vytisknout dokument?**

Jen dva řádky kódu.

Následující příklad kódu ukazuje, jak tisknout dokument dvěma způsoby:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**Q: Jak upravit PDF dokument?**

Stačí načíst PDF do Aspose.Words model dokumentu a provést změny.

Následující příklad kódu ukazuje, jak upravit dokument:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**Q: Jak se používá Aspose.Words tro Docker?**

Podrobné odpovědi se dozvíte v článku [Jak spustit Aspose.Words tro Docker](/words/cs/net/how-to-run-aspose-words-in-docker/).
