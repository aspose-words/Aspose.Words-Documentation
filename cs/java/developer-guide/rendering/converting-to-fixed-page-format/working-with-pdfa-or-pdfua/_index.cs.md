---
title: Práce s PDF/A nebo PDF/UA
second_title: Aspose.Words místo Java
articleTitle: Práce s PDF/A nebo PDF/UA
linktitle: Práce s PDF/A nebo PDF/UA
description: "Převést na PDF/A-1, PDF/A-2, PDF/A-4 a PDF/UA pomocí Java. Existuje několik problémů při konverzi na PDF / A dokumenty, a Aspose.Words místo Java Řeší je."
type: docs
weight: 28
url: /cs/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Formát PDF/A a PDF/UA ukládá několik požadavků týkajících se obsahu dokumentu, které nelze splnit při automatickém převodu z dokumentu ve formátu Word do PDF. Tyto požadavky by měly být ověřeny a opraveny buď v dokumentu Word před přeměnou, nebo v dokumentu PDF po konverzi, aby byl vytvořen plně vyhovující dokument PDF/A a PDF/UA.

Základními požadavky jsou struktura nebo písma dokumentu PDF/A a PDF/UA, o kterých budeme uvažovat v následujících oddílech.

{{% alert color="primary" %}}

Upozorňujeme, že výstup PDF/UA-1 bude také vyhovující WCAG 2.0 a Sekce 508.

{{% /alert %}}

## Požadavky na strukturu dokumentů

Aktuální požadavky jsou pro formáty PDF/A-1a, PDF/A-2a, PDF/A-4 a PDF/UA-1.

Existuje několik nuancí, jak Aspose.Words pracuje při převodu na různé standardy formátu PDF. Musí být zohledněny, pokud chcete získat očekávaný výsledek.

{{% alert color="primary" %}}

Všimněte si, že neexistují žádné logické požadavky na strukturu pro PDF/A-4. Z tohoto důvodu nepovažujeme verzi PDF/A-4 v této části "Požadavky na strukturu dokumentu."

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Pro spisovatele není vhodné vytvářet strukturální nebo sémantické informace pomocí automatizovaných procesů bez vhodného ověření.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Níže uvedené pododdíly popisují nuance jak Aspose.Words pracuje při převodu na různé standardy formátu PDF a možnosti jejich řešení.

### Typ struktury

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Dokument PDF je posloupnost bloků, jako jsou nadpisy, odstavce, tabulky a další. Tyto bloky tvoří strukturu dokumentu, silně nebo slabě.

Silné i slabé struktury platí pro PDF/A. Microsoft Word dokumenty mají podle návrhu slabou strukturu a Aspose.Words vytváří PDF se slabou strukturou a také generuje nadpisy podle obrysových úrovní odstavců ve zdrojovém dokumentu.

