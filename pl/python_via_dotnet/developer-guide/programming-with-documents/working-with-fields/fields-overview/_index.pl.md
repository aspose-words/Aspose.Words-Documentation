---
title: Przegląd pól w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Przegląd pól
linktitle: Przegląd pól
description: "Dostęp do modyfikowania pól można uzyskać za pomocą Python. Pola dokumentu są ładowane do formatu Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /pl/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Zwykle pole wstawione do Microsoft Word zawiera już aktualną wartość. Przykładowo, jeżeli polem jest formuła lub numer strony, będzie ona zawierała poprawną obliczoną wartość dla danej wersji dokumentu. Ale jeśli masz aplikację, która generuje lub modyfikuje dokument z polami (na przykład łączy dwa dokumenty lub wypełnia danymi), to aby dokument był użyteczny, idealnie byłoby, gdyby wszystkie pola zostały zaktualizowane.

Pole składa się z:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Węzły początku pola i separatora służą do objęcia treści tworzącej kod pola (zwykle jako zwykły tekst)
- Separator pola i koniec pola obejmują wynik pola. Może składać się z różnych typów treści, począwszy od ciągów tekstu, przez akapity, aż po tabele.
- Niektóre pola mogą nie mieć separatora, co oznacza, że cała treść stanowi kod pola.
- Kod pola definiuje zachowanie pola i składa się z identyfikatora pola i często innych parametrów, takich jak nazwa pola i przełączniki.
- Wynik pola zawiera najnowszą ocenę pola. Wartość ta jest zapisywana w wyniku pola i jest wyświetlana użytkownikowi. Niektóre pola mogą nie mieć żadnych wyników, dlatego nie będą wyświetlane w dokumencie. Podobnie niektóre pola mogą nie zostać jeszcze zaktualizowane, dlatego też nie będą miały żadnych wyników.

