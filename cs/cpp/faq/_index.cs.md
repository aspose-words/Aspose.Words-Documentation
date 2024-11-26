---
title: FAQ
second_title: Aspose.Words pro C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words pro C++ odpovídá na Nejčastěji kladené otázky. Naučte se tuto stránku a rychle vyřešte svůj problém v obecných otázkách nebo konkrétních tématech."
weight: 75
url: /cs/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Tato stránka obsahuje odpovědi na Nejčastěji kladené otázky. Naučte se aktuální stránku - možná vám to umožní rychle vyřešit váš problém.

Pokud jste nenašli odpověď na svou otázku, můžete se zeptat na fóru podpory. Informace o tom, jak správně nahlásit svůj dotaz nebo problém, naleznete v části [podpora](/words/cpp/technical-support/) stránka.

{{% alert color="primary" %}}

Často kladené otázky jsou pro vaše pohodlí seskupeny podle témat.

{{% /alert %}}

## Obecná

**Otázka: co je Aspose.Words?**

Aspose.Words pro C++ je knihovna tříd, která umožňuje vašim aplikacím provádět širokou škálu úloh zpracování dokumentů. S Aspose.Words pro C++ můžete vytvářet, upravovat, převádět, vykreslovat a tisknout dokumenty bez aplikací třetích stran.

Podrobnosti naleznete v naší dokumentaci.

------

**Otázka: co to znamená "Aspose.Words nevyžaduje aplikace třetích stran"?**

Aspose.Words pro C++ není nutné instalovat žádné aplikace třetích stran nebo další softwarové balíčky, aby fungovaly. Stačí stáhnout a nainstalovat Aspose.Words, Jak je popsáno v ["Instalace"](/words/cpp/installation/) článek a začněte.

------

**Otázka: jaké platformy podporuje Aspose.Words?**

Aspose.Words pro C++ pokrývá většinu populárních vývojových prostředí a platforem pro nasazení. Jeho API lze použít k vývoji aplikací pro širokou škálu operačních systémů, jako jsou Windows, Linux a Mac OS, a různé platformy.

Podrobnosti viz [Přehled Produktů](/words/cpp/product-overview/) stránka.

------

**Otázka: Jaké formáty dokumentů podporuje Aspose.Words?**

Aspose.Words pro C++ podporuje většinu populárních formátů dokumentů, jako jsou DOC, DOCX, HTML, Markdown, PDF, XML, a další.

Můžete vidět kompletní seznam podporovaných formátů na [Podporované Formáty Dokumentů](/words/cpp/supported-document-formats/) stránka.

------

**Otázka: Jak mohu vyzkoušet Aspose.Words Zdarma?**

Můžete to udělat dvěma způsoby – pomocí zkušební verze nebo 30denní dočasné licence. Zkušební verze je stejná jako zakoupená, poskytuje plnou funkčnost produktu, ale při načítání a ukládání přidává hodnotící vodoznak v horní části dokumentu a omezuje maximální velikost dokumentu na několik set odstavců. Dočasná licence vám umožňuje testovat Aspose.Words bez zkušebních omezení po dobu 30 dnů.

Podívejte se na [Licence a Předplatné](/words/cpp/licensing/) stránka pro více informací.

{{% alert color="primary" %}}

