---
title: Praca z tabelą treści w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z tabelą treści
linktitle: Praca z tabelą treści
description: "Szczegółowe informacje dotyczące tabeli treści. Jak tworzyć i modyfikować `TOC` użycie pola Java."
type: docs
weight: 170
url: /pl/java/working-with-table-of-contents/
---

Często będziesz pracował z dokumentami zawierającymi tabelę treści (TOC). Stosowanie Aspose.Words można umieścić własną tabelę treści lub całkowicie odbudować istniejącą tabelę treści w dokumencie za pomocą kilku linii kodu.

Artykuł ten przedstawia sposób pracy z tabelą pola treści i pokazuje:

- Jak włożyć nowy TOC.
- Aktualizacja nowych lub istniejących TOC w dokumencie.
- Określić przełączniki do sterowania formatowaniem i ogólną strukturą TOC.
- Jak modyfikować style i wygląd tabeli treści.
- Jak usunąć cały `TOC` pole wraz ze wszystkimi wpisami z dokumentu.

## Wstaw tabelę treści programowo

Można wstawić `TOC` (tabela treści) pole do dokumentu w bieżącej pozycji przez wywołanie [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) Metoda.

Tabela treści w dokumencie Word może być zbudowana na kilka sposobów i sformatowana przy użyciu różnych opcji. Pole włącza, że przejść do kontroli metody sposób, w jaki tabela jest budowana i wyświetlana w dokumencie.

Domyślne przełączniki, które są używane w `TOC` dodany Microsoft Word są **""\ o" 1-3\ h\ z\ u "**. Opisy tych przełączników oraz lista obsługiwanych przełączników można znaleźć później w artykule. Można użyć tego przewodnika, aby uzyskać poprawne przełączniki lub jeśli masz już dokument zawierający podobne `TOC` że chcesz można pokazać kody pola (* AlAT + F9 *) i skopiować przełączniki bezpośrednio z pola.

