---
title: Przegląd pól w C#
second_title: Aspose.Words dla .NET
articleTitle: Przegląd pól
linktitle: Przegląd pól
description: "Pola zawierają szczegółowe informacje, kody pól i wyniki pól wyjaśnione w formacie Aspose.Words dla .NET."
type: docs
weight: 10
url: /pl/net/fields-overview/
---

Aspose.Words to biblioteka klas przeznaczona do przetwarzania dokumentów Microsoft Word po stronie serwera i obsługuje pola w następujący sposób:

- wszystkie pola w dokumencie zostają zachowane podczas otwierania/zapisywania i konwersji
- możliwa jest aktualizacja wyników większości pól

W tym artykule dowiemy się więcej o strukturze pól, polach obsługiwanych w Aspose.Words i szczegółach pracy z takimi polami.

## Struktura pola

Pole składa się z:

- Węzły początku pola i separatora służą do objęcia treści tworzącej kod pola (zwykle jako zwykły tekst).
- Separator pola i koniec pola obejmują wynik pola. Może składać się z różnych typów treści, począwszy od ciągów tekstu, przez akapity, aż po tabele.
- Niektóre pola mogą nie mieć separatora, co oznacza, że cała treść stanowi kod pola.
- Kod pola definiuje zachowanie pola i składa się z identyfikatora pola i często innych parametrów, takich jak nazwa pola i przełączniki.
- Wynik pola zawiera najnowszą ocenę pola. Wartość ta jest zapisywana w wyniku pola i jest wyświetlana użytkownikowi. Niektóre pola mogą nie mieć żadnych wyników, dlatego nie będą wyświetlane w dokumencie. Podobnie niektóre pola mogą nie zostać jeszcze zaktualizowane, dlatego też nie będą miały żadnych wyników.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Treść tworząca kod pola jest przechowywana jako węzły [Run](https://reference.aspose.com/words/net/aspose.words/run/) pomiędzy [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) i [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). Wynik pola jest przechowywany pomiędzy węzłami **FieldSeparator** i [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) i może składać się z różnych typów treści. Zwykle wynik pola zawiera tylko tekst składający się z węzłów **Run**, jednakże możliwe jest, że węzeł **FieldEnd** będzie zlokalizowany w zupełnie innym akapicie, co spowoduje, że wynik pola będzie zawierał również węzły [Poziomy logiczne węzłów w dokumencie](/words/pl/net/logical-levels-of-nodes-in-a-document/), takie jak **Table** i **Paragraph**.

Oto widok przechowywania pola w formacie Aspose.Words na przykładzie "*DocumentExplorer"*, który można znaleźć w [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Pola w Aspose.Words Document Object Model (DOM)

Kiedy dokument jest ładowany do Aspose.Words, pola dokumentu są ładowane do [Aspose.Words Document Object Model (DOM)](/words/pl/net/aspose-words-document-object-model/) jako zestaw oddzielnych komponentów (węzłów). Pojedyncze pole jest ładowane jako zbiór węzłów **FieldStart**, **FieldSeparator** i **FieldEnd** wraz z zawartością pomiędzy tymi węzłami. Jeśli pole nie ma wyniku w postaci pola, nie będzie węzła **FieldSeparator**. Wszystkie te węzły zawsze znajdują się w linii (jako elementy podrzędne [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) lub [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

W Aspose.Words każdy z węzłów **FieldXXX** pochodzi z formatu [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). Ta klasa udostępnia właściwość umożliwiającą sprawdzanie typu pola reprezentowanego przez określony węzeł za pomocą właściwości [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Na przykład **FieldType.FieldMergeField** reprezentuje pole scalania w dokumencie.

{{% alert color="primary" %}}

W dokumencie programu Word istnieją pewne szczególne pola, które nie są importowane do Aspose.Words jako zbiór węzłów **FieldXXX**. Na przykład pole `LINK` i pole `INCLUDEPICTURE` są importowane do Aspose.Words jako obiekt [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/). Obiekt ten zapewnia właściwości umożliwiające pracę z danymi obrazu zwykle przechowywanymi w tych polach. Aby zaimportować pole `INCLUDEPICTURE` jako węzły **FieldXXX**, należy określić opcję [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) jako **true**.

Pola formularzy są również importowane do Aspose.Words jako osobna klasa specjalna. Klasa [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) reprezentuje pole formularza w dokumencie programu Word i udostępnia dodatkowe metody specyficzne dla pola formularza.

{{% /alert %}}

## Obsługiwane pola

W aktualnej wersji Aspose.Words obsługiwane jest obliczanie następujących pól:

- = (wzór)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Zaawansowane analizowanie pól

Aspose.Words podąża za sposobem, w jaki Microsoft Word przetwarza pola, dzięki czemu poprawnie obsługuje:

- pola zagnieżdżone:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argument pola może być wynikiem pola zagnieżdżonego
- pola mogą być zagnieżdżane zarówno w kodzie pola, jak i w wyniku pola
- spacje/bez spacji, cudzysłowy/bez cudzysłowów, znaki ucieczki w polach itp.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- pola obejmujące wiele akapitów

### Pola formuł

Aspose.Words zapewnia bardzo poważną implementację silnika formuł i obsługuje następujące elementy:

- operatory arytmetyczne i logiczne:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funkcje:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- odniesienia do zakładek:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- przełączniki formatowania liczb:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Obsługiwane są następujące funkcje w wyrażeniach: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### Pola `IF` i `COMPARE`

Tylko niektóre wyrażenia `IF`, które Aspose.Words może łatwo obliczyć, powinny dać ci wyobrażenie o tym, jak potężna jest ta funkcja:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Pola `DATE` i `TIME`

Aspose.Words obsługuje wszystkie przełączniki formatowania daty i godziny dostępne w formacie Microsoft Word, niektóre przykłady to:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Pola Mail Merge

Aspose.Words nie nakłada żadnych ograniczeń na złożoność pól mail merge w dokumentach i obsługuje zagnieżdżone pola `IF` i formuły, a nawet może obliczyć nazwę pola scalania za pomocą formuły.

Kilka przykładów pól mail merge obsługiwanych przez Aspose.Words:

- Przełączniki polowe Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- zagnieżdżone pola scalania w formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- obliczyć nazwę pola scalania w czasie wykonywania:
  `MERGEFIELD { `IFF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- warunkowe przejście do następnego rekordu w źródle danych:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Formatuj przełączniki

Pole w dokumencie może mieć przełączniki formatowania, które określają sposób formatowania wartości wynikowej. Aspose.Words obsługuje następujące przełączniki formatu:

- \\\@ – formatowanie daty i godziny
- \\\# – formatowanie liczb
- \\\* Czapki
- \\\* FirstCap
- \\\* Niżej
- \\\* Górna
- \\\* CHARFORMAT – wynik formatuj według pierwszego znaku kodu pola
- \\\* MERGEFORMAT – sformatuj wynik zgodnie ze sposobem formatowania starego wyniku

### Date i formatowanie liczb w polach

Kiedy Aspose.Words oblicza wynik pola, często musi przeanalizować ciąg znaków na liczbę lub wartość daty, a także sformatować go z powrotem na ciąg znaków. Domyślnie Aspose.Words używa bieżącej kultury wątku do przeprowadzania analizy i formatowania podczas obliczania wartości pól podczas aktualizacji pola i mail merge. Dostępne są również opcje w postaci klasy [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/), które pozwalają na dalszą kontrolę nad tym, która kultura jest używana podczas aktualizacji pola.

- domyślnie właściwość [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) jest ustawiona na [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/), która formatuje pola przy użyciu bieżącej kultury wątku
- tę właściwość można ustawić na [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/), aby zamiast tego do formatowania używany był język ustawiony z kodu pola

### Formatowanie przy użyciu kultury bieżącego wątku

Aby kontrolować kulturę używaną podczas obliczania pola, po prostu ustaw właściwość **Thread.CurrentThread.CurrentCulture** na wybraną kulturę przed wywołaniem obliczenia pola.

Poniższy przykład kodu pokazuje, jak zmienić kulturę używaną w formatowaniu pól podczas aktualizacji:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Użycie bieżącej kultury do formatowania pól umożliwia systemowi łatwe i spójne kontrolowanie sposobu formatowania wszystkich pól w dokumencie podczas aktualizacji pól.

### Formatowanie przy użyciu kultury w dokumencie

Z drugiej strony Microsoft Word formatuje każde pole w oparciu o język tekstu znalezionego w polu (w szczególności kod pola). Czasami podczas aktualizacji pola może to być pożądane zachowanie, na przykład jeśli masz zglobalizowane dokumenty zawierające treść złożoną z wielu różnych języków i chcesz, aby każde pole honorowało ustawienia regionalne użyte w tekście. Aspose.Words obsługuje również tę funkcję.

Klasa [Document](https://reference.aspose.com/words/net/aspose.words/document/) udostępnia właściwość [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) zawierającą elementy, których można używać do kontrolowania sposobu aktualizowania pól w dokumencie.

Poniższy przykład kodu pokazuje, jak określić, gdzie zostanie wybrana kultura używana do formatowania daty podczas aktualizacji pola i mail merge:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
