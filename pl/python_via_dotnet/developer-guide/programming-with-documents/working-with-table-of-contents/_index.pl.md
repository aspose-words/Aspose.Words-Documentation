---
title: Praca ze spisem treści
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca ze spisem treści
linktitle: Praca ze spisem treści
description: "Wstawiaj i zarządzaj `spisem treści` w dokumencie za pomocą Python."
type: docs
weight: 170
url: /pl/python-net/working-with-table-of-contents/
---

Często będziesz pracować z dokumentami zawierającymi spis treści (TOC). Za pomocą Aspose.Words możesz wstawić własny spis treści lub całkowicie przebudować istniejący spis treści w dokumencie za pomocą zaledwie kilku linijek kodu. W tym artykule opisano sposób pracy z polem spisu treści i przedstawiono:

- Jak wstawić zupełnie nowy plik `TOC`
- Zaktualizuj nowe lub istniejące spisy treści w dokumencie.
- Określ przełączniki sterujące formatowaniem i ogólną strukturą spisu treści.
- Jak modyfikować style i wygląd spisu treści.
- Jak usunąć całe pole `TOC` wraz ze wszystkimi wpisami z dokumentu.

## Wstaw spis treści programowo

Pole `TOC` (spis treści) można wstawić do dokumentu w bieżącej pozycji, wywołując metodę [DocumentBuilder.insert_table_of_contents](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_table_of_contents/).

Spis treści w dokumencie programu Word można utworzyć na wiele sposobów i sformatować przy użyciu różnych opcji. Przełączniki pól przekazywane do metody kontrolują sposób budowania i wyświetlania tabeli w dokumencie.

Domyślnymi przełącznikami używanymi w formacie `TOC` wstawionym do Microsoft Word są **"\o "1-3 \h \z \u"**. Opisy tych przełączników oraz listę obsługiwanych przełączników znajdziesz w dalszej części artykułu. Możesz skorzystać z tego przewodnika, aby uzyskać odpowiednie przełączniki lub, jeśli masz już dokument zawierający podobny `TOC`, który chcesz, możesz pokazać kody pól (*ALT+F9*) i skopiować przełączniki bezpośrednio z pola.

Poniższy przykład kodu pokazuje, jak wstawić pole spisu treści do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTableOfContents.py" >}}

Kod demonstruje wstawianie nowego spisu treści do pustego dokumentu. Następnie używa się klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) do wstawienia przykładowego formatowania treści z odpowiednimi stylami nagłówków, które służą do oznaczania treści, która ma zostać uwzględniona w spisie treści. Następne wiersze następnie wypełniają `TOC`, aktualizując pola i układ strony dokumentu.

{{% alert color="primary" %}}

Bez metod zastosowanych w przykładzie po otwarciu dokumentu wyjściowego znalazłoby się pole `TOC`, ale bez widocznej treści. Dzieje się tak, ponieważ pole `TOC` zostało wstawione, ale nie zostało jeszcze wypełnione, dopóki nie zostanie zaktualizowane w dokumencie. Więcej informacji na ten temat omówiono w następnej sekcji.

{{% /alert %}}

## Zaktualizuj spis treści

Aspose.Words umożliwia całkowitą aktualizację `TOC` za pomocą zaledwie kilku linii kodu. Można to zrobić, aby wypełnić nowo wstawiony `TOC` lub zaktualizować istniejący `TOC` po wprowadzeniu zmian w dokumencie. Aby zaktualizować pola `TOC` w dokumencie, należy zastosować dwie następujące metody:

1. [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)
1. [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)

Należy pamiętać, że te dwie metody aktualizacji muszą być wywoływane w tej kolejności. W przypadku odwrócenia spis treści zostanie wypełniony, ale nie będą wyświetlane żadne numery stron. Można aktualizować dowolną liczbę różnych spisów treści. Metody te automatycznie zaktualizują wszystkie spisy treści znalezione w dokumencie.

Poniższy przykład kodu pokazuje, jak całkowicie odbudować pola `TOC` w dokumencie, wywołując aktualizację pola:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-UpdateFields.py" >}}

Pierwsze wywołanie [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) spowoduje zbudowanie `TOC`, wszystkie wpisy tekstowe zostaną wypełnione i `TOC` będzie wyglądał na prawie ukończony. Brakuje tylko numerów stron, które na razie są wyświetlane z "?". Drugie wywołanie [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) zbuduje układ dokumentu w pamięci. Należy to zrobić, aby zebrać numery stron wpisów. Następnie do spisu treści wstawiane są prawidłowe numery stron obliczone na podstawie tego wywołania.