U dokumentu PDF/UA-1 se slabou strukturou se navíc vyžaduje, aby čísla záhlaví byla v pořádku bez mezer.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Struktura bloku může následovat jeden ze dvou hlavních parametrů:</p>
    </ol>
      <li>Silně strukturovaná. Seskupování prvků hnízdí na tolik úrovní, kolik je nutné, aby odrážely organizaci materiálu do článků, sekcí, pododdílů a tak dále. Na každé úrovni by se měly děti ve skupině skládat z čísla (H), jednoho nebo více odstavců (P) pro obsah na této úrovni a možná jednoho nebo více dalších skupinových prvků pro vnořené pododdíly.</li>
      <li>Slabě strukturované. Dokument je relativně plochý, má možná pouze jednu nebo dvě úrovně seskupování prvků, se všemi nadpisy, odstavci a jinými BLSE jako jejich bezprostřední děti. V tomto případě se organizace materiálu neodráží v logické struktuře; může však být vyjádřena použitím čísel se specifickými úrovněmi (H16/H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5.</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>U dokumentů PDF/UA-1 obsahuje specifikace doplněk týkající se úrovní nadpisu (expand to see details):</summary>
    <p></p>
    <p>Pokud sémantika dokumentu vyžaduje sestupnou posloupnost hlaviček, musí taková posloupnost postupovat v přísném číselném pořadí a nesmí přeskočit úroveň intervenující hlavičky. H1 H2 H3 je přípustné, zatímco H1 H3 není.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Aby uživatelé zajistili správný výstup, musí zajistit, aby byl obsah zdrojového dokumentu řádně organizován a aby byly správně specifikovány úrovně obrysů. Jinak by uživatel měl ověřit a opravit strukturu výstupního PDF dokumentu.

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak nastavit úroveň obrysu Microsoft Word nebo zkontrolujte a opravte strukturu výstupního PDF dokumentu (expand to see details).</summary>
    <p></p>
    <p>In Microsoft Word výchozí styl "Heading X" by mohl být použit pro nastavení úrovně obrysu:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Kromě toho lze úroveň obrysu zkontrolovat nebo změnit v okně "Paragraph":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>V Acrobatu by struktura dokumentu mohla být zkontrolována nebo změněna v tabulce "Štítky":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Označení obsahu jako artefakt

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

V tuto chvíli, Aspose.Words označuje hlavičky stránek a zápatí, oddělovače poznámek, opakované buňky hlavičky stolu a dekorativní obrazy jako artefakty. Všimněte si, že tento seznam může být v budoucnu aktualizován.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Grafické objekty v dokumentu lze rozdělit do dvou tříd:</p>
    </ol>
      <li>Skutečný obsah dokumentu zahrnuje předměty představující materiál původně zavedený autorem dokumentu.</li>
      <li>Artefakty jsou grafické objekty, které nejsou součástí původního obsahu autora, ale jsou generovány odpovídajícím spisovatelem v průběhu paganace, rozvržení nebo jiných čistě mechanických procesů.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Pokud dokument obsahuje jakýkoliv jiný obsah, který by měl být označen jako artefakt, nebo je-li některý z artefaktovaných obsah je skutečný obsah, zákazníci by měli opravit, že ve výstupní PDF.

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak označit tvary jako dekorativní Microsoft Word nebo označit tvar jako artefakt ve výstupním dokumentu PDF (expand to see details).</summary>
    <p></p>
    <p>Například tvary mohou být označeny jako dekorativní v Microsoft Word, takže budou vyvezeny do PDF jako artefakt:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Můžete označit tvar jako artefakt ve výstupní PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Také můžete přepnout text v záhlaví z artefaktu na skutečný obsah ve výstupním PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specifikace přirozeného jazyka

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Textový jazyk je uveden v Microsoft Word dokumenty. Aspose.Words exportuje uvedený jazyk do výstupního PDF s *Lang* atribut připojený k sekvenci označeného obsahu nebo značky Span, kterou ovládá [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) majetek. Obecně neexistují žádné jazykové problémy, když uživatel zadá text prostřednictvím Microsoft Word. Existuje však možnost, že jazyk může být nepřesný, pokud je text generován automaticky.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Výchozí přirozený jazyk pro všechny texty v souboru by měl být specifikován zápisem Lang do katalogového slovníku dokumentu.</p>
    <p>Veškerý textový obsah v souboru, který se liší od výchozího jazyka, by měl být uveden pomocí `Lang` vlastnost připojena k sekvenci označeného obsahu, nebo Lang záznam ve struktuře elementu slovníku ...</p>
    <p>ISO- 19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Navíc pro PDF/UA-1, specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Přirozený jazyk bude prohlášen... Musí být uvedeny změny přirozeného jazyka.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak zajistit, aby byl jazyk správně zadán (rozšiřte podrobnosti).</summary>
    <p></p>
    <p>Uživatelé by měli zajistit, aby byl jazyk správně uveden buď ve zdrojovém dokumentu Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Nebo výstupní PDF dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Titulek obrázku

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word Dokumenty umožňují uživatelům přidat obrázek.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Titulek, který je přiložen k obrázku, musí být označen značkou Caption.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

V současné době Aspose.Words nelze exportovat titulky pomocí značky Caption, takže musí být označeny ve výstupní PDF.

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku naleznete příklady: jak vložit popisek (expand to see details).</summary>
    <p></p>
    <p>In Microsoft Word, popisek může být vložen do kontextového menu:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>V Acrobatu může být název doplněn nebo změněn prostřednictvím `Object` Dialog vlastností:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternativní popisy

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word dokumenty umožňují uživatelům přidat alternativní text do obrázků, tvarů a tabulek. Aspose.Words exportuje takový alternativní text do výstupní PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Všechny prvky struktury, jejichž obsah nemá přirozený předurčený textový analog, např. obrázky, vzorce atd., by měly dodat alternativní textový popis pomocí Alt záznamu ve slovníku prvku struktury...</p>
    <p>POZNÁMKA Alternativní popisy poskytují textové popisy, které pomáhají při správné interpretaci jinak neprůhledného netextového obsahu.</p>
    <p>ISO- 19005-2, 6.7. 5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku naleznete příklady: jak zajistit, aby všechny prvky měly alternativní text (expand to see details).</summary>
    <p></p>
    <p>Uživatelé by měli zajistit, aby všechny prvky měly alternativní text buď ve zdrojovém dokumentu Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Nebo výstupní PDF dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternativní popisy hypertextových odkazů

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Kromě předchozího bodu Microsoft Word dokumenty také umožňují uživatelům přidat alternativní text do hypertextových odkazů. Aspose.Words exportuje takový alternativní text do výstupní PDF.

Bohužel ne každá aplikace vám umožňuje nastavit alternativní popis. Například, Adobe Acrobat v současné době neumožňuje nastavit takový popis hypertextových odkazů. Ale v Microsoft Word, Můžete to udělat takto:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Někdy je problém, že není možné nastavit alt text pro autogenerované hypertextové odkazy v tabulce obsahu (TOC) přes Microsoft Word GUI. Aspose.Words mohla tato pole aktualizovat a sama vytvářet odkazy.

Postupujte podle příkladu kódu pro aktualizaci `TOC` Pole používající Aspose.Words Document Object Model (DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Hlavičky tabulky

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tabulky v dokumentech PDF/UA-1 musí mít hlavičky sloupec, řádek nebo obojí. PDF/A vyžaduje pouze standardní přirážku tabulky, která nemá žádná další omezení. Všimněte si, že Aspose.Words automaticky generuje standardní markup tabulky.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Tabulky by měly zahrnovat hlavičky... Tabulky mohou obsahovat hlavičky sloupců, záhlaví řádků nebo obojí.</p>
    <p>ISO-14289- 1, 7, 5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku vidíte příklady: jak nastavit hlavičku tabulky (expand to see details).</summary>
    <p></p>
    <p>Hlavička stolu může být nastavena buď zdroj Microsoft Word dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Nebo výstupní PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Náhradní text

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Specifikace nám říká následující:</p>
    <p>Všechny textové prvky struktury, které jsou zastoupeny nestandardním způsobem, např. vlastními znaky nebo inline grafikou, by měly poskytovat náhradní text pomocí `ActualText` vstup do slovníku prvků struktury...</p>
    <p>ISO- 19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word dokument neumožňuje uživatelům nastavit náhradní text. Takže to je třeba ověřit a opravit ve výstupním PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Zkratky a akronymní rozšíření

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Všechny případy zkratek a zkratek v textovém obsahu by měly být umístěny v sekvenci označeného obsahu se značkou Span, jejíž vlastnost E poskytuje textové rozšíření zkratky nebo zkratky...</p>
<p>ISO- 19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word dokument neumožňuje uživatelům nastavit zkratky a zkratky rozšíření. Takže to je třeba ověřit a opravit ve výstupní PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Název dokumentu

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Dokument v PDF/UA-1 by měl mít název |

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Specifikace nám říká následující:</p>
    <p>Metadatový proud v katalogovém slovníku dokumentu musí obsahovat položku dc:title, kde DC je doporučený prefix pro Dublin Core metadata schema...</p>
    <p>ISO-14289- 1, 7, 1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku naleznete příklady: jak nastavit název dokumentu (rozšiřte podrobnosti).</summary>
    <p></p>
    <p>Název dokumentu může být nastaven buď zdroj Microsoft Word dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Nebo výstupní PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Požadavky na písmo

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Existuje také řada nuancí práce s písmy při převodu na PDF/A-1, PDF/A-2, PDF/A-4 nebo PDF/UA-1 formáty pomocí Aspose.Words. Je třeba je vzít v úvahu, pokud se chcete vyhnout možným problémům s výstupním dokumentem.

Níže uvedené oddíly popisují tyto nuance a možnosti jejich řešení.

### Písmo Právní požadavky

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words neověřuje právní omezení použitých písem a je to na uživatelích. Jinými slovy, uživatel by neměl poskytovat nevhodná písma pro převod PDF pomocí Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Použije se pouze fontové programy, které jsou právně vložené do souboru pro neomezené, univerzální vykreslování.</p>
    <p>ISO-19005-2, 6.2.1.4.1; ISO-14289-1, 7.21.4.1 (přesně stejné citace ve dvou specifikacích)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Použití `.notdef` glyph je zakázáno. The `.notdef` glyph se objeví, pokud dokument obsahuje znaky, které nejsou ve zvoleném písmu přítomny a které nelze vyřešit pomocí mechanismu Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Shodný dokument nesmí obsahovat odkaz na .notdef glyph z některého z textů zobrazujících operátory bez ohledu na režim vykreslování textu v jakémkoli proudu obsahu.</p>
    <p>ISO-19005-2, 6.2.1.8; ISO-14289-1, 7.2.1.8 (přesně stejné citace ve dvou specifikacích)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak odstranit nebo nahradit tyto znaky (expand to see details).</summary>
    <p></p>
    <p>Uživatelé by měli tyto znaky odstranit nebo nahradit buď ve zdrojovém dokumentu Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Nebo výstupní PDF dokument pomocí nástroje "Edit PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Oblast soukromého použití (PUA)

|  PDF standardní úrovně shody v rámci Aspose.Words |  Přítomnost požadavku |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Znaky Private Use Area (PUA) se objevují většinou pro Windows symbolická písma jako "Symbol," "Wingdings," "Webdings" a další. Microsoft Word formáty neposkytují možnost ukládat skutečný text pro znaky.

{{% alert color="secondary" %}}
<details>
    <summary>Specifikace nám říká následující (expand to see details):</summary>
    <p></p>
    <p>Pro úroveň Pouze shoda pro jakýkoli znak ..., který je zmapován na kód nebo kódy v oblasti Unicode Private Use Area (PUA), musí být přítomen aktuální text textu ... pro tento znak nebo posloupnost znaků, z nichž je takový znak součástí.</p>
    <p>ISO-19005-2, 6, 2.11.7. 3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" je Windows Font Unicode, který by mohl být použit jako alternativa k symbolickým písmům.

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku vidíte příklady: co by měl uživatel udělat, aby problém vyřešil symbolickými písmy (expand to see details).</summary>
    <p></p>
    <p>Nahradit symbolické písmo Unicode jedním ve zdrojovém dokumentu Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Nebo přidat položku AktualText do problematických znaků ve výstupním PDF dokumentu:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
