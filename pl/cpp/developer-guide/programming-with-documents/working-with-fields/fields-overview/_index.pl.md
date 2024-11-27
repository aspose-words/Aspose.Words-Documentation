---
title: Przegląd pól w C++
second_title: Aspose.Words dla C++
articleTitle: Przegląd Pól
linktitle: Przegląd Pól
description: "Pola zawierają szczegóły, kody pól i wyniki pól wyjaśnione w Aspose.Words dla C++."
type: docs
weight: 10
url: /pl/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words to biblioteka klas przeznaczona do przetwarzania dokumentów Microsoft Word po stronie serwera i obsługuje pola w następujący sposób:

- wszystkie pola w dokumencie są zachowywane podczas otwierania / zapisywania i konwersji
- istnieje możliwość aktualizacji wyników większości pól

W tym artykule dowiemy się więcej o strukturze pól, polach obsługiwanych w Aspose.Words oraz szczegółach pracy z takimi polami.

## Struktura Pól

Pole składa się z:

- Węzły początek pola i separator służą do objęcia zawartości, która składa się na kod pola (zwykle jako zwykły tekst).
- Separator pola i koniec pola obejmują wynik pola. Może to składać się z różnych rodzajów treści, od przebiegów tekstu, przez akapity i tabele.
- Niektóre pola mogą nie mieć separatora, co oznacza, że cała zawartość składa się na kod pola.
- Kod pola określa zachowanie pola i składa się z identyfikatora pola i często innych parametrów, takich jak nazwy pól i przełączniki.
- Wynik pola zawiera najnowszą ocenę pola. Ta wartość jest przechowywana w polu wynik i jest to, co jest wyświetlane użytkownikowi. Niektóre pola mogą nie mieć żadnych wyników pól, dlatego nie będą wyświetlać niczego w dokumencie. Podobnie, niektóre pola mogą nie być jeszcze aktualizowane, dlatego też nie będą miały wyniku pola.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Zawartość tworząca kod pola jest przechowywana jako [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) węzły między [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) i [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Wynik pola jest przechowywany między węzłami **FieldSeparator** i [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) i może składać się z różnych typów treści. Zwykle wynik pola zawiera tylko tekst złożony z węzłów **Run**, jednak możliwe jest, że węzeł **FieldEnd** znajduje się w zupełnie innym akapicie, a tym samym powoduje, że wynik pola składa się z [węzły na poziomie bloku](/words/cpp/logical-levels-of-nodes-in-a-document/) takich jak węzły **Table** i **Paragraph**.

Oto widok, w jaki sposób pole jest przechowywane w Aspose.Words przy użyciu przykładu "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Pola w modelu obiektowym dokumentu Aspose.Words (DOM)

Gdy dokument jest ładowany do Aspose.Words, pola dokumentu są ładowane do [Aspose.Words Obiektowy Model Dokumentu](/words/cpp/aspose-words-document-object-model/) jako zestaw oddzielnych komponentów (węzłów). Pojedyncze pole jest ładowane jako zbiór węzłów **FieldStart**, **FieldSeparator** i **FieldEnd** wraz z zawartością pomiędzy tymi węzłami. Jeśli pole nie ma wyniku pola, nie będzie węzła **FieldSeparator**. Wszystkie te węzły są zawsze Znalezione w linii (jako Dzieci [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) lub [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

W Aspose.Words każdy z **FieldXXX** węzłów pochodzi od [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Ta klasa zapewnia właściwość do sprawdzania typu pola reprezentowanego przez określony węzeł za pomocą właściwości [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Na przykład **FieldType.FieldMergeField** reprezentuje pole scalania w dokumencie.

{{% alert color="primary" %}}

Istnieją pewne szczególne pola, które istnieją w dokumencie Word, które nie są importowane do Aspose.Words jako zbiór węzłów **FieldXXX**. Na przykład pole `LINK` i pole `INCLUDEPICTURE` są importowane do Aspose.Words jako obiekt `Shape`. Ten obiekt zapewnia właściwości do pracy z danymi obrazu Zwykle przechowywanymi w tych polach. Aby zaimportować `INCLUDEPICTURE` pole jako **FieldXXX** węzły, należy podać opcję [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) jako **true**.

Pola formularzy są również importowane do Aspose.Words jako ich własna Klasa specjalna. Klasa [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) reprezentuje pole formularza w dokumencie Word i zapewnia dodatkowe metody, które są specyficzne dla pola formularza.

{{% /alert %}}

## Obsługiwane Pola

Obliczanie następujących pól jest obsługiwane w bieżącej wersji Aspose.Words:

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

## Wyrafinowane Parsowanie Pola

Aspose.Words podąża za sposobem Microsoft Word przetwarza pola i w rezultacie poprawnie obsługuje:

- zagnieżdżone pola:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argument pola może być wynikiem zagnieżdżonego pola
- pola mogą być zagnieżdżone w kodzie pola, a także w wyniku pola
- spacje / brak spacji, cytaty / brak cudzysłowów, znaki ucieczki w polach itp.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- pola obejmujące wiele akapitów

### Pola Formuł

Aspose.Words zapewnia bardzo poważną implementację silnika formuły i obsługuje następujące elementy:

- operatory arytmetyczne i logiczne:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funkcje:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- odniesienia do zakładek:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- przełączniki formatowania liczb:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Obsługiwane są następujące funkcje w wyrażeniach: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Tylko niektóre wyrażenia `IF`, które Aspose.Words można łatwo obliczyć, powinny dać wyobrażenie o tym, jak potężna jest ta funkcja:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words Obsługuje wszystkie przełączniki formatowania daty i godziny dostępne w Microsoft Word, niektóre przykłady to:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge pola

Aspose.Words nie nakłada ograniczeń na złożoność pól Mail Merge W dokumentach i obsługuje zagnieżdżone pola `IF` i formuły, a nawet może obliczyć nazwę pola scalania za pomocą formuły.

Kilka przykładów pól Mail Merge obsługujących Aspose.Words:

- Mail merge przełączniki polowe:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- zagnieżdżone pola scalania w formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Oblicz nazwę pola scalania w czasie wykonywania:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- warunkowe przejście do następnego rekordu w źródle danych:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Przełączniki Formatu

Pole w dokumencie może mieć przełączniki formatowania, które określają sposób formatowania wynikowej wartości. Aspose.Words obsługuje następujące przełączniki formatu:

- @ - formatowanie daty i godziny
- \\\# - Formatowanie liczb
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\ \\\* CHARFORMAT - Formatuj wynik zgodnie z pierwszym znakiem kodu pola
- \\\\\ \\\* MERGEFORMAT - Formatuj wynik zgodnie ze sposobem sformatowania starego wyniku

### Formatowanie daty i numeru w polach

Kiedy Aspose.Words oblicza wynik pola, często musi przeanalizować ciąg znaków na wartość liczby lub daty, a także sformatować go z powrotem do string.By domyślnie Aspose.Words używa bieżącej kultury wątku do analizowania i formatowania podczas obliczania wartości pól podczas aktualizacji pól i mail merge. Dostępne są również opcje w postaci klasy [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/), która umożliwia dalszą kontrolę nad tym, która kultura jest używana podczas aktualizacji pola.

- domyślnie Właściwość [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) jest ustawiona na [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), która formatuje pola przy użyciu bieżącej kultury wątku
- ta właściwość może być ustawiona na [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), więc język ustawiony z kodu pola pola jest używany do formatowania

### Formatowanie przy użyciu Kultury bieżącego wątku

Aby kontrolować kulturę używaną podczas obliczania pola, po prostu ustaw właściwość **CurrentCulture** na wybraną kulturę przed wywołaniem obliczenia pola.

Poniższy przykład kodu pokazuje, jak zmienić kulturę używaną w polach formatowania podczas aktualizacji:

EXAMPLE

Używanie bieżącej kultury do formatowania pól umożliwia systemowi łatwe i konsekwentne kontrolowanie sposobu formatowania wszystkich pól w dokumencie podczas aktualizacji pól.

### Formatowanie przy użyciu Kultury w dokumencie

Z drugiej strony Microsoft Word formatuje każde pojedyncze pole na podstawie języka tekstu znalezionego w polu (w szczególności biegnie od kodu pola). Czasami podczas aktualizacji pola może to być pożądane zachowanie, na przykład jeśli masz zglobalizowane dokumenty zawierające zawartość złożoną z wielu różnych języków i chciałbyś, aby każde pole honorowało ustawienia regionalne użyte w tekście. Aspose.Words obsługuje również tę funkcję.

Klasa [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) zapewnia Właściwość [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) zawierającą elementy składowe, których można użyć do kontrolowania sposobu aktualizacji pól w dokumencie.

Poniższy przykład kodu pokazuje, jak określić, gdzie wybrana jest kultura używana do formatowania daty Podczas aktualizacji pola i Mail Merge:

EXAMPLE
