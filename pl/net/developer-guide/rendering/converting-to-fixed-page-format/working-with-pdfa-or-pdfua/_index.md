---
title: Praca z PDF/A lub PDF/UA
second_title: Aspose.Words dla .NET
articleTitle: Praca z PDF/A lub PDF/UA
linktitle: Praca z PDF/A lub PDF/UA
description: "Konwertuj do formatu PDF/A-1, PDF/A-2, PDF/A-4 i PDF/UA za pomocą C#. Istnieje kilka problemów podczas konwersji do dokumentów PDF/A, a Aspose.Words dla .NET je rozwiązuje."
type: docs
weight: 28
url: /pl/net/working-with-pdfa-or-pdfua/
---

Formaty PDF/A i PDF/UA nakładają szereg wymagań związanych z zawartością dokumentu, których nie da się spełnić podczas automatycznej konwersji dokumentu w formacie Word do formatu PDF. Wymagania te należy zweryfikować i poprawić w dokumencie Word przed konwersją lub w dokumencie PDF po konwersji, aby powstał dokument w pełni zgodny z formatami PDF/A i PDF/UA.

Podstawowe wymagania dotyczą struktury lub czcionek dokumentu PDF/A i PDF/UA, które rozważymy w kolejnych sekcjach.

{{% alert color="primary" %}}

Należy pamiętać, że dane wyjściowe w formacie PDF/UA-1 będą również zgodne z WCAG 2.0 i sekcją 508.

{{% /alert %}}

## Wymagania dotyczące struktury dokumentu

Obecne wymagania dotyczą formatów PDF/A-1a, PDF/A-2a, PDF/A-4 i PDF/UA-1.

Istnieją pewne niuanse działania Aspose.Words podczas konwersji do różnych standardów formatu PDF. Należy je wziąć pod uwagę, jeśli chcesz uzyskać oczekiwany efekt.

{{% alert color="primary" %}}

Należy pamiętać, że dla formatu PDF/A-4 nie ma wymagań dotyczących struktury logicznej. Z tego powodu w tej sekcji "Wymagania dotyczące struktury dokumentu" nie uwzględniamy wersji PDF/A-4.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Niewskazane jest, aby autorzy generowali informacje strukturalne lub semantyczne przy użyciu zautomatyzowanych procesów bez odpowiedniej weryfikacji.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

W poniższych podsekcjach opisano niuanse działania Aspose.Words podczas konwersji do różnych standardów formatu PDF oraz opcje ich rozwiązania.

### Typ struktury

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Dokument PDF to sekwencja bloków, takich jak nagłówki, akapity, tabele i inne. Bloki te tworzą strukturę dokumentu – silną lub słabą.

W formacie PDF/A obowiązują zarówno mocne, jak i słabe struktury. Dokumenty Microsoft Word mają z założenia słabą strukturę, a Aspose.Words tworzy plik PDF odpowiednio o słabej strukturze, a także generuje nagłówki zgodnie z poziomami konspektu akapitów w dokumencie źródłowym.