## Użyj przełączników, aby kontrolować zachowanie spisu treści.

Podobnie jak w przypadku każdego innego pola, pole `TOC` może akceptować przełączniki zdefiniowane w kodzie pola, które kontrolują sposób budowania spisu treści. Niektóre przełączniki służą do kontrolowania, które wpisy są uwzględniane i na jakim poziomie, podczas gdy inne służą do kontrolowania wyglądu spisu treści. Przełączniki można łączyć ze sobą, aby umożliwić tworzenie złożonych spisów treści.

![working-with-table-of-contents-aspose-words-net](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Domyślnie powyższe przełączniki są uwzględniane podczas wstawiania domyślnego pliku `TOC` do dokumentu. `TOC` bez przełączników będzie zawierał treść z wbudowanych stylów nagłówków (tak jakby ustawiony był przełącznik \O). Dostępne przełączniki `TOC` obsługiwane przez Aspose.Words są wymienione poniżej i szczegółowo opisano ich zastosowanie. Można je podzielić na osobne sekcje ze względu na ich rodzaj. Przełączniki w pierwszej sekcji definiują, jaką treść należy uwzględnić w `TOC`, a przełączniki w drugiej sekcji kontrolują wygląd spisu treści. Jeśli przełącznik nie jest tutaj wymieniony, oznacza to, że obecnie nie jest obsługiwany. Wszystkie przełączniki będą obsługiwane w przyszłych wersjach. Z każdym wydaniem dodajemy dalsze wsparcie.

### Przełączniki oznakowania wejścia

|  Przełącznik | Opis |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O Przełącznik)* | <p>Ten przełącznik definiuje, że `TOC` powinien być zbudowany na podstawie wbudowanych stylów nagłówków. W Microsoft Word są one definiowane przez Nagłówek 1 – Nagłówek 9. W Aspose.Words style te są reprezentowane przez odpowiednie wyliczenie StyleIdentifier. To wyliczenie reprezentuje niezależny od ustawień regionalnych identyfikator stylu, na przykład `StyleIdentifier.Heading1` reprezentuje styl Nagłówek 1. Dzięki temu można pobrać formatowanie i właściwości stylu z kolekcji Style dokumentu. Odpowiednią klasę Style można pobrać z kolekcji `Document.Styles` przy użyciu indeksowanej właściwości typu StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Wszelka treść sformatowana przy użyciu tych stylów jest uwzględniona w spisie treści. Poziom nagłówka określi odpowiedni poziom hierarchiczny wpisu w spisie treści. Na przykład akapit ze stylem Nagłówek 1 będzie traktowany jako pierwszy poziom w `TOC`, podczas gdy akapit ze stylem Nagłówek 2 będzie traktowany jako następny poziom w hierarchii i tak dalej.</p> |
| **Outline Levels**<br>*(\U przełącznik)* | <p>Dla każdego akapitu można zdefiniować poziom konspektu w obszarze Opcje akapitu.</p>

