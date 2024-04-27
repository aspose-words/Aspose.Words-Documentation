---
title: Praca z PDF / A lub PDF / UA
second_title: Aspose.Words zamiast Java
articleTitle: Praca z PDF / A lub PDF / UA
linktitle: Praca z PDF / A lub PDF / UA
description: "Konwertuj na PDF / A-1, PDF / A-2, PDF / A-4 i PDF / UA używając Java. Istnieje kilka problemów przy konwersji do dokumentów PDF / A, oraz Aspose.Words zamiast Java Rozwiązuje je."
type: docs
weight: 28
url: /pl/java/working-with-pdfa-or-pdfua/
---

Format PDF / A i PDF / UA nakłada kilka wymogów związanych z treścią dokumentu, których nie można spełnić podczas automatycznej konwersji z dokumentu w formacie Word do PDF. Wymogi te powinny zostać zweryfikowane i poprawione w dokumencie Word przed konwersją lub w dokumencie PDF po konwersji w celu sporządzenia dokumentu w pełni zgodnego z PDF / A i PDF / UA.

Podstawowe wymagania dotyczą struktury lub czcionek dokumentu PDF / A i PDF / UA, które rozważamy w poniższych sekcjach.

{{% alert color="primary" %}}

Należy pamiętać, że wyjście PDF / UA-1 będzie również WCAG 2.0 i sekcja 508 zgodny.

{{% /alert %}}

## Wymogi dotyczące struktury dokumentów

Obecne wymagania dotyczą formatów PDF / A- 1a, PDF / A- 2a, PDF / A- 4 oraz PDF / UA-1.

Są pewne niuanse jak Aspose.Words działa podczas konwersji na różne standardy formatu PDF. Muszą być brane pod uwagę, jeśli chcesz uzyskać oczekiwany wynik.

{{% alert color="primary" %}}

Zauważ, że dla PDF / A- 4 nie ma żadnych wymogów dotyczących struktury logicznej. Z tego powodu nie rozważamy wersji PDF / A- 4 w tej sekcji "Wymagania dotyczące struktury dokumentu".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Nie zaleca się autorom generowania informacji strukturalnych lub semantycznych przy użyciu zautomatyzowanych procesów bez odpowiedniej weryfikacji.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Poniższe podsekcje opisują niuanse w jaki sposób Aspose.Words działa przy konwersji do różnych standardów formatu PDF i opcji dla ich rozwiązania.

### Rodzaj struktury

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |   {{< emoticons/tick >}}   |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Dokument PDF jest sekwencją bloków, takich jak nagłówki, paragrafy, tabele i inne. Bloki te tworzą strukturę dokumentów - silnie lub słabo.

Zarówno silne jak i słabe struktury są ważne dla PDF / A. Microsoft Word dokumenty mają słabą strukturę z punktu widzenia projektu, oraz Aspose.Words tworzy PDF ze słabą strukturą odpowiednio, a także generuje nagłówki zgodnie z poziomami zarysu akapitów w dokumencie źródłowym.

