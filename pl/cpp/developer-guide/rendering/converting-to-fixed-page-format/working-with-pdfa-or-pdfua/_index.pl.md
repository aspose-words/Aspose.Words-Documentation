---
title: Praca z PDF/A lub PDF/UA
second_title: Aspose.Words dla C++
articleTitle: Praca z PDF/A lub PDF/UA
linktitle: Praca z PDF/A lub PDF/UA
description: "Konwertuj na PDF/A-1, PDF/A-2, PDF/A-4 i PDF/UA używając C++. Istnieje kilka problemów podczas konwersji do dokumentów PDF/A i Aspose.Words dla C++ rozwiązuje je."
type: docs
weight: 38
url: /pl/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Format PDF/A i PDF/UA nakłada kilka wymagań związanych z zawartością dokumentu, których nie można spełnić podczas automatycznej konwersji z dokumentu w formacie Word na PDF. Wymagania te należy zweryfikować i skorygować albo w dokumencie Word przed konwersją, albo w dokumencie PDF po konwersji, aby uzyskać w pełni zgodny dokument PDF/A i PDF/UA.

Podstawowe wymagania dotyczą struktury lub czcionek dokumentu PDF/A i PDF/UA, które rozważymy w kolejnych sekcjach.

{{% alert color="primary" %}}

Należy pamiętać, że dane wyjściowe PDF/UA-1 będą również zgodne z WCAG 2.0 i sekcją 508.

{{% /alert %}}

## Wymagania Dotyczące Struktury Dokumentu

Obecne wymagania dotyczą PDF/A-1a, PDF/A-2a, PDF/A-4, i PDF/UA-1 formatów.

Istnieją pewne niuanse działania Aspose.Words podczas konwersji do różnych standardów formatu PDF. Należy je wziąć pod uwagę, jeśli chcesz uzyskać oczekiwany rezultat.

{{% alert color="primary" %}}

Zauważ, że nie ma wymagań dotyczących struktury logicznej dla PDF/A-4. Z tego powodu nie uwzględniamy wersji PDF/A-4 w tej sekcji "Wymagania dotyczące struktury dokumentu".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Niewskazane jest, aby autorzy generowali informacje strukturalne lub semantyczne przy użyciu zautomatyzowanych procesów bez odpowiedniej weryfikacji.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Poniższe podsekcje opisują niuanse działania Aspose.Words podczas konwersji do różnych standardów formatu PDF i opcji ich rozwiązania.

### Typ Struktury

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Dokument PDF to sekwencja bloków, takich jak nagłówki, akapity, tabele i inne. Bloki te tworzą strukturę dokumentu-silnie lub słabo.

Zarówno silne, jak i słabe struktury są ważne dla PDF/A. Microsoft Word dokumenty mają słabą strukturę z założenia i Aspose.Words tworzy PDF odpowiednio ze słabą strukturą, a także generuje nagłówki zgodnie z poziomami konturów akapitów w dokumencie źródłowym.