<p>![working-with-table-of-contents-paragraph](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>To ustawienie określa, na jakim poziomie ten akapit powinien być traktowany w hierarchii dokumentu. Jest to powszechnie stosowana praktyka służąca do łatwego tworzenia struktury układu dokumentu. Hierarchię tę można wyświetlić, przechodząc do widoku konspektu w formacie Microsoft Word. Podobnie jak w przypadku stylów nagłówków, oprócz poziomu "Tekst główny" może istnieć od 1 do 9 poziomów konspektu. Poziomy konspektu 1 – 9 pojawią się w formacie `TOC` na odpowiednim poziomie hierarchii<br>Dowolna treść posiadająca poziom konspektu ustawiony w stylu akapitu lub bezpośrednio w samym akapicie jest uwzględniana w spisie treści. W Aspose.Words poziom konspektu jest reprezentowany przez właściwość `ParagraphFormat.OutlineLevel` węzła Akapit. Poziom konspektu stylu akapitu jest reprezentowany w ten sam sposób przez właściwość `Style.ParagraphFormat`.</p>

<p>{{% alert color="primary" %}}</p>

<p>Należy pamiętać, że wbudowane style nagłówków, takie jak Nagłówek 1, mają obowiązkowy poziom konspektu ustawiony w ustawieniach stylu.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T przełącznik)* | <p>Ten przełącznik umożliwi użycie niestandardowych stylów podczas zbierania wpisów do wykorzystania w spisie treści. Jest to często używane w połączeniu z przełącznikiem \O, aby uwzględnić niestandardowe style wraz z wbudowanymi stylami nagłówków w spisie treści.<br>Parametry przełącznika należy ująć w znakach mowy. Można uwzględnić wiele niestandardowych stylów. Dla każdego stylu należy podać nazwę, przecinek i poziom, na jakim styl powinien pojawiać się w pliku `TOC`. Dalsze style również oddzielone są przecinkiem.<br>Na przykład</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>użyje treści stylizowanej na CustomHeading1 jako zawartość poziomu 1 w `TOC` i CustomHeading2 jako zawartość poziomu 2.</p> |
| **Use TC Fields**<br>*(Przełączniki \F i \L)* | <p>W starszych wersjach Microsoft Word jedynym sposobem na zbudowanie `TOC` było użycie pól TC. Pola te są wstawiane w dokumencie w sposób ukryty, nawet jeśli wyświetlane są kody pól. Zawierają one tekst, który powinien być wyświetlony we wpisie i z nich budowany jest `TOC`. Ta funkcja nie jest obecnie używana zbyt często, ale w niektórych przypadkach może być przydatna do uwzględnienia wpisów w `TOC`, które nie są wcięte tak, aby były widoczne w dokumencie.<br>Po wstawieniu pola te wydają się ukryte, nawet gdy wyświetlane są kody pól. Nie można ich zobaczyć bez pokazania ukrytej zawartości. Aby wyświetlić te pola, należy zaznaczyć opcję Pokaż formatowanie akapitu.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Pola te można wstawić do dokumentu w dowolnej pozycji, tak jak każde inne pole i są reprezentowane przez wyliczenie `FieldType.FieldTOCEntry`.<br>Przełącznik \F w `TOC` służy do określenia, że pola TC powinny być używane jako wpisy. Sam przełącznik bez dodatkowego identyfikatora oznacza, że uwzględnione zostanie dowolne pole TC w dokumencie. Każdy dodatkowy parametr, często pojedyncza litera, będzie oznaczać, że w spisie treści zostaną uwzględnione tylko pola TC, które mają pasujący przełącznik \f. Na przykład *</p>

<p>{{< highlight csharp >}}{ TOC \f t }{{< /highlight >}}</p>

<p>będzie zawierać tylko pola Najlepsi Współtwórców, takie jak</p>

<p>{{< highlight csharp >}}{   TC \f t }{{< /highlight >}}</p>

<p>Pole `TOC` ma również powiązany przełącznik, przełącznik "\L" określa, że uwzględnione zostaną tylko pola TC z poziomami w określonym zakresie.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Same pola `TC` również mogą mieć ustawionych kilka przełączników. To są:</p>

<p>- *\F – Wyjaśniono powyżej.*</p>

<p>- *\L – Określa, na którym poziomie w modelu `TOC` pojawi się to pole TC. Model `TOC`, który korzysta z tego samego przełącznika, będzie uwzględniał to pole TC tylko wtedy, gdy będzie się ono mieścić w określonym zakresie.*</p>

<p>- _\N – Numeracja stron dla tego wpisu `TOC` nie jest wyświetlana. Przykładowy kod wstawiania pól TC można znaleźć w następnej sekcji.</p> |

### Przełączniki związane z wyglądem

|  Przełącznik | Opis |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N Przełącznik)* | <p>Ten przełącznik służy do ukrywania numerów stron na niektórych poziomach spisu treści. Można na przykład zdefiniować</p>

<p>{{< highlight csharp >}}{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>a numery stron na wpisach poziomów 3 i 4 zostaną ukryte wraz z kropkami wiodącymi (jeśli występują). Aby określić tylko jeden poziom, należy nadal stosować zakres, np. "1-1" wykluczy numery stron tylko dla pierwszego poziomu.<br>Nie podanie zakresu poziomów spowoduje pominięcie numerów stron dla wszystkich poziomów w spisie treści. Jest to przydatne do ustawienia podczas eksportowania dokumentu do formatu HTML lub podobnego. Dzieje się tak dlatego, że formaty oparte na HTML nie mają koncepcji strony i dlatego nie wymagają numeracji stron.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H Przełącznik)* | <p>Ten przełącznik określa, że wpisy `TOC` są wstawiane jako hiperłącza. Podczas przeglądania dokumentu w formacie Microsoft Word wpisy te będą nadal wyświetlane jako zwykły tekst w formacie `TOC`, ale zawierają hiperłącza, dzięki czemu można ich użyć do nawigacji do pozycji oryginalnego wpisu w dokumencie za pomocą *Ctrl + lewy przycisk myszy* w Microsoft Word. Gdy ten przełącznik jest uwzględniony, łącza te są zachowywane również w innych formatach. Na przykład w formatach opartych na HTML, w tym EPUB i formatach renderowanych, takich jak PDF i XPS, zostaną one wyeksportowane jako działające linki.<br>Bez tego przełącznika `TOC` we wszystkich tych wyjściach zostanie wyeksportowany jako zwykły tekst i nie będzie demonstrował takiego zachowania. Jeśli dokument zostanie otwarty w programie MS Word, tekstu wpisów również nie będzie można kliknąć w ten sposób, ale numery stron nadal można wykorzystać do przejścia do oryginalnego wpisu.</p>