W przypadku dokumentu PDF / UA-1 ze słabą strukturą wymagane jest dodatkowo, aby numery nagłówków były uporządkowane bez luk.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Struktura poziomu blokady może być zgodna z jednym z dwóch głównych paradygmatów:</p>
    </ol>
      <li>Mocna struktura. Elementy grupujące zagnieżdżają się do tylu poziomów, ile jest to konieczne, aby odzwierciedlić organizację materiału w artykułach, sekcjach, podsekcjach itp. Na każdym poziomie dzieci należące do pierwiastka grupującego powinny składać się z nagłówka (H), jednego lub więcej punktów (P) dla zawartości na tym poziomie oraz być może jednego lub więcej dodatkowych elementów grupujących dla zagnieżdżonych podsekcji.</li>
      <li>Słabe struktury. Dokument jest stosunkowo płaski, posiadający być może tylko jeden lub dwa poziomy pierwiastków grupujących, ze wszystkimi pozycjami, paragrafami i innymi BLSE jako ich najbliższe dzieci. W takim przypadku organizacja materiału nie znajduje odzwierciedlenia w strukturze logicznej; jednakże może być wyrażona przez użycie pozycji o określonych poziomach (H1- H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W przypadku dokumentów PDF / UA-1 specyfikacja zawiera dodatek związany z poziomami nagłówków (rozszerzenie, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Jeżeli semantyka dokumentów wymaga malejącej sekwencji nagłówków, sekwencja taka postępuje w ścisłym porządku numerycznym i nie może pomijać interweniującego poziomu nagłówka. H1 H2 H3 jest dopuszczalne, natomiast H1 H3 nie.</p>
    <p>ISO- 14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Aby zapewnić prawidłowe wyjście, użytkownicy muszą zapewnić, że zawartość dokumentu źródłowego jest prawidłowo zorganizowana i poziomy zarysu są poprawnie określone dla akapitów. W przeciwnym razie użytkownik powinien zweryfikować i naprawić strukturę wyjściowego dokumentu PDF.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak ustawić poziomy zarysu w Microsoft Word lub sprawdzić i naprawić strukturę wyjściowego dokumentu PDF (rozszerzyć, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>W Microsoft Word domyślny styl "Nagłówek X" może być użyty do ustawienia poziomu zarysu:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Ponadto poziom zarysu można sprawdzić lub zmienić w oknie "Paragraf":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>W Acrobat struktura dokumentu może być sprawdzona lub zmieniona w panelu "Tags":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Oznaczanie treści jako artefaktu

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |   {{< emoticons/tick >}}   |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

W tej chwili, Aspose.Words oznacza nagłówki stron i stopki, separatory nut, powtarzające się komórki nagłówka tabeli i obrazy dekoracyjne jako artefakty. Należy pamiętać, że lista ta może być uaktualniona w przyszłości.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Obiekty graficzne w dokumencie można podzielić na dwie klasy:</p>
    </ol>
      <li>Rzeczywista treść dokumentu zawiera przedmioty przedstawiające materiał pierwotnie wprowadzony przez autora dokumentu.</li>
      <li>Artefakty są obiektami graficznymi, które nie są częścią oryginalnej treści autora, ale są generowane przez twórcę zgodności w trakcie paginacji, układu lub innych ściśle mechanicznych procesów.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Jeśli dokument zawiera jakąkolwiek inną zawartość, która powinna być oznaczona jako artefakt, lub jeśli jakakolwiek z treści artefaktowanych jest rzeczywistą zawartością, klienci powinni to naprawić w formacie PDF.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak oznaczyć kształty jako dekoracyjne w Microsoft Word lub oznaczyć kształt jako artefakt w dokumencie wyjścia PDF (rozszerzyć, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Na przykład, kształty mogą być oznaczone jako dekoracyjne w Microsoft Word, więc będą eksportowane do PDF jako artefakt:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Możesz oznaczyć kształt jako artefakt w wyjściu PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Ponadto, można przełączyć tekst w nagłówku z artefaktu na rzeczywistą zawartość w wyjściu PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specyfikacja języka naturalnego

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |   {{< emoticons/tick >}}   |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Język tekstowy jest określony w Microsoft Word dokumenty. Aspose.Words eksport określonego języka do wyjścia PDF z *Lang* atrybut dołączony do sekwencji zawartości lub znacznika Span - jest kontrolowany przez [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) nieruchomości. Ogólnie nie ma problemów językowych, gdy tekst jest wprowadzany przez użytkownika poprzez Microsoft Word. Ale istnieje możliwość, że język może być niedokładny, jeśli tekst jest generowany automatycznie.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Domyślny język naturalny dla całego tekstu w pliku powinien być określony przez wpis Lang w słowniku katalogu dokumentu.</p>
    <p>Wszystkie treści tekstowe w pliku, które różnią się od domyślnego języka powinny być wskazywane za pomocą `Lang` właściwość dołączona do sekwencji znakowanej zawartości lub przez wpis Lang w słowniku elementów struktury...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dodatkowo dla PDF / UA-1, specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Język naturalny jest deklarowany... Zgłosza się zmiany w języku naturalnym.</p>
    <p>ISO- 14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak upewnić się, że język jest podany poprawnie (rozszerzyć, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni zapewnić prawidłowe określenie języka w dokumencie źródłowym Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Albo wyjściowy dokument PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Rysunek

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |                           |
|  PDF / A- 2a |                           |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word dokumenty pozwalają użytkownikom dodawać podpisy figurowe.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Podpis towarzyszący cyfrze jest oznaczany tagiem.</p>
    <p>ISO- 14289-1, 7.3</p>
</details>
{{% /alert %}}

Obecnie Aspose.Words nie może eksportować podpisy z tagiem Caption, więc muszą być oznaczone w formacie PDF wyjścia.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak umieścić podpisy (rozszerzyć, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>W Microsoft Word, podpisy można umieścić w menu kontekstowym:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>W Acrobat napisy można dodać lub zmienić poprzez `Object` Okno właściwości:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Opisy zastępcze

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |   {{< emoticons/tick >}}   |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word dokumenty umożliwiają użytkownikom dodawanie tekstu alternatywnego do obrazów, kształtów i tabel. Aspose.Words eksportuj taki alternatywny tekst do wyjścia PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Wszystkie elementy struktury, których zawartość nie posiada naturalnego, wcześniej określonego analogu tekstowego, np. obrazy, wzory itp., powinny dostarczyć alternatywnego opisu tekstu przy użyciu pozycji Alt w słowniku elementów struktury...</p>
    <p>UWAGA Alternatywne opisy zawierają opisy tekstowe, które pomagają w prawidłowej interpretacji nieprzejrzystych treści nietekstowych w innych przypadkach.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak zapewnić, że wszystkie elementy mają alternatywny tekst (rozszerzyć, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni zapewnić, aby wszystkie elementy miały zastępczy tekst w dokumencie źródłowym Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Albo wyjściowy dokument PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatywne opisy dla Hyperlinks

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |                           |
|  PDF / A- 2a |                           |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Oprócz poprzedniego punktu, Microsoft Word dokumenty umożliwiają również użytkownikom dodawanie do hiperlinków innego tekstu. Aspose.Words eksportuj taki alternatywny tekst do wyjścia PDF.

Niestety, nie każda aplikacja pozwala na ustawienie alternatywnego opisu. Na przykład: Adobe Acrobat obecnie nie umożliwia skonfigurowania takiego opisu dla hiperłączy. Ale w Microsoft Word, można to zrobić w następujący sposób:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Czasami istnieje problem, że nie jest możliwe ustawienie alt tekstu dla autogenerowanych hiperlinków w tabeli treści (TOC) poprzez Microsoft Word GUI. Aspose.Words może aktualizować takie pola i tworzyć linki samodzielnie.

Podążaj za przykładem kodu do aktualizacji `TOC` pola za pomocą Aspose.Words Document Object Model (DOM):

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

### Nagłówki tabeli

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |                           |
|  PDF / A- 2a |                           |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Tabele w dokumentach PDF / UA-1 muszą mieć nagłówki - kolumnę, wiersz, lub oba. PDF / A wymaga tylko standardowego znacznika tabeli, który nie ma dodatkowych ograniczeń. Zauważ, że Aspose.Words automatycznie generuje standardowy znacznik tabeli.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Tabele powinny zawierać nagłówki... Tabele mogą zawierać nagłówki kolumn, nagłówki wierszy lub oba.</p>
    <p>ISO- 14289-1, 7,5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak ustawić nagłówek tabeli (rozszerzenie, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Nagłówek tabeli można ustawić albo źródło Microsoft Word dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Lub wyjście PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Tekst zamiany

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |   {{< emoticons/tick >}}   |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Specyfikacja mówi nam co następuje:</p>
    <p>Wszystkie elementy struktury tekstowej, które są reprezentowane w sposób niestandardowy, np. znaki niestandardowe lub grafika inline, powinny dostarczyć zastępczy tekst za pomocą `ActualText` wpis w słowniku elementów struktury...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word dokument nie pozwala użytkownikom ustawić tekstu zastępczego. To musi być zweryfikowane i naprawione w formacie PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Skróty i rozszerzenia akronimów

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |   {{< emoticons/tick >}}   |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Wszystkie przykłady skrótów i akronimów w treści tekstowej powinny być umieszczone w sekwencji znakowanej zawartości z znacznikiem Span, którego właściwość E zapewnia tekstowe rozszerzenie skrótu lub akronimu...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word dokument nie pozwala użytkownikom ustawiać skrótów i rozszerzeń akronimów. To musi być zweryfikowane i naprawione w formacie PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Tytuł dokumentu

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF / A- 1a |                                                                |
|  PDF / A- 2a |                                                                |
|  PDF / A- 4 |                                                                |
|  PDF / UA-1 |  {{< emoticons/tick >}}<br/>Dokument w formacie PDF / UA-1 powinien mieć tytuł |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Specyfikacja mówi nam co następuje:</p>
    <p>Strumień metadanych w słowniku katalogowym dokumentu zawiera wpis dc: tytuł, gdzie dc jest zalecanym przedrostkiem dla schematu diametadanych rdzeń dublińskich...</p>
    <p>ISO- 14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak ustawić tytuł dokumentu (rozszerzyć, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Tytuł dokumentu można utworzyć albo źródło Microsoft Word dokument:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Lub wyjście PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Wymagania dotyczące czcionki

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |   {{< emoticons/tick >}}   |
|  PDF / A- 1b |   {{< emoticons/tick >}}   |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / A- 2b |   {{< emoticons/tick >}}   |
|  PDF / A- 4 |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Istnieje również wiele niuansów pracy z czcionkami przy konwersji do PDF / A-1, PDF / A-2, PDF / A-4 lub PDF / UA-1 za pomocą Aspose.Words. Muszą one być brane pod uwagę, jeśli chcesz uniknąć ewentualnych problemów z dokumentem wyjściowym.

Poniższe sekcje opisują takie niuanse i opcje ich rozwiązania.

### Czcionka Wymagania prawne

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |   {{< emoticons/tick >}}   |
|  PDF / A- 1b |   {{< emoticons/tick >}}   |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / A- 2b |   {{< emoticons/tick >}}   |
|  PDF / A- 4 |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words nie weryfikuje ograniczeń prawnych używanych czcionek - zależy to od użytkowników. Innymi słowy, użytkownik nie powinien dostarczać nieodpowiednich czcionek do konwersji PDF za pomocą Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Używane są tylko programy czcionek, które są prawnie osadzone w pliku dla nieograniczonego, uniwersalnego renderowania.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (dokładnie te same cytaty w dwóch specyfikacjach)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |                           |
|  PDF / A- 1b |                           |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / A- 2b |   {{< emoticons/tick >}}   |
|  PDF / A- 4 |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |   {{< emoticons/tick >}}   |

Stosowanie `.notdef` glyph jest zabronione. W `.notdef` glyph pojawi się, jeśli dokument zawiera znaki, które nie są obecne w wybranej czcionce i które również nie mogą być usunięte za pomocą mechanizmu Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Dokument zgodny nie może zawierać odniesienia do .notdef glyph z dowolnego tekstu pokazującego operatorów, niezależnie od trybu renderowania tekstu, w dowolnym strumieniu treści.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (dokładnie te same cytaty w dwóch specyfikacjach)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak usunąć lub zastąpić te znaki (rozszerzyć, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni usunąć lub zastąpić te znaki w dokumencie źródłowym Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Lub wyjściowy dokument PDF za pomocą narzędzia "Edytuj PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Prywatny obszar użytkowania (PUA)

|  PDF standardowe poziomy zgodności wewnątrz Aspose.Words |  Obecność wymogu |
|  --------------------------------------------------  |  -----------------------  |
|  PDF / A- 1a |                           |
|  PDF / A- 1b |                           |
|  PDF / A- 2a |   {{< emoticons/tick >}}   |
|  PDF / A- 2b |   {{< emoticons/tick >}}   |
|  PDF / A- 4 |   {{< emoticons/tick >}}   |
|  PDF / UA-1 |                           |

Prywatne Use Area (PUA) znaki pojawiają się głównie dla Windows symboliczne czcionki takie jak "Symbol", "Wingdings", "Webdings" i inne. Microsoft Word formaty nie zapewniają opcji przechowywania rzeczywistego tekstu dla znaków.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozszerzyć, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Dla poziomu W przypadku tego znaku lub sekwencji znaków, których taki znak jest częścią, występuje jedynie konformancja..., która jest przypisana do kodu lub kodów w Unicode Private Use Area (PUA).</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" jest Windows Czcionka unicode, która może być użyta jako alternatywa dla symbolicznych czcionek.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: co użytkownik powinien zrobić, aby rozwiązać problem z symbolicznymi czcionkami (rozszerzyć, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Zastąp czcionkę symboliczną Unicode w dokumencie źródłowym Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Lub dodać wpis ActualText do problematycznych znaków w dokumencie wyjścia PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