Poniższy przykład kodu pokazuje, jak umieścić w dokumencie pole tabeli treści:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Poniższy przykład kodu pokazuje, jak umieścić tabelę treści (TOC) w dokumencie z wykorzystaniem stylów nagłówków jako wpisów:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Kod pokazuje, że nowa tabela zawartości jest włożona do pustego dokumentu. W [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klasa jest następnie stosowana do umieszczania niektórych zawartości próbki formatowania z odpowiednimi stylami pozycji, które są używane do oznaczania zawartości, która ma być włączona do TOC. Następne linie następnie populacja `TOC` poprzez aktualizację pól i układu strony dokumentu.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Bez metod używanych w przykładzie, przy otwieraniu dokumentu wyjściowego, można znaleźć `TOC` pole, ale bez widocznej zawartości. To dlatego, że `TOC` pole zostało wstawione, ale nie jest jeszcze zaludnione, dopóki nie zostanie zaktualizowane w dokumencie. Więcej informacji na ten temat znajduje się w następnej części.

{{% /alert %}}

## Aktualizacja tabeli treści

Aspose.Words pozwala na pełną aktualizację `TOC` tylko kilka linii kodu. Można to zrobić, aby zaludnić nowo wprowadzone `TOC` lub do aktualizacji istniejącego `TOC` po dokonaniu zmian w dokumencie.

W celu aktualizacji `TOC` pola w dokumencie:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Należy pamiętać, że te dwie metody aktualizacji są wymagane do wywołania w tej kolejności. W przypadku odwrócenia tabeli zawartości zostanie zaludniona, ale nie zostaną wyświetlone żadne numery stron. Można zaktualizować dowolną liczbę różnych TOC. Metody te będą automatycznie aktualizować wszystkie TOC znalezione w dokumencie.

Poniższy przykład kodu pokazuje, jak całkowicie odbudować `TOC` pola w dokumencie poprzez wywołanie aktualizacji pola:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

Pierwsze wezwanie do [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) będzie budować <span notrans="<span notrans=" `TOC`"=""></span>", > wszystkie wpisy tekstowe są zaludnione i `TOC` wydaje się prawie kompletny. Brakuje tylko numerów stron, które na razie są wyświetlane z "?".

Drugie wezwanie do [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) będzie budować układ dokumentu w pamięci. Należy to zrobić, aby zebrać numery stron wpisów. Prawidłowe numery stron obliczone na podstawie tego wezwania są następnie wstawiane do TOC.

## Użyj przełączników do kontroli tabeli treści zachowania

Podobnie jak w przypadku innych pól, `TOC` pole może akceptować przełączniki zdefiniowane w kodzie pola, które kontrolują sposób budowy tabeli zawartości. Niektóre przełączniki są używane do kontroli, które wpisy są zawarte i na jakim poziomie, podczas gdy inne są wykorzystywane do kontroli wyglądu TOC. Przełączniki mogą być łączone razem, aby umożliwić produkcję złożonej tabeli zawartości.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Domyślnie powyższe przełączniki są włączone przy wstawianiu domyślnego `TOC` w dokumencie. A `TOC` bez przełączników będzie zawierać zawartość z built- w stylach nagłówków (tak jakby ustawiono przełącznik\ O).

Dostępne `TOC` przełączniki obsługiwane przez Aspose.Words są wymienione poniżej, a ich zastosowania są szczegółowo opisane. Można je podzielić na oddzielne sekcje w zależności od rodzaju. Przełączniki w pierwszej sekcji określają, jaką zawartość należy włączyć do `TOC` i przełączniki w drugiej części kontrolować wygląd TOC.

Jeśli przełącznik nie jest tutaj wymieniony, to jest on obecnie nieobsługiwany. Wszystkie przełączniki będą obsługiwane w przyszłych wersjach. Dodamy dalsze wsparcie do każdego wydania.

### Przełączniki znaczników wejścia

|  Przełącz | Opis |
|  :-  |  :-  |
| **Heading Styles** <br/> * (\ O przełącznik) * <br/> | <p>Ten przełącznik definiuje, że `TOC` powinien być zbudowany z budynku w stylu nagłówkowym. W Microsoft Word, są zdefiniowane w dziale 1 - Treść 9. W Aspose.Words style te są reprezentowane przez odpowiednie wyliczenie StyleIdentifier. To wyliczenie reprezentuje niezależny od lokalizacji identyfikator stylu, na przykład, `StyleIdentifier.Heading1` reprezentuje styl kursu 1. Korzystając z tego, formatowanie i właściwości stylu można pobrać z kolekcji Style dokumentu. Odpowiednie klasy stylu można pobrać z `Document.Styles` kolekcja przy użyciu właściwości indeksowanej typu StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Wszelkie treści sformatowane tymi stylami są zawarte w tabeli treści. Poziom nagłówka określi odpowiedni poziom hierarchiczny wpisu do TOC. Na przykład, ustęp z pozycji 1 stylu będą traktowane jako pierwszy poziom w `TOC` mając na uwadze, że ustęp z pozycją 2 będzie traktowany jako kolejny poziom w hierarchii i tak dalej.</p>
 |
| **Outline Levels** <br/> * (\ U switch) * <br/> | <p>Każdy ustęp może określić poziom zarysu w ramach opcji paragrafu.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Ustawienie to określa, który poziom niniejszego ustępu należy traktować w hierarchii dokumentów. Jest to powszechnie stosowana praktyka stosowana do łatwej struktury układu dokumentu. Ta hierarchia może być postrzegana przez zmianę na Widok ogólny w Microsoft Word. Podobnie jak w przypadku stylów nagłówków, poza poziomem "Tekst nadwozia" mogą istnieć poziomy 1 - 9. Wykres poziomów 1 - 9 pojawi się w `TOC` w odpowiednim poziomie hierarchii <br/>Wszelkie treści o poziomie zarysu określonym w stylu akapitu lub bezpośrednio na samym akapicie są zawarte w TOC. W Aspose.Words poziom zarysu jest reprezentowany przez `ParagraphFormat.OutlineLevel` właściwość węzła paragrafu. Konkretny poziom stylu paragrafu jest reprezentowany w ten sam sposób przez `Style.ParagraphFormat` nieruchomości.</p>

<p>{{% alert color="primary" %}}</p>

<p>Należy zauważyć, że w stylach built- in pozycji, takich jak pozycja 1, istnieje obowiązkowy poziom zarysu w ustawieniach stylu.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> * (\ T przełącznik) * <br/> | <p>Ten przełącznik pozwoli na stosowanie własnych stylów podczas zbierania wpisów w TOC. Jest to często używane w połączeniu z przełącznikiem\ O do włączenia stylów niestandardowych wraz z built- w stylach nagłówków w TOC. <br/>Parametry przełącznika powinny być dołączone do znaków mowy. Wiele stylów niestandardowych mogą być włączone, dla każdego stylu, nazwa powinna być określona po przecinku, a następnie poziom, że styl powinien pojawić się w `TOC` jak. Kolejne style są również oddzielone przecinkiem. <br/>Na przykład</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>będzie używać treści stylizowane z CustomHeading1 jako zawartość poziomu 1 w `TOC` i CustomHeading2 jako poziom 2.</p>
 |
| Użyj pól TC <br/> * (\ F i\ L przełączniki) * <br/> | <p>W starszych wersjach Microsoft Word, jedyny sposób na zbudowanie `TOC` było wykorzystanie pól TC. Pola te są wpisywane do dokumentu, nawet gdy są wyświetlane kody pola. Zawierają one tekst, który powinien być wyświetlany w pozycji i `TOC` jest zbudowany z nich. Funkcjonalność ta nie jest obecnie stosowana bardzo często, ale może być nadal przydatne w niektórych przypadkach do włączenia wpisów w `TOC` które nie są widoczne w dokumencie. <br/>Po wstawianiu pola te pojawiają się ukryte nawet po wyświetleniu kodów pola. Nie można ich zobaczyć bez pokazywania ukrytych treści. Aby zobaczyć te pola, należy wybrać formatowanie fragmentów.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Pola te mogą być umieszczone w dokumencie na dowolnej pozycji, jak każde inne pole i są reprezentowane przez `FieldType.FieldTOCEntry` wyliczenie.<br/>Przełącznik\ F w `TOC` jest używany do określenia, że pola TC powinny być używane jako wpisy. Przełącznik samodzielnie bez dodatkowego identyfikatora oznacza, że zostanie włączone pole TC w dokumencie. Każdy dodatkowy parametr, często pojedyncza litera, będzie oznaczał, że tylko pola TC z dopasowanym przełącznikiem\ f zostaną włączone do TOC. Na przykład *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>będzie obejmować tylko pola TC, takie jak</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>W `TOC` pole ma również związany przełącznik, przełącznik "\ L" określa, że tylko pole TC z poziomami w określonym zakresie są włączone.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>W `TC` pola mogą również mieć {several, `multiple`, a few, `many`, numerous} Zestaw przełączników. Są to:</p>

<p>Wyjaśnione powyżej. *</p>

<p>-\ L - Określa jaki poziom `TOC` to pole TC pojawi się w. A `TOC` który używa tego samego przełącznika będzie zawierał to pole TC tylko wtedy, gdy znajduje się w określonym zakresie.</p>

<p>- Nie. Numeracja strony dla tego `TOC` wpis nie jest wyświetlany. Przykładowy kod sposobu wstawiania pól TC można znaleźć w następnej sekcji.</p>
 |

### Wyłączniki związane z wyglądem

|  Przełącz | Opis |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> * (\ N Switch) * | <p>Ten przełącznik jest używany do ukrycia numerów stron dla niektórych poziomów TOC. Na przykład, możesz zdefiniować</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>a numery stron na wpisach poziomów 3 i 4 będą ukryte wraz z punktami lidera (jeśli są jakieś). Aby określić tylko jeden poziom należy nadal stosować zakres, na przykład "1-1" wyklucza numery stron tylko dla pierwszego poziomu. <br/>Dostarczanie żadnego zakresu poziomów pominie numery stron dla wszystkich poziomów w TOC. Jest to przydatne przy eksporcie dokumentu do HTML lub podobnego formatu. To dlatego, że formaty oparte na HTML nie mają żadnej koncepcji strony i dlatego nie potrzebują żadnej numeracji strony.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Wstaw jako hiperłącza <br/> * (\ H Switch) * | <p>Ten przełącznik określa, że `TOC` wpisy dodaje się jako hiperłącza. Podczas przeglądania dokumentu w Microsoft Word te wpisy nadal pojawiają się jako normalny tekst wewnątrz `TOC` ale są hiperpołączone i w ten sposób mogą być wykorzystywane do nawigacji do pozycji oryginalnej pozycji w dokumencie za pomocą * Ctrl + Left Click * in Microsoft Word. Po włączeniu tego przełącznika linki te są również przechowywane w innych formatach. Na przykład w formatach HTML, w tym EPUB i renderowane formaty, takie jak PDF i XPS, będą one eksportowane jako linki robocze. <br/>Bez tego zestawu przełącznika, `TOC` we wszystkich tych wyjściach zostanie wywieziony jako zwykły tekst i nie zademonstruje tego zachowania. Jeśli dokument jest otwarty w MS Word, tekst wpisów nie będzie również w ten sposób można kliknąć, ale numery stron mogą być nadal wykorzystywane do nawigacji do pierwotnego wpisu.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> * (\ P Switch) * <br/> | <p>Ten przełącznik pozwala łatwo zmienić zawartość oddzielającą tytuł wpisu i numeracji strony w TOC. Po tym przełączniku należy podać separator, który ma być użyty, a następnie umieścić go w znakach mowy. <br/>W przeciwieństwie do tego, co jest udokumentowane w dokumentacji Urzędu, można użyć tylko jednego znaku zamiast do pięciu. Dotyczy to zarówno MS Word, jak i Aspose.Words. <br/>Korzystanie z tego przełącznika nie jest zalecane, ponieważ nie pozwala na dużą kontrolę nad tym, czego użyto do oddzielenia wpisów i numerów stron w TOC. Zamiast tego zaleca się edycję odpowiedniego `TOC` styl taki jak `StyleIdentifier.TOC1` i stamtąd edytować styl lidera z dostępem do konkretnych członków czcionki itp. Więcej szczegółów na ten temat można znaleźć później w artykule.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> * (\ W przełącznik) * | <p>Korzystanie z tego przełącznika spowoduje, że wszystkie wpisy, które mają znak zakładki, na przykład, nagłówek, który ma kartę na końcu linii, zostaną zachowane jako właściwy znak zakładki podczas populacji TOC. Oznacza to, że funkcja znaku karty będzie obecna w `TOC` i może być użyty do formatowania wpisu. Na przykład, niektóre wpisy mogą używać tabulacji i znaków tabulacji, aby równomiernie rozłożyć tekst. Tak długo jak odpowiedni `TOC` poziom definiuje równoważną kartę zatrzymuje się następnie wygenerowany `TOC` wpisy pojawią się z podobnym odstępem. <br/><br/>W tej samej sytuacji, jeśli ten przełącznik nie został zdefiniowany, znaki tabulatora będą konwertowane na biały odpowiednik przestrzeni jako niedziałające karty. Wyjście nie byłoby wtedy zgodne z oczekiwaniami.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> * (\ X Switch) * <br/> | <p>Podobnie do powyższego przełącznika, ten przełącznik określa, że nagłówki rozchodzące się na wielu liniach (używając znaków nowej linii, a nie oddzielnych akapitów) będą zachowane tak jak są w wygenerowanym TOC. Na przykład nagłówek, który ma się rozprzestrzeniać po wielu liniach, może używać nowego znaku wiersza (Ctrl + Enter lub `ControlChar.LineBreak`) oddzielenie zawartości na różnych liniach. Z tym przełącznikiem określone, wpis w `TOC` zachowa te nowe znaki linii, jak pokazano poniżej. <br/><br/>W tej sytuacji, jeśli przełącznik nie jest zdefiniowany, nowe znaki linii są zamieniane na pojedynczą białą przestrzeń.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## Wstaw pola TC

Możesz umieścić nowe pole TC w obecnej pozycji `DocumentBuilder` przez wywołanie `DocumentBuilder.InsertField` metoda i określenie nazwy pola jako "TC" wraz z wszelkimi niezbędnymi przełącznikami.

Poniższy przykład kodu pokazuje jak wstawić `TC` pole do dokumentu przy użyciu [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Często dla `TOC` i jest oznakowany `TC` Pole. Łatwym sposobem na to w MS Word jest podkreślenie tekstu i naciśnięcie * ALT + SHIFT + O *. To automatycznie tworzy `TC` pole używając wybranego tekstu. Tę samą technikę można osiągnąć za pomocą kodu. Poniższy kod znajdzie tekst pasujący do wejścia i wstawić `TC` pole w tej samej pozycji co tekst. Kod oparty jest na tej samej technice użytej w artykule. Poniższy przykład kodu pokazuje jak znaleźć i wstawić `TC` pole w tekście w dokumencie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modyfikuj tabelę treści

### Zmień formatowanie stylów

Formatowanie wpisów w `TOC` nie używa oryginalnych stylów zaznaczonych wpisów, zamiast tego każdy poziom jest sformatowany przy użyciu równoważnika `TOC` Styl. Na przykład, pierwszy poziom w `TOC` jest sformatowany z **TOC1** styl, drugi poziom sformatowany z **TOC2** Styl i tak dalej. Oznacza to, że aby zmienić wygląd `TOC` style te muszą zostać zmienione. W Aspose.Words style te są reprezentowane przez niezależne od lokalizacji `StyleIdentifier.TOC1` do `StyleIdentifier.TOC9` i można odzyskać z `Document.Styles` zbieranie przy użyciu tych identyfikatorów.

Po pobraniu odpowiedniego stylu dokumentu można zmodyfikować formatowanie dla tego stylu. Wszelkie zmiany tych stylów zostaną automatycznie odzwierciedlone w TOC w dokumencie.

Poniższy przykład kodu zmienia właściwość formatowania używaną na pierwszym poziomie `TOC` Styl.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Należy również zauważyć, że każde bezpośrednie formatowanie akapitu (określonego w samym akapicie, a nie w stylu), które ma zostać włączone do `TOC` zostaną skopiowane w pozycji w TOC. Na przykład, jeśli styl Nagłówek 1 jest używany do oznaczania zawartości dla `TOC` i ten styl ma Bold formatowanie, podczas gdy paragraf ma również italic formatowanie bezpośrednio stosowane do niego. W rezultacie `TOC` wpis nie będzie śmiały, ponieważ jest to część formatowania stylu, jednak będzie kursywą, ponieważ jest to bezpośrednio sformatowane w ustępie.

Można również kontrolować formatowanie separatorów używanych między każdym wpisem a numerem strony. Domyślnie, jest to linia kropkowana, która jest rozprzestrzeniana na stronę numerowania za pomocą znaku tabulatora i prawa karta zatrzymać ustawiony w pobliżu odpowiedniego marginesu.

Korzystanie z `Style` klasa pobrana dla danej klasy `TOC` poziom, który chcesz zmodyfikować, możesz również zmienić sposób ich wyświetlania w dokumencie.

Aby zmienić, jak to pojawia się najpierw `Style.ParagraphFormat` musi być wezwany do odzyskania akapitu formatowania dla stylu. Z tego, karta zatrzymuje można pobrać przez wywołanie `ParagraphFormat.TabStops` i odpowiedni tab stop zmodyfikowany. Używając tej samej techniki, zakładka może być przesunięta lub całkowicie usunięta.

Poniższy przykład kodu pokazuje jak zmienić pozycję prawej karty zatrzymać w `TOC` powiązane akapity.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Usuń tabelę treści z dokumentu

Tabelę zawartości można usunąć z dokumentu, usuwając wszystkie węzły znalezione między `FieldStart` i FieldEnd węzła `TOC` Pole.

Poniższy kod tego dowodzi. Usunięcie `TOC` pole jest prostsze niż zwykłe pole, ponieważ nie śledzimy zagnieżdżonych pól. Zamiast tego sprawdzimy `FieldEnd` typ węzła `FieldType.FieldTOC` Co oznacza, że natknęliśmy się na koniec obecnego TOC. Technika ta może być stosowana w tym przypadku bez martwienia się o zagnieżdżone pola, ponieważ możemy założyć, że każdy prawidłowo utworzony dokument nie będzie w pełni zagnieżdżony `TOC` pole wewnątrz innego `TOC` Pole.

Po pierwsze `FieldStart` węzły każdego `TOC` są gromadzone i przechowywane. Określone `TOC` jest następnie notowane, więc wszystkie węzły w polu są odwiedzane i przechowywane. Węzły są następnie usuwane z dokumentu. Poniższy przykład kodu pokazuje, jak usunąć określony `TOC` z dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Wyciąg Spis treści

Jeśli chcesz pobrać tabelę zawartości z dowolnego dokumentu Word, można użyć następującej próbki kodu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