<p>![working-with-table-of-contents-titles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P Przełącznik)* | <p>Przełącznik ten umożliwia łatwą zmianę treści oddzielającej tytuł wpisu od numeracji stron w spisie treści. Po tym przełączniku należy określić używany separator i ująć go w znaki mowy.<br>W przeciwieństwie do tego, co jest udokumentowane w dokumentacji pakietu Office, można użyć tylko jednego znaku zamiast maksymalnie pięciu. Dotyczy to zarówno MS Word, jak i Aspose.Words.<br>Używanie tego przełącznika nie jest zalecane, ponieważ nie pozwala na dużą kontrolę nad sposobem oddzielania wpisów i numerów stron w spisie treści. Zamiast tego zaleca się edytowanie odpowiedniego stylu `TOC`, takiego jak `StyleIdentifier.TOC1`, a następnie edytowanie stylu linii odniesienia z dostępem do określonych elementów czcionek itp. Dalsze szczegóły, jak to zrobić, można znaleźć w dalszej części artykułu.</p>

<p>![working-with-table-of-contents-toc](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W Przełącznik)* | <p>Użycie tego przełącznika określi, że wszelkie wpisy zawierające znak tabulacji, na przykład nagłówek posiadający tabulator na końcu wiersza, zostaną zachowane jako właściwy znak tabulacji podczas wypełniania spisu treści. Oznacza to, że funkcja znaku tabulacji będzie dostępna w modelu `TOC` i będzie można jej użyć do sformatowania wpisu. Na przykład niektóre wpisy mogą wykorzystywać tabulatory i znaki tabulacji w celu równomiernego rozmieszczenia tekstu. Dopóki odpowiedni poziom `TOC` definiuje równoważne tabulatory, wygenerowane wpisy `TOC` będą wyświetlane z podobnymi odstępami.<br><br>W tej samej sytuacji, jeśli ten przełącznik nie został zdefiniowany, znaki tabulacji zostaną przekonwertowane na białe znaki odpowiadające niedziałającym tabulatorom. Dane wyjściowe nie będą wówczas wyświetlane zgodnie z oczekiwaniami.</p>

<p>![working-with-table-of-contents-aspose](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X Przełącznik)* | <p>Podobnie do przełącznika powyżej, ten przełącznik określa, że nagłówki rozciągające się na wiele wierszy (przy użyciu znaków nowego wiersza, a nie oddzielnych akapitów) zostaną zachowane w takiej postaci, w jakiej znajdują się w wygenerowanym spisie treści. Na przykład nagłówek, który ma być rozłożony na wiele wierszy, może zawierać znak nowego wiersza (Ctrl + Enter lub `ControlChar.LineBreak`), aby oddzielić treść w różnych wierszach. Po określeniu tego przełącznika wpis w `TOC` zachowa te nowe znaki wiersza, jak pokazano poniżej.<br><br>W tej sytuacji, jeśli przełącznik nie jest zdefiniowany, znaki nowej linii są konwertowane na pojedynczy biały znak.</p>

