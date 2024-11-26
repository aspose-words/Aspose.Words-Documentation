---
title: Práce s PDF/A nebo PDF/UA
second_title: Aspose.Words pro C++
articleTitle: Práce s PDF/A nebo PDF/UA
linktitle: Práce s PDF/A nebo PDF/UA
description: "Převést na PDF/A-1, PDF/A-2, PDF/A-4 a PDF/UA pomocí C++. Při převodu na dokumenty PDF/A existuje několik problémů a Aspose.Words pro C++ je řeší."
type: docs
weight: 38
url: /cs/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Formát PDF/A a PDF/UA ukládá několik požadavků souvisejících s obsahem dokumentu, které nelze splnit při automatickém převodu z dokumentu ve formátu Word na PDF. Tyto požadavky by měly být ověřeny a opraveny buď v dokumentu Word před konverzí, nebo v dokumentu PDF po konverzi, aby se vytvořil plně vyhovující dokument PDF/A a PDF/UA.

Základní požadavky jsou na strukturu nebo písma dokumentu PDF/A a PDF/UA, které zvážíme v následujících částech.

{{% alert color="primary" %}}

Vezměte prosím na vědomí, že PDF/UA-1 výstup bude také WCAG 2.0 A oddíl 508 kompatibilní.

{{% /alert %}}

## Požadavky Na Strukturu Dokumentu

Současné požadavky jsou pro PDF/A-1a, PDF/A-2a, PDF/A-4, a PDF/UA-1 formáty.

Existují určité nuance toho, jak Aspose.Words funguje při převodu na různé standardy formátu PDF. Je třeba je vzít v úvahu, pokud chcete dosáhnout očekávaného výsledku.

{{% alert color="primary" %}}

Všimněte si, že pro PDF/A-4 neexistují žádné požadavky na logickou strukturu. Z tohoto důvodu nepovažujeme verzi PDF/A-4 v této části "Požadavky na strukturu dokumentu".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Pro autory se nedoporučuje generovat strukturální nebo sémantické informace pomocí automatizovaných procesů bez odpovídajícího ověření.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Níže uvedené podsekce popisují nuance toho, jak Aspose.Words funguje při převodu na různé standardy formátu PDF a možnosti jejich řešení.

### Typ Struktury

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF dokument je posloupnost bloků, jako jsou nadpisy, odstavce, tabulky a další. Tyto bloky tvoří strukturu dokumentu-silně nebo slabě.

Silné i slabé struktury platí pro PDF/A. Microsoft Word dokumenty mají slabou strukturu podle návrhu a Aspose.Words vytváří PDF se slabou strukturou a také generuje nadpisy podle úrovní osnovy odstavců ve zdrojovém dokumentu.