W przypadku dokumentu PDF/UA-1 o słabej strukturze dodatkowo wymagane jest, aby numeracja nagłówków przebiegała w kolejności bez przerw.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Struktura na poziomie bloków może być zgodna z jednym z dwóch głównych paradygmatów:</p>
    </ol>
      <li>Mocno zorganizowany. Elementy grupujące zagnieżdżają się na tylu poziomach, ile jest to konieczne, aby odzwierciedlić organizację materiału w artykuły, sekcje, podsekcje itd. Na każdym poziomie elementy podrzędne elementu grupującego powinny składać się z nagłówka (H), jednego lub większej liczby akapitów (P) dotyczących treści na tym poziomie i być może jednego lub większej liczby dodatkowych elementów grupujących dla zagnieżdżonych podsekcji.</li>
      <li>Słabo zorganizowany. Dokument jest stosunkowo płaski i może mieć tylko jeden lub dwa poziomy elementów grupujących, a wszystkie nagłówki, akapity i inne elementy BLSE są ich bezpośrednimi dziećmi. W tym przypadku organizacja materiału nie znajduje odzwierciedlenia w strukturze logicznej; można to jednak wyrazić poprzez użycie nagłówków o określonych poziomach (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dla dokumentów PDF/UA-1 specyfikacja zawiera dodatek dotyczący poziomów nagłówków (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Jeżeli semantyka dokumentu wymaga malejącej sekwencji nagłówków, sekwencja taka powinna przebiegać w ścisłej kolejności numerycznej i nie może pomijać pośredniego poziomu nagłówków. H1 H2 H3 jest dopuszczalne, natomiast H1 H3 nie.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Aby zapewnić prawidłowe wyniki, użytkownicy muszą upewnić się, że treść dokumentu źródłowego jest odpowiednio zorganizowana i że poziomy konspektu są prawidłowo określone dla akapitów. W przeciwnym razie użytkownik powinien sprawdzić i naprawić strukturę wyjściowego dokumentu PDF.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak ustawić poziomy konspektu w Microsoft Word lub sprawdzić i naprawić strukturę wyjściowego dokumentu PDF (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>W Microsoft Word domyślne style "Nagłówek X" mogą być użyte do ustawienia poziomu konspektu:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWNagłówek 1-2" style="width:800px"/>
    <p>Dodatkowo poziom konspektu można sprawdzić lub zmienić w oknie "Akapit":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="Poziom MWZarys" style="width:800px"/>
    <p>W programie Acrobat strukturę dokumentu można sprawdzić lub zmienić w panelu "Tagi":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="Panel tagów Acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Oznaczanie treści jako artefaktu

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

W tej chwili Aspose.Words oznacza nagłówki i stopki stron, separatory notatek, powtarzające się komórki nagłówków tabeli i obrazy dekoracyjne jako artefakty. Należy pamiętać, że lista ta może być aktualizowana w przyszłości.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Obiekty graficzne w dokumencie można podzielić na dwie klasy:</p>
    </ol>
      <li>Prawdziwą treścią dokumentu są obiekty reprezentujące materiał pierwotnie wprowadzony przez autora dokumentu.</li>
      <li>Artefakty to obiekty graficzne, które nie są częścią oryginalnej treści autora, lecz są generowane przez zgodnego autora w trakcie paginacji, układu lub innych ściśle mechanicznych procesów.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Jeśli dokument zawiera jakąkolwiek inną treść, którą należy oznaczyć jako artefakt, lub jeśli którakolwiek ze zniekształconych treści jest treścią prawdziwą, klienci powinni to poprawić w wyjściowym pliku PDF.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak oznaczyć kształty jako dekoracyjne w Microsoft Word lub oznaczyć kształt jako artefakt w wyjściowym dokumencie PDF (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Na przykład kształty można oznaczyć w formacie Microsoft Word jako dekoracyjne, więc zostaną wyeksportowane do pliku PDF jako artefakt:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDekoracyjny kształtowy" style="width:800px"/>
    <p>Możesz oznaczyć kształt jako artefakt w wyjściowym pliku PDF:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PDFUsuń pusty tag" style="width:800px"/>
    <p>Możesz także zamienić tekst w nagłówku z artefaktu na rzeczywistą treść w wyjściowym pliku PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specyfikacja języka naturalnego

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Język tekstu jest określony w dokumentach Microsoft Word. Aspose.Words eksportuje określony język do wyjściowego pliku PDF z atrybutem *Lang* dołączonym do sekwencji oznaczonej treści lub znacznikiem Span – jest to kontrolowane przez właściwość [ExportLanguageToSpanTag](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/). Ogólnie rzecz biorąc, nie ma problemów językowych, gdy użytkownik wprowadza tekst za pośrednictwem Microsoft Word. Istnieje jednak możliwość, że język będzie niedokładny, jeśli tekst zostanie wygenerowany automatycznie.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Domyślny język naturalny dla całego tekstu w pliku powinien być określony poprzez wpis Lang w słowniku katalogu dokumentu.</p>
    <p>Całą zawartość tekstową w pliku różniącą się od języka domyślnego należy wskazać za pomocą właściwości `Lang` dołączonej do sekwencji oznaczonej treści lub wpisu Lang w słowniku elementów konstrukcji...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dodatkowo dla PDF/UA-1 specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Należy zadeklarować język naturalny… Należy zgłosić zmiany w języku naturalnym.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak upewnić się, że język jest określony poprawnie (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni upewnić się, że język jest poprawnie określony w dokumencie źródłowym programu Word:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-language.png" alt="Język MW" style="width:800px"/>
    <p>Lub wyjściowy dokument PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckZmień język" style="width:800px"/>
</details>
{{% /alert %}}

### Podpis rysunku

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Dokumenty Microsoft Word umożliwiają użytkownikom dodawanie podpisów pod rysunkami.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Podpis towarzyszący rycinie powinien być oznaczony znacznikiem Caption.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Obecnie Aspose.Words nie może eksportować podpisów ze znacznikiem Caption, dlatego należy je oznaczyć w wyjściowym pliku PDF.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak wstawić podpis (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>W Microsoft Word podpis można wstawić poprzez menu kontekstowe:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="podpis-rysunek-mw" style="width:800px"/>
    <p>W programie Acrobat podpis można dodać lub zmienić w oknie dialogowym Właściwości `Object`:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figurka akrobata-podpis" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatywne opisy

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Dokumenty Microsoft Word umożliwiają użytkownikom dodawanie alternatywnego tekstu do obrazów, kształtów i tabel. Aspose.Words eksportuje taki alternatywny tekst do wyjściowego pliku PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Wszystkie elementy konstrukcji, których treść nie ma z góry ustalonego naturalnego odpowiednika tekstowego, np. obrazy, formuły itp., powinny zawierać alternatywny opis tekstowy za pomocą wpisu Alt w słowniku elementów konstrukcji...</p>
    <p>UWAGA Opisy alternatywne zapewniają opisy tekstowe, które pomagają we właściwej interpretacji treści nietekstowych, które w przeciwnym razie byłyby nieprzejrzyste.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak zapewnić, że wszystkie elementy mają tekst alternatywny (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni upewnić się, że wszystkie elementy mają alternatywny tekst w źródłowym dokumencie programu Word:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Lub wyjściowy dokument PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatywne opisy hiperłączy

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Oprócz poprzedniego punktu dokumenty Microsoft Word umożliwiają także dodawanie tekstu alternatywnego do hiperłączy. Aspose.Words eksportuje taki alternatywny tekst do wyjściowego pliku PDF.

Niestety nie każda aplikacja pozwala na ustawienie alternatywnego opisu. Przykładowo Adobe Acrobat obecnie nie umożliwia ustawienia takiego opisu dla hiperłączy. Ale w Microsoft Word możesz to zrobić w następujący sposób:

<img src="/words/net/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="udostępnij opis-hiperłącza-mw" style="width:800px"/>

Czasami występuje problem polegający na tym, że nie można ustawić tekstu alternatywnego dla automatycznie generowanych hiperłączy w spisie treści (TOC) za pośrednictwem GUI Microsoft Word. Aspose.Words mógłby samodzielnie aktualizować takie pola i generować linki.

Postępuj zgodnie z przykładem kodu, aby zaktualizować pola `TOC` przy użyciu formatu Aspose.Words Document Object Model (DOM):

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### Nagłówki tabeli

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tabele w dokumentach PDF/UA-1 muszą mieć nagłówki – kolumnę, wiersz lub oba. PDF/A wymaga jedynie standardowych znaczników tabeli, które nie mają żadnych dodatkowych ograniczeń. Należy pamiętać, że Aspose.Words automatycznie generuje standardowe znaczniki tabeli.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Tabele powinny zawierać nagłówki… Tabele mogą zawierać nagłówki kolumn, nagłówki wierszy lub jedno i drugie.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak ustawić nagłówek tabeli (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Nagłówek tabeli można ustawić w dokumencie źródłowym Microsoft Word:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="nagłówki-tabeli-mw" style="width:800px"/>
    <p>Lub wyjściowy plik PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="nagłówki tabeli-acrobat-nagłówek-komórka" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="nagłówki tabeli-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="nagłówki tabeli-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Tekst zastępczy

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Specyfikacja mówi nam co następuje:</p>
    <p>Wszystkie tekstowe elementy konstrukcji, które są reprezentowane w sposób niestandardowy, np. znaki niestandardowe lub grafika inline, powinny zawierać tekst zastępczy przy użyciu wpisu `ActualText` w słowniku elementów konstrukcji...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Dokument Microsoft Word nie pozwala użytkownikom ustawić tekstu zastępczego. Należy to zatem zweryfikować i naprawić w wyjściowym pliku PDF:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="Tekst zastępczy programu Acrobat" style="width:800px"/>

### Skróty i akronimy. Rozszerzenia

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Wszystkie wystąpienia skrótów i akronimów w treści tekstowej należy umieścić w sekwencji o zaznaczonej treści ze znacznikiem Span, którego właściwość E zapewnia tekstowe rozwinięcie skrótu lub akronimu...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Dokument Microsoft Word nie pozwala użytkownikom na ustawianie skrótów i rozwinięć akronimów. Należy to zatem zweryfikować i naprawić w wyjściowym pliku PDF:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Tytuł dokumentu

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br /> Dokument w formacie PDF/UA-1 powinien mieć tytuł |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Specyfikacja mówi nam co następuje:</p>
    <p>Strumień metadanych w słowniku katalogu dokumentu powinien zawierać wpis dc:title, gdzie dc jest zalecanym przedrostkiem dla schematu metadanych Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak ustawić tytuł dokumentu (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Tytuł dokumentu można ustawić jako źródłowy dokument Microsoft Word:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-mw.png" alt="tytuł-dokumentu-mw" style="width:800px"/>
    <p>Lub wyjściowy plik PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="akrobata tytułu dokumentu" style="width:800px"/>
</details>
{{% /alert %}}

## Wymagania dotyczące czcionki

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Istnieje również wiele niuansów pracy z czcionkami podczas konwersji do formatów PDF/A-1, PDF/A-2, PDF/A-4 lub PDF/UA-1 przy użyciu Aspose.Words. Należy je wziąć pod uwagę, jeśli chcesz uniknąć ewentualnych problemów z dokumentem wyjściowym.

W poniższych sekcjach opisano takie niuanse i opcje ich rozwiązania.

### Wymagania prawne dotyczące czcionek

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words nie weryfikuje ograniczeń prawnych stosowanych czcionek – jest to w gestii użytkowników. Innymi słowy, użytkownik nie powinien udostępniać nieodpowiednich czcionek do konwersji plików PDF za pomocą Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Należy używać wyłącznie programów czcionek, które można legalnie osadzić w pliku w celu nieograniczonego, uniwersalnego renderowania.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (dokładnie te same cytaty w dwóch specyfikacjach)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Korzystanie z `.notdef` glyph jest zabronione. `.notdef` glyph pojawi się, jeśli dokument zawiera znaki, których nie ma w wybranej czcionce i których również nie można rozpoznać za pomocą mechanizmu zastępczego czcionki.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Dokument zgodny nie może zawierać odniesienia do pliku .notdef glyph z żadnego operatora wyświetlającego tekst, niezależnie od trybu renderowania tekstu, w jakimkolwiek strumieniu treści.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (dokładnie te same cytaty w dwóch specyfikacjach)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak usunąć lub zastąpić te znaki (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni usunąć lub zastąpić te znaki w źródłowym dokumencie programu Word:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Lub wyjściowy dokument PDF za pomocą narzędzia "Edytuj PDF":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Obszar użytku prywatnego (PUA)

|  Poziomy zgodności ze standardami PDF w Aspose.Words |  Obecność wymagania |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Znaki z obszaru użytku prywatnego (PUA) pojawiają się głównie w przypadku czcionek symbolicznych Windows, takich jak "Symbol", "Wingdings", "Webdings" i innych. Formaty Microsoft Word nie zapewniają opcji przechowywania rzeczywistego tekstu w postaci znaków.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Tylko w przypadku zgodności z poziomem A, dla dowolnego znaku..., który jest odwzorowany na kod lub kody w obszarze użytku prywatnego Unicode (PUA), wpis ActualText... będzie obecny dla tego znaku lub sekwencji znaków, z których taki postać jest częścią.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" to czcionka Unicode Windows, której można używać jako alternatywy dla czcionek symbolicznych.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: co użytkownik powinien zrobić, aby rozwiązać problem z czcionkami symbolicznymi (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Zastąp czcionkę symboliczną czcionką Unicode w źródłowym dokumencie programu Word:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWinsertSymbol" style="width:800px"/>
    <p>Lub dodaj wpis ActualText do problematycznych znaków w wyjściowym dokumencie PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