<p>![working-with-table-of-contents-aspose-words](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## Wstaw pola TC

Możesz wstawić nowe pole TC w bieżącej pozycji [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), wywołując metodę [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) i podając nazwę pola jako "TC" wraz ze wszystkimi potrzebnymi przełącznikami. Poniższy przykład pokazuje, jak wstawić pole `TC` do dokumentu za pomocą [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTCField.py" >}}


## Modyfikuj spis treści

Formatowanie wpisów w `TOC` nie wykorzystuje oryginalnych stylów zaznaczonych wpisów, zamiast tego każdy poziom jest formatowany przy użyciu równoważnego stylu `TOC`. Na przykład pierwszy poziom w `TOC` jest sformatowany w stylu **Spis treści1**, drugi poziom w stylu **Spis treści2** i tak dalej. Oznacza to, że aby zmienić wygląd `TOC`, te style muszą zostać zmodyfikowane. W Aspose.Words te style są reprezentowane przez niezależny od ustawień regionalnych [StyleIdentifier.TOC1](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc1) aż do [StyleIdentifier.TOC9](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc9) i można je pobrać z kolekcji [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) za pomocą tych identyfikatorów.

Po pobraniu odpowiedniego stylu dokumentu można zmodyfikować formatowanie tego stylu. Wszelkie zmiany w tych stylach zostaną automatycznie odzwierciedlone w spisie treści w dokumencie. Poniższy przykład zmienia właściwość formatowania używaną w stylu `TOC` pierwszego poziomu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeStyleOfTOCLevel.py" >}}

Warto również zauważyć, że wszelkie bezpośrednie formatowanie akapitu (zdefiniowane w samym akapicie, a nie w stylu) oznaczone jako dołączane do `TOC` zostanie skopiowane we wpisie w spisie treści. Na przykład, jeśli styl Nagłówek 1 jest używany do oznaczania treści w formacie `TOC` i ten styl ma formatowanie pogrubione, a akapit ma również bezpośrednio zastosowane formatowanie kursywą. Wynikowy wpis `TOC` nie będzie pogrubiony, ponieważ jest to część formatowania stylu, jednak będzie zapisany kursywą, ponieważ jest sformatowany bezpośrednio w akapicie.

Można także kontrolować formatowanie separatorów używanych pomiędzy każdym wpisem a numerem strony. Domyślnie jest to linia przerywana rozciągnięta wzdłuż numeracji stron za pomocą znaku tabulacji i prawego tabulatora ustawionego blisko prawego marginesu.

Korzystając z klasy [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) pobranej dla konkretnego poziomu `TOC`, który chcesz zmodyfikować, możesz także zmodyfikować sposób ich wyświetlania w dokumencie. Aby zmienić sposób wyświetlania, należy najpierw wywołać format [Style.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/style/paragraph_format/) w celu pobrania formatowania akapitu dla danego stylu. Z tego można pobrać tabulatory, wywołując [ParagraphFormat.tab_stops](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/tab_stops/) i modyfikując odpowiedni tabulator. Stosując tę samą technikę, samą zakładkę można przesuwać lub usuwać razem. Poniższy przykład pokazuje, jak zmienić położenie prawego tabulatora w akapitach związanych z `TOC`.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeTOCTabStops.py" >}}

## Usuń spis treści z dokumentu

Spis treści można usunąć z dokumentu, usuwając wszystkie węzły znalezione pomiędzy węzłami [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) i [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) pola `TOC`. Poniższy kod to demonstruje. Usunięcie pola `TOC` jest prostsze niż w przypadku zwykłego pola, ponieważ nie śledzimy pól zagnieżdżonych. Zamiast tego sprawdzamy, czy węzeł [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) jest typu [FieldType.FIELD_TOC](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_toc), co oznacza, że napotkaliśmy koniec bieżącego spisu treści. Technikę tę można w tym przypadku zastosować bez obawy o zagnieżdżone pola, ponieważ możemy założyć, że w każdym prawidłowo utworzonym dokumencie nie będzie w pełni zagnieżdżonego pola `TOC` w innym polu `TOC`.

Najpierw gromadzone i przechowywane są węzły [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) każdego `TOC`. Następnie wyliczany jest określony `TOC`, tak aby wszystkie węzły w polu zostały odwiedzone i zapisane. Węzły są następnie usuwane z dokumentu. Przykład Below code pokazuje, jak usunąć określony `TOC` z dokumentu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveTOCFromDocument.py" >}}

## Wyodrębnij spis treści

Jeśli chcesz wyodrębnić spis treści z dowolnego dokumentu programu Word, możesz użyć poniższego przykładowego kodu.

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Table of contents.docx")

for field in doc.range.fields :
            
    if (field.type == aw.fields.FieldType.FIELD_HYPERLINK) :
                
        hyperlink = field.as_field_hyperlink()
        if (hyperlink.sub_address != None and hyperlink.sub_address.find("_Toc") == 0) :
                    
            tocItem = field.start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(tocItem.to_string(aw.SaveFormat.TEXT).strip())
            print("------------------")
    
            bm = doc.range.bookmarks.get_by_name(hyperlink.sub_address)
            pointer = bm.bookmark_start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(pointer.to_string(aw.SaveFormat.TEXT))
{{< /highlight >}}