U dokumentu PDF/UA-1 se slabou strukturou je navíc nutné, aby čísla nadpisů byla v pořádku bez mezer.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Struktura na úrovni bloku může následovat jedno ze dvou hlavních paradigmat:</p>
    </ol>
      <li>Silně strukturované. Seskupovací prvky hnízdí na tolik úrovní, kolik je nutné, aby odrážely organizaci materiálu do článků, sekcí, podsekcí atd. Na každé úrovni by děti seskupovacího prvku měly sestávat z nadpisu (H), jednoho nebo více odstavců (P) pro obsah na této úrovni a možná jednoho nebo více dalších seskupovacích prvků pro vnořené podsekce.</li>
      <li>Slabě strukturované. Dokument je relativně plochý, má snad jen jednu nebo dvě úrovně seskupovacích prvků, se všemi nadpisy, odstavci a dalšími BLSEs jako jejich bezprostředními dětmi. V tomto případě se organizace materiálu neodráží v logické struktuře; může však být vyjádřena použitím nadpisů se specifickými úrovněmi (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Pro PDF/UA-1 dokumenty obsahuje SPECIFIKACE Dodatek týkající se úrovní nadpisů (rozbalte pro zobrazení podrobností):</summary>
    <p></p>
    <p>Pokud sémantika dokumentu vyžaduje sestupnou posloupnost záhlaví, musí taková posloupnost probíhat v přísném číselném pořadí a nesmí přeskočit intervenující úroveň nadpisu. H1 H2 H3 je přípustné, zatímco H1 H3 není.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Pro zajištění správného výstupu musí uživatelé zajistit, aby obsah zdrojového dokumentu byl správně uspořádán a úrovně osnovy byly správně zadány pro odstavce. V opačném případě by měl uživatel ověřit a opravit strukturu výstupního dokumentu PDF.

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak nastavit úrovně osnovy v Microsoft Word nebo zkontrolovat a opravit strukturu výstupního PDF dokumentu (rozbalte pro zobrazení podrobností).</summary>
    <p></p>
    <p>V Microsoft Word výchozí styly" Nadpis X " lze použít k nastavení úrovně obrysu:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Kromě toho lze v okně "Odstavec" zkontrolovat nebo změnit úroveň obrysu:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>V aplikaci Acrobat lze strukturu dokumentu zkontrolovat nebo změnit v podokně " značky:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Označení obsahu jako artefakt

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

V tuto chvíli Aspose.Words označuje záhlaví a zápatí stránek, oddělovače poznámek, opakované buňky záhlaví tabulky a dekorativní obrázky jako artefakty. Upozorňujeme, že tento seznam může být v budoucnu aktualizován.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Grafické objekty v dokumentu lze rozdělit do dvou tříd:</p>
    </ol>
      <li>Skutečný obsah dokumentu zahrnuje objekty představující materiál původně představený autorem dokumentu.</li>
      <li>Artefakty jsou grafické objekty, které nejsou součástí původního obsahu autora, ale jsou generovány odpovídajícím spisovatelem v průběhu stránkování, rozvržení nebo jiných přísně mechanických procesů.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Pokud dokument obsahuje jakýkoli jiný obsah, který by měl být označen jako artefakt, nebo pokud je některý z umělého obsahu skutečným obsahem, zákazníci by to měli opravit ve výstupu PDF.

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak označit tvary jako dekorativní v Microsoft Word nebo označit tvar jako artefakt ve výstupním dokumentu PDF (rozbalte pro zobrazení podrobností).</summary>
    <p></p>
    <p>Například tvary mohou být označeny jako dekorativní v Microsoft Word, takže budou exportovány do PDF jako artefakt:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Tvar můžete označit jako artefakt ve výstupu PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Můžete také přepnout text v záhlaví z artefaktu na skutečný obsah ve výstupu PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### SPECIFIKACE Přirozeného Jazyka

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Jazyk textu je uveden v dokumentech Microsoft Word. Aspose.Words exportuje zadaný jazyk na výstup PDF s atributem *Lang* připojeným k sekvenci označeného obsahu nebo značce rozpětí-je řízen vlastností [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). Obecně neexistují žádné jazykové problémy, když uživatel zadává text pomocí Microsoft Word. Existuje však možnost, že jazyk může být nepřesný, pokud je text generován automaticky.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Výchozí přirozený jazyk pro veškerý text v souboru by měl být specifikován položkou Lang ve slovníku katalogu dokumentu.</p>
    <p>Veškerý textový obsah v souboru, který se liší od výchozího jazyka, by měl být označen použitím vlastnosti `Lang` připojené k sekvenci označeného obsahu nebo položkou Lang ve slovníku prvků struktury ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Navíc pro PDF/UA-1 nám SPECIFIKACE říká následující (rozbalte pro zobrazení podrobností):</summary>
    <p></p>
    <p>Bude vyhlášen přirozený jazyk ... budou vyhlášeny změny v přirozeném jazyce.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak zajistit, aby byl jazyk zadán správně (Rozbalte a zobrazte podrobnosti).</summary>
    <p></p>
    <p>Uživatelé by se měli ujistit, že jazyk je správně zadán buď ve zdrojovém Word dokumentu:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Nebo výstup PDF dokumentu:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Obrázek Titulek

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word dokumenty umožňují uživatelům přidat titulek obrázku.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Popisek doprovázející obrázek musí být označen značkou titulků.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

V současné době Aspose.Words nelze exportovat titulky se značkou Caption, takže musí být označeny ve výstupu PDF.

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak vložit titulek (rozbalte pro zobrazení podrobností).</summary>
    <p></p>
    <p>V Microsoft Word lze titulek vložit prostřednictvím kontextové nabídky:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>V aplikaci Acrobat lze titulek přidat nebo změnit pomocí dialogu vlastností `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternativní Popisy

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word dokumenty umožňují uživatelům přidávat alternativní text k obrázkům, tvarům a tabulkám. Aspose.Words exportuje takový alternativní text na výstup PDF.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Všechny prvky struktury, jejichž obsah nemá přirozený předem určený textový Analog, např. obrázky, vzorce atd., by měl poskytnout alternativní textový popis pomocí položky Alt ve slovníku prvků struktury...</p>
    <p>NOTE alternativní popisy poskytují textové popisy, které pomáhají při správné interpretaci jinak neprůhledného netextového obsahu.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak zajistit, aby všechny prvky měly alternativní text (Rozbalte a zobrazte podrobnosti).</summary>
    <p></p>
    <p>Uživatelé by měli zajistit, aby všechny prvky měly alternativní text buď ve zdrojovém Word dokumentu:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Nebo výstup PDF dokumentu:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternativní popisy hypertextových odkazů

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Kromě předchozího bodu Microsoft Word dokumenty také umožňují uživatelům přidávat alternativní text k hypertextovým odkazům. Aspose.Words exportuje takový alternativní text na výstup PDF.

Bohužel ne každá aplikace umožňuje nastavit alternativní popis. Například Adobe Acrobat v současné době neumožňuje nastavit takový popis hypertextových odkazů. Ale v Microsoft Word to můžete udělat následovně:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Někdy je problém, že není možné nastavit alternativní text pro autogenerované hypertextové odkazy v obsahu (TOC) přes Microsoft Word GUI. Aspose.Words Může tato pole aktualizovat a generovat odkazy Samostatně.

Postupujte podle příkladu kódu a aktualizujte pole `TOC` pomocí modelu objektu dokumentu Aspose.Words (DOM):

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### Záhlaví Tabulky

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Tabulky v dokumentech PDF/UA-1 musí mít záhlaví-sloupec, řádek nebo obojí. PDF/A vyžaduje pouze standardní značení tabulky, které nemá žádná další omezení. Všimněte si, že Aspose.Words generuje standardní značení tabulky automaticky.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Tabulky by měly obsahovat záhlaví ... tabulky mohou obsahovat záhlaví sloupců, záhlaví řádků nebo obojí.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak nastavit záhlaví tabulky (rozbalte pro zobrazení podrobností).</summary>
    <p></p>
    <p>Záhlaví tabulky lze nastavit buď jako zdrojový Microsoft Word dokument:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Nebo výstup PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Náhradní Text

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>SPECIFIKACE nám říká následující:</p>
    <p>Všechny prvky textové struktury, které jsou reprezentovány nestandardním způsobem, např. vlastní znaky nebo vložená grafika, by měly dodávat náhradní text pomocí položky `ActualText` ve slovníku prvků struktury...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word dokument neumožňuje uživatelům nastavit náhradní text. To je tedy třeba ověřit a opravit ve výstupu PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Rozšíření zkratek a zkratek

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Všechny instance zkratek a zkratek v textovém obsahu by měly být umístěny v sekvenci označeného obsahu se značkou rozpětí, jejíž vlastnost E poskytuje textové rozšíření zkratky nebo zkratky...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word dokument neumožňuje uživatelům nastavit rozšíření zkratek a zkratek. To je tedy třeba ověřit a opravit ve výstupu PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Název Dokumentu

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Dokument v PDF/UA-1 by měl mít název. |

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>SPECIFIKACE nám říká následující:</p>
    <p>Proud metadat ve slovníku katalogu dokumentu musí obsahovat položku dc: title, Kde dc je doporučená předpona pro schéma metadat Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak nastavit název dokumentu (rozbalte pro zobrazení podrobností).</summary>
    <p></p>
    <p>Název dokumentu lze nastavit buď jako zdrojový Microsoft Word dokument:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Nebo výstup PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Požadavky Na Písmo

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Existuje také řada nuancí práce s písmy při převodu na PDF/A-1, PDF/A-2, PDF/A-4 nebo PDF/UA-1 formáty pomocí Aspose.Words. Je třeba je vzít v úvahu, pokud se chcete vyhnout možným problémům s výstupním dokumentem.

Níže uvedené části popisují takové nuance a možnosti jejich řešení.

### Právní Požadavky Na Písmo

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words neověřuje zákonná omezení použitých písem – je to na uživatelích. Jinými slovy, uživatel by neměl poskytovat nevhodná písma pro konverzi PDF Pomocí Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Používají se pouze programy písem, které lze legálně vložit do souboru pro neomezené univerzální Vykreslování.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (přesně stejné citace ve dvou specifikacích)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Použití `.notdef` glyfu je zakázáno. `.notdef` glyf se objeví, pokud dokument obsahuje znaky, které nejsou přítomny ve vybraném písmu a které také nelze vyřešit pomocí mechanismu záložního písma.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Odpovídající dokument nesmí obsahovat odkaz na.notdef glyf z kteréhokoli z operátorů zobrazujících text, bez ohledu na režim vykreslování textu, v jakémkoli proudu obsahu.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (přesně stejné citace ve dvou specifikacích)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: jak odstranit nebo nahradit tyto znaky (rozbalte pro zobrazení podrobností).</summary>
    <p></p>
    <p>Uživatelé by měli odstranit nebo nahradit tyto znaky buď ve zdrojovém Word dokumentu:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Nebo výstupní dokument PDF pomocí nástroje" Upravit PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Oblast Soukromého Použití (PUA)

| PDF standardní úrovně shody v rámci Aspose.Words | Přítomnost požadavku |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Znaky Private Use Area (PUA) se objevují většinou pro Windows symbolická písma jako "Symbol", "Wingdings", "Webdings" a další. Formáty Microsoft Word neposkytují možnost ukládat skutečný text pro znaky.

{{% alert color="secondary" %}}
<details>
    <summary>SPECIFIKACE nám říká následující (rozbalte podrobnosti):</summary>
    <p></p>
    <p>Pouze pro shodu úrovně a, pro jakýkoli znak ... to je mapováno na kód nebo kódy v oblasti soukromého použití Unicode (PUA), záznam ActualText... musí být přítomen pro tento znak nebo posloupnost znaků, jejichž součástí je tento znak.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" je Windows písmo Unicode, které lze použít jako alternativu k symbolickým písmům.

{{% alert color="secondary" %}}
<details>
    <summary>V tomto bloku můžete vidět příklady: co by měl uživatel udělat, aby vyřešil problém se symbolickými písmy (Rozbalte a zobrazte podrobnosti).</summary>
    <p></p>
    <p>Nahraďte symbolické písmo Unicode ve zdrojovém dokumentu Word:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Nebo přidejte ActualText záznam k problematickým znakům ve výstupním PDF dokumentu:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