Oto widok przechowywania pola w formacie Aspose.Words na przykładzie "*DocumentExplorer"*, który można znaleźć w [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words to biblioteka klas przeznaczona do przetwarzania dokumentów Microsoft Word po stronie serwera i obsługuje pola w następujący sposób:

- Wszystkie pola w dokumencie zostają zachowane podczas otwierania/zapisywania i konwersji.
- Istnieje możliwość aktualizacji wyników niektórych z najpopularniejszych dziedzin.

## Pola w Microsoft Word

Pola w dokumentach Microsoft Word są złożone. Istnieje ponad 50 typów pól (każdy wymaga własnej procedury obliczania wyników), formuły i wyrażenia, zakładki i odniesienia, funkcje i różne przełączniki. Pola można także zagnieżdżać. Zwykle po otwarciu dokumentu wynik pola (wartość pola) jest pokazywany dla wszystkich pól w dokumencie. Możesz przełączyć wyświetlanie wyników pól lub kodów pól w Microsoft Word dla wszystkich pól, naciskając **ALT+F9**.

| Kod pola | Wynik pola |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Wstawianie pól w Microsoft Word

Aby wstawić pole w formacie Microsoft Word:

1. Kliknij menu **Insert**.
1. Kliknij menu rozwijane **Quick Parts**
1. Wybierz **Field**
1. Pojawia się ekran umożliwiający wprowadzenie szczegółów pola. Po lewej stronie znajduje się lista możliwych pól, a po prawej stronie znajduje się ekran umożliwiający wizualną edycję właściwości pola.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Dodatkowo możesz nacisnąć przycisk **Field Codes**, który umożliwia bezpośrednie wpisanie kodu pola.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Przełączniki można wstawić także za pomocą przycisku **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Za pomocą dowolnej metody wypełnij żądane pola odpowiednimi informacjami, a następnie naciśnij **Ok**.
1. Pole wstawiane jest do dokumentu w aktualnej pozycji kursora.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Aktualizacja pól w Microsoft Word

Aby zaktualizować pojedyncze pole w Microsoft Word:

1. Przesuń kursor w pole, które chcesz zaktualizować.
1. Naciśnij **F9**, aby zaktualizować pole.

Aby zaktualizować wszystkie pola w Microsoft Word:

1. Naciśnij **Ctrl+A**, aby zaznaczyć całą zawartość dokumentu.
1. Naciśnij **F9**, aby zaktualizować wszystkie pola znalezione w ramach zaznaczenia.

### Przełączanie między wyświetlaniem kodu pola a wynikiem pola

Aby przełączyć kody pól pojedynczego pola w Microsoft Word:

1. Przesuń kursor w żądane pole.
1. Naciśnij **SHIFT+F9**, aby przełączyć kod pola tylko dla tego pola.

Aby przełączyć kody pól wszystkich pól w Microsoft Word:

1. Naciśnij **ALT+F9**

### Konwersja pól na tekst statyczny w Microsoft Word

Aby przekonwertować pole dynamiczne na tekst statyczny w formacie Microsoft Word:

1. Przesuń kursor w pole, które chcesz przekonwertować.
1. Naciśnij **Ctrl+Shift+F9**, aby przekonwertować pola na tekst statyczny.

### Usuwanie pola w Microsoft Word

Aby usunąć pole w Microsoft Word:

1. Wybierz całą treść tworzącą pole. Jeśli wyświetlane są kody pól, należy również wybrać nawiasy otwierające i końcowe.
1. Naciśnij **Delete**, aby usunąć całe pole.

## Pola w Aspose.Words

Kiedy dokument jest ładowany do Aspose.Words, pola dokumentu są ładowane do Aspose.Words Document Object Model jako zestaw oddzielnych komponentów (węzłów). Pojedyncze pole jest ładowane jako zbiór węzłów [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) i [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) wraz z zawartością pomiędzy tymi węzłami. Jeśli pole nie ma wyniku w postaci pola, nie będzie węzła [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Wszystkie te węzły zawsze znajdują się w linii (jako elementy podrzędne [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) lub [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Treść tworząca kod pola jest przechowywana jako węzły [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) pomiędzy [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) i [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Wynik pola jest przechowywany pomiędzy węzłami [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) i [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) i może składać się z różnych typów treści. Zwykle wynik pola zawiera tylko tekst składający się z węzłów [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), jednak możliwe jest, że węzeł [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) zostanie umieszczony w zupełnie innym akapicie, co spowoduje, że wynik pola będzie składał się również z węzłów na poziomie bloków, takich jak węzły [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) i [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

W Aspose.Words każdy z węzłów **FieldXXX** pochodzi z formatu [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Ta klasa udostępnia właściwość umożliwiającą sprawdzanie typu pola reprezentowanego przez określony węzeł za pomocą właściwości [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Na przykład [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) reprezentuje pole scalania w dokumencie.

{{% alert color="primary" %}}

W dokumencie programu Word istnieją pewne szczególne pola, które nie są importowane do Aspose.Words jako zbiór węzłów **FieldXXX**. Na przykład pole `LINK` i pole `INCLUDEPICTURE` są importowane do Aspose.Words jako obiekt [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Obiekt ten zapewnia właściwości umożliwiające pracę z danymi obrazu zwykle przechowywanymi w tych polach.

Pola formularzy są również importowane do Aspose.Words jako osobna klasa specjalna. Klasa [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) reprezentuje pole formularza w dokumencie programu Word i udostępnia dodatkowe metody specyficzne dla pola formularza.

{{% /alert %}}

### Pola obsługiwane podczas aktualizacji

W aktualnej wersji Aspose.Words obsługiwane jest obliczanie następujących pól:

- = (pole formuły)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (w tym TOT i TOF)
-TC

### Wyrafinowane parsowanie

Aspose.Words podąża za sposobem, w jaki Microsoft Word przetwarza pola, dzięki czemu poprawnie obsługuje:

- Pola zagnieżdżone
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Argument pola może być wynikiem pola zagnieżdżonego.
- Pola można zagnieżdżać w kodzie pola, jak również w wyniku pola.
- Spacje/bez spacji, cudzysłowy/bez cudzysłowów, znaki ucieczki w polach itp.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Pola obejmujące wiele akapitów.

#### Pola formuł

Aspose.Words zapewnia bardzo poważną implementację silnika formuł i obsługuje następujące elementy:

- Operatory arytmetyczne i logiczne:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funkcje:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Odniesienia do zakładek:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Przełączniki formatowania liczb:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Obsługiwane są następujące funkcje w wyrażeniach: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### Pola `IF` i `COMPARE`

Tylko niektóre wyrażenia `IF`, które Aspose.Words może łatwo obliczyć, powinny dać ci wyobrażenie o tym, jak potężna jest ta funkcja:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### Pola `DATE` i `TIME`

Aspose.Words obsługuje wszystkie przełączniki formatowania daty i godziny dostępne w formacie Microsoft Word, niektóre przykłady to:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Pola Mail Merge

Aspose.Words nie nakłada żadnych ograniczeń na złożoność pól mail merge w dokumentach i obsługuje zagnieżdżone pola `IF` i formuły, a nawet może obliczyć nazwę pola scalania za pomocą formuły.

Kilka przykładów pól mail merge obsługiwanych przez Aspose.Words:

- Przełączniki polowe Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Zagnieżdżone pola scalania w formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Oblicz nazwę pola scalania w czasie wykonywania:
  `MERGEFIELD { `IFF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Warunkowe przejście do następnego rekordu w źródle danych:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Formatuj przełączniki

Pole w dokumencie może mieć przełączniki formatowania, które określają sposób formatowania wartości wynikowej. Aspose.Words obsługuje następujące przełączniki formatu:

- @ - formatowanie daty i godziny
- \\\# - formatowanie liczb
- \\\\\\\\* Czapki
- \\\\\\\\* FirstCap
- \\\\\\\\* Niżej
- \\\\\\\\* Górna
- \\\\\\\\* CHARFORMAT – formatuj wynik według pierwszego znaku kodu pola.
- \\\\\\\\* MERGEFORMAT – sformatuj wynik zgodnie ze sposobem formatowania starego wyniku.

#### Date i formatowanie liczb w polach

Kiedy Aspose.Words oblicza wynik pola, często musi przeanalizować ciąg znaków na liczbę lub wartość daty, a także sformatować go z powrotem na ciąg znaków. Domyślnie Aspose.Words używa bieżącej kultury wątku do przeprowadzania analizy i formatowania podczas obliczania wartości pól podczas aktualizacji pola i mail merge. Dostępne są również opcje w postaci klasy [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/), które pozwalają na dalszą kontrolę nad tym, która kultura jest używana podczas aktualizacji pola.

- Domyślnie właściwość [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) jest ustawiona na [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread), która formatuje pola przy użyciu bieżącej kultury wątku.
- Tę właściwość można ustawić na [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code), aby zamiast tego do formatowania używany był język ustawiony na podstawie kodu pola.

#### Formatowanie przy użyciu kultury bieżącego wątku

Aby kontrolować kulturę używaną podczas obliczania pola, wystarczy użyć metody **locale.setlocale** w celu ustawienia wybranej kultury przed wywołaniem obliczeń pola.
Poniższy przykład pokazuje, jak zmienić kulturę używaną w formatowaniu pól podczas aktualizacji.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Użycie bieżącej kultury do formatowania pól umożliwia systemowi łatwe i spójne kontrolowanie sposobu formatowania wszystkich pól w dokumencie podczas aktualizacji pól.

#### Formatowanie przy użyciu kultury w dokumencie

Z drugiej strony Microsoft Word formatuje każde pole w oparciu o język tekstu znalezionego w polu (w szczególności kod pola). Czasami podczas aktualizacji pola może to być pożądane zachowanie, na przykład jeśli masz zglobalizowane dokumenty zawierające treść złożoną z wielu różnych języków i chcesz, aby każde pole honorowało ustawienia regionalne użyte w tekście. Aspose.Words obsługuje również tę funkcję.

Klasa [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) udostępnia właściwość [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) zawierającą elementy, których można używać do kontrolowania sposobu aktualizowania pól w dokumencie. Poniższy przykład pokazuje, jak określić, skąd zostanie wybrana kultura używana do formatowania daty podczas aktualizacji pola i mail merge.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Znajdowanie kodu pola i wyniku pola

Pole wstawione za pomocą [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) zwraca obiekt [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Jest to klasa fasady, która udostępnia przydatne metody szybkiego znajdowania takich właściwości pola. Uwaga, jeśli szukasz tylko nazw pól scalania w dokumencie, możesz zamiast tego użyć wbudowanej metody [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). Poniższy przykład pokazuje, jak uzyskać nazwy wszystkich pól scalania w dokumencie.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Jak zmienić nazwę pola scalania

Poniższy przykład pokazuje, jak zmienić nazwę pól scalania w dokumencie programu Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