W przypadku dokumentu PDF/UA-1 o słabej strukturze wymagane jest dodatkowo, aby numery nagłówków były uporządkowane bez przerw.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Struktura na poziomie bloku może być zgodna z jednym z dwóch głównych paradygmatów:</p>
    </ol>
      <li>Silnie zorganizowany. Elementy grupujące zagnieżdżają się na tylu poziomach, ile jest to konieczne, aby odzwierciedlić organizację materiału w artykuły, sekcje, podsekcje i tak dalej. Na każdym poziomie elementy podrzędne elementu grupującego powinny składać się z nagłówka (H), jednego lub więcej akapitów (P) dla treści na tym poziomie i być może jednego lub więcej dodatkowych elementów grupowania dla zagnieżdżonych podsekcji.</li>
      <li>Słabo zorganizowany. Dokument jest stosunkowo płaski, ma być może tylko jeden lub dwa poziomy elementów grupujących, ze wszystkimi nagłówkami, akapitami i innymi BLSEs jako ich najbliższymi dziećmi. W tym przypadku organizacja materiału nie znajduje odzwierciedlenia w strukturze logicznej; można to jednak wyrazić za pomocą nagłówków o określonych poziomach (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dla dokumentów PDF/UA-1 Specyfikacja zawiera dodatek związany z poziomami nagłówków (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Jeżeli semantyka dokumentu wymaga malejącej sekwencji nagłówków, taka sekwencja przebiega w ścisłej kolejności numerycznej i nie pomija poziomu nagłówka interweniującego. H1 H2 H3 jest dopuszczalne, podczas gdy H1 H3 nie jest.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Aby zapewnić prawidłowe wyniki, użytkownicy muszą upewnić się, że zawartość dokumentu źródłowego jest odpowiednio zorganizowana, a poziomy konspektu są poprawnie określone dla akapitów. W przeciwnym razie użytkownik powinien zweryfikować i naprawić strukturę dokumentu wyjściowego PDF.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak ustawić poziomy konturu w Microsoft Word lub sprawdzić i naprawić strukturę dokumentu wyjściowego PDF (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>W domyślnych stylach Microsoft Word "nagłówek X" można użyć do ustawienia poziomu konturu:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Ponadto poziom konturu można sprawdzić lub zmienić w oknie " akapit:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>W programie Acrobat strukturę dokumentu można sprawdzić lub zmienić w okienku " Tagi:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Oznaczanie zawartości jako artefaktu

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

W tej chwili Aspose.Words oznacza nagłówki i stopki stron, separatory notatek, powtarzające się komórki nagłówka tabeli i dekoracyjne obrazy jako artefakty. Pamiętaj, że ta lista może zostać zaktualizowana w przyszłości.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Obiekty graficzne w dokumencie można podzielić na dwie klasy:</p>
    </ol>
      <li>Rzeczywista treść dokumentu obejmuje obiekty reprezentujące materiał pierwotnie wprowadzony przez autora dokumentu.</li>
      <li>Artefakty to obiekty graficzne, które nie są częścią oryginalnej treści autora, ale raczej są generowane przez zgodnego autora w trakcie paginacji, układu lub innych ściśle mechanicznych procesów.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Jeśli dokument zawiera jakąkolwiek inną zawartość, która powinna być oznaczona jako artefakt lub jeśli którakolwiek z artifacted treści jest rzeczywistą treścią, klienci powinni naprawić to w wyniku PDF.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku można zobaczyć przykłady: jak oznaczyć kształty jako dekoracyjne w Microsoft Word lub oznaczyć kształt jako artefakt w dokumencie wyjściowym PDF (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Na przykład kształty mogą być oznaczone jako dekoracyjne w Microsoft Word, więc zostaną wyeksportowane do PDF jako artefakt:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Możesz oznaczyć kształt jako artefakt na wyjściu PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Możesz także przełączyć tekst w nagłówku z artefaktu na rzeczywistą zawartość na wyjściu PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specyfikacja Języka Naturalnego

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Język tekstu jest określony w dokumentach Microsoft Word. Aspose.Words eksportuje określony język do pliku wyjściowego PDF z atrybutem *Lang* dołączonym do oznaczonej sekwencji treści lub znacznika Span-jest on kontrolowany przez właściwość [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). Generalnie nie ma problemów językowych, gdy tekst jest wprowadzany przez użytkownika za pośrednictwem Microsoft Word. Istnieje jednak możliwość, że język może być niedokładny, jeśli tekst zostanie wygenerowany automatycznie.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Domyślny język naturalny dla całego tekstu w pliku powinien być określony przez wpis Lang w słowniku katalogu dokumentu.</p>
    <p>Cała zawartość tekstowa w pliku, która różni się od języka domyślnego, powinna być wskazana za pomocą właściwości `Lang` dołączonej do sekwencji oznaczonej treścią lub wpisu Lang w słowniku elementów struktury ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dodatkowo dla PDF/UA-1 Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Deklaruje się zmiany w języku naturalnym..</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak upewnić się, że język jest poprawnie określony (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni upewnić się, że język jest poprawnie określony w dokumencie źródłowym Word:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Lub dokument wyjściowy PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Rysunek Podpis

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word dokumenty umożliwiają użytkownikom dodawanie podpisów do rysunku.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Podpis dołączony do figury powinien być oznaczony tagiem podpisu.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Obecnie Aspose.Words nie można eksportować podpisów za pomocą tagu podpisu, więc muszą być oznaczone w wyniku PDF.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak wstawić podpis (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>W Microsoft Word podpis można wstawić za pomocą menu kontekstowego:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>W programie Acrobat podpis można dodać lub zmienić za pomocą okna dialogowego właściwości `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatywne Opisy

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word dokumenty umożliwiają użytkownikom dodawanie tekstu alternatywnego do obrazów, kształtów i tabel. Aspose.Words eksportuje taki alternatywny tekst do wyjścia PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Wszystkie elementy struktury, których treść nie ma naturalnego z góry określonego analogu tekstowego, np. obrazy, wzory itp., powinien dostarczyć alternatywny opis tekstowy przy użyciu wpisu Alt w słowniku elementów struktury...</p>
    <p>NOTE opisy alternatywne zawierają opisy tekstowe, które pomagają we właściwej interpretacji nieprzejrzystej treści nietekstowej.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak upewnić się, że wszystkie elementy mają alternatywny tekst (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni upewnić się, że wszystkie elementy mają alternatywny tekst w dokumencie źródłowym Word:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Lub dokument wyjściowy PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatywne opisy hiperłączy

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Oprócz poprzedniego punktu dokumenty Microsoft Word umożliwiają również użytkownikom dodawanie alternatywnego tekstu do hiperłączy. Aspose.Words eksportuje taki alternatywny tekst do wyjścia PDF.

Niestety nie każda aplikacja pozwala skonfigurować alternatywny opis. Na przykład Adobe Acrobat Obecnie nie umożliwia skonfigurowania takiego opisu dla hiperłączy. Ale w Microsoft Word możesz to zrobić w następujący sposób:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Czasami pojawia się problem polegający na tym, że nie można ustawić tekstu alternatywnego dla automatycznie generowanych hiperłączy w spisie treści (TOC) przez Microsoft Word GUI. Aspose.Words może aktualizować takie pola i samodzielnie generować łącza.

Postępuj zgodnie z przykładem kodu, aby zaktualizować pola `TOC` przy użyciu Aspose.Words Document Object Model (DOM):

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

### Nagłówki Tabel

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Tabele w dokumentach PDF/UA-1 muszą mieć nagłówki – kolumnę, wiersz lub oba. PDF/A wymaga tylko standardowego znacznika tabeli, który nie ma dodatkowych ograniczeń. Zauważ, że Aspose.Words automatycznie generuje standardowe znaczniki tabeli.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Tabele powinny zawierać nagłówki ... tabele mogą zawierać nagłówki kolumn, nagłówki wierszy lub oba.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak ustawić nagłówek tabeli (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Nagłówek tabeli może być skonfigurowany jako dokument źródłowy Microsoft Word:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Lub wyjście PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Tekst Zastępczy

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Specyfikacja mówi nam, co następuje:</p>
    <p>Wszystkie tekstowe elementy struktury, które są reprezentowane w niestandardowy sposób, np. znaki niestandardowe lub grafika liniowa, powinny dostarczać tekst zastępczy przy użyciu `ActualText` wpis w słowniku elementów struktury...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word dokument nie pozwala użytkownikom na ustawienie tekstu zastępczego. Więc to musi zostać zweryfikowane i naprawione w wyniku PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Skróty i akronimy rozszerzenia

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Wszystkie wystąpienia skrótów i akronimów w treści tekstowej powinny być umieszczone w sekwencji oznaczonej treścią ze znacznikiem Span, którego właściwość E zapewnia tekstową ekspansję skrótu lub akronimu...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word dokument nie pozwala użytkownikom na ustawianie skrótów i rozszerzeń akronimów. Więc to musi zostać zweryfikowane i naprawione w wyniku PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Tytuł Dokumentu

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Dokument w PDF/UA-1 powinien mieć tytuł. |

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Specyfikacja mówi nam, co następuje:</p>
    <p>Strumień metadanych w słowniku katalogu dokumentu zawiera wpis dc: title, gdzie dc jest zalecanym prefiksem schematu metadanych Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak ustawić tytuł dokumentu (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Tytuł dokumentu można skonfigurować jako dokument źródłowy Microsoft Word:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Lub wyjście PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Wymagania Dotyczące Czcionek

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Istnieje również wiele niuansów pracy z czcionkami podczas konwersji na PDF/A-1, PDF/A-2, PDF/A-4 lub PDF/UA-1 formaty za pomocą Aspose.Words. Należy je wziąć pod uwagę, jeśli chcesz uniknąć ewentualnych problemów z dokumentem wyjściowym.

Poniższe sekcje opisują takie niuanse i opcje ich rozwiązania.

### Wymagania Prawne Dotyczące Czcionek

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words nie weryfikuje ograniczeń prawnych używanych czcionek-to zależy od użytkowników. Innymi słowy, użytkownik nie powinien udostępniać nieodpowiednich czcionek do Konwersji PDF przy użyciu Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Należy używać tylko programów czcionek, które można legalnie osadzić w pliku w celu nieograniczonego, uniwersalnego renderowania.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (dokładnie te same cytaty w dwóch specyfikacjach)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Używanie glifu `.notdef` jest zabronione. Glif `.notdef` pojawi się, jeśli dokument zawiera znaki, których nie ma w wybranej czcionce i których również nie można rozwiązać za pomocą mechanizmu rezerwowego czcionki.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Dokument zgodny nie zawiera odniesienia do.notdef glif z dowolnego tekstu pokazującego operatorów, niezależnie od trybu renderowania tekstu, w dowolnym strumieniu treści.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (dokładnie te same cytaty w dwóch specyfikacjach)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: jak usunąć lub zastąpić te znaki (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Użytkownicy powinni usunąć lub zastąpić te znaki w dokumencie źródłowym Word:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Lub dokument wyjściowy PDF za pomocą narzędzia " Edytuj PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Obszar Do Użytku Prywatnego (PUA)

| PDF standardowe poziomy zgodności w obrębie Aspose.Words | Obecność wymogu |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Znaki obszaru użytku prywatnego (PUA) pojawiają się głównie dla czcionek symbolicznych Windows, takich jak "Symbol", "Wingdings", "Webdings" i inne. Microsoft Word formaty nie zapewniają opcji przechowywania rzeczywistego tekstu dla znaków.

{{% alert color="secondary" %}}
<details>
    <summary>Specyfikacja mówi nam, co następuje (rozwiń, aby zobaczyć szczegóły):</summary>
    <p></p>
    <p>Tylko dla zgodności poziomu a, dla dowolnej postaci ... jest to mapowane na kod lub kody w obszarze użytku prywatnego Unicode (PUA), wpis ActualText... musi być obecny dla tego znaku lub sekwencji znaków, których taki znak jest częścią.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" to Windows czcionka Unicode, która może być używana jako alternatywa dla czcionek symbolicznych.

{{% alert color="secondary" %}}
<details>
    <summary>W tym bloku możesz zobaczyć przykłady: co użytkownik powinien zrobić, aby rozwiązać problem z czcionkami symbolicznymi (rozwiń, aby zobaczyć szczegóły).</summary>
    <p></p>
    <p>Zastąp czcionkę symboliczną czcionką Unicode w źródłowym dokumencie Word:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Lub dodaj wpis ActualText do problematycznych znaków w dokumencie wyjściowym PDF:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