Můžete také vyzkoušet některé z nejpopulárnějších funkcí Aspose.Words prostřednictvím [Aspose.Words online aplikace zdarma](https://products.aspose.app/words).

{{% /alert %}}

------

**Otázka: Jak mohu koupit Aspose.Words?**

Chcete-li si koupit licenci Aspose.Words, musíte přejít na [Nákup](https://purchase.aspose.com/buy) stránku, vyberte produkt" Aspose.Words " a typ licence, který vám vyhovuje. Poté přidejte licenci do košíku a postupujte podle pokynů v nákupním košíku.

Po zakoupení, požádat o licenci, jak je popsáno v [Zakoupená Licence](/words/cpp/licensing/#purchased-license) oddíl.

Podrobnosti o instalaci Aspose.Words lze přečíst na [Instalace](/words/cpp/installation/) stránka.

------

**Otázka: Jak mohu získat podporu?**

Využijte bezplatné fórum technické podpory. Podrobnosti o tom, jak správně nahlásit problém a co je třeba udělat před kontaktováním fóra, naleznete v části [podpora](/words/cpp/technical-support/) stránka.

## Vykreslení dokumentu

{{% alert color="primary" %}}

Podrobnější informace o Vykreslování naleznete v [Vykreslování](/words/cpp/rendering/) sekce dokumentace.

{{% /alert %}}

**Otázka: Proč se rozložení a písma ve výstupním dokumentu liší od originálu?**

Písmo nemusí být k dispozici nebo formát písma je podporován Microsoft Word, ale není podporován Aspose.Words. Aspose.Words vystoupí [nahrazení písma](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Chcete-li zkontrolovat, zda písmo chybí:

- V Aspose.Words Použijte varování o nahrazení písma (podrobnosti najdete v části " Jak rozpoznat, že písmo bylo nahrazeno [Manipulovat a nahrazovat TrueType fonty](/words/cpp/manipulate-and-substitute-truetype-fonts/) článek).
- V Microsoft Word otevřete dialogové okno "nahrazení písma" (soubor → Možnosti → Upřesnit → nahrazení písma).

------

**Otázka: Proč nefunguje záložní písmo na platformách jiných nežWindows a znaky Unicode jsou nahrazeny.notdef glyf?**

Často můžeme vidět `.notdef` glyf místo nějakého znaku Unicode. To je obvykle box nebo otázka glyf.

Je to proto, že ve výchozím nastavení jsou vybrána záložní nastavení sady Microsoft a písma sady Microsoft nejsou k dispozici. Uživatelé musí nainstalovat Microsoft kancelářská písma nebo změnit záložní nastavení.

------

**Otázka: proč může být složitý text skriptu, jako je thajština nebo hebrejština, z nějakého důvodu zobrazen nepřesně, jako je nesprávná pozice pro diakritiku nebo nepřesné ligatury?**

Některá složitá písma skriptů vyžadují zpracování pokročilých typografických funkcí, aby byla správně zobrazena. Pokročilá typografie je ve výchozím nastavení zakázána v Aspose.Words. Uživatelé musí povolit pokročilou typografii pomocí [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**Otázka: Potřebuji licenční soubory pro písma, která používám?**

Ale máš. Při kopírování písem proto mějte na paměti, že většina písem je chráněna autorskými právy. Předem vyhledejte Licence písem a ověřte, zda je lze volně přenést na jiný počítač.

## Přidání nebo vložení dokumentu

{{% alert color="primary" %}}

Podrobnější informace o programování s dokumenty najdete v [Programování s dokumenty](/words/cpp/programming-with-documents/) sekce dokumentace.

{{% /alert %}}

**Otázka: Proč se obsah připojený k dokumentu nezobrazuje na stejné stránce?**

Výsledek připojit se zobrazí na samostatné stránce kvůli rozdílu v nastavení [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) pro sekce, kde jsou dokumenty připojeny dohromady. Proveďte identická nastavení **PageSetup** pro sekce, kde jsou dokumenty spojeny dohromady.

## Převést dokument

{{% alert color="primary" %}}

Podrobnější informace o převodu dokumentu najdete v [Převést dokument](/words/cpp/convert-a-document/) sekce dokumentace.

{{% /alert %}}

**Otázka: jak převést DOCX na PDF?**

Je to také velmi snadné, stačí nahrát dokument do modelu a uložit jej do libovolného podporovaného formátu.

Následující příklad kódu ukazuje proces převodu souboru DOCX na PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipulace s dokumentem

{{% alert color="primary" %}}

Podrobnější informace o programování s dokumenty najdete v [Programování s dokumenty](/words/cpp/programming-with-documents/) sekce dokumentace.

{{% /alert %}}

**Otázka: Jak rozdělit stránku dokumentu po stránce?**

Aspose.Words umožňuje rozdělit vícestránkový dokument stránku po stránce.

Následující příklad kódu ukazuje, jak rozdělit dokument a uložit každou stránku jako samostatný dokument:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**Otázka: jak otevřít šifrovaný**

Můžete se pokusit otevřít šifrovaný dokument bez hesla, což by mělo vést k výjimce.

Následující příklad kódu ukazuje, jak otevřít šifrovaný dokument pomocí hesla:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
