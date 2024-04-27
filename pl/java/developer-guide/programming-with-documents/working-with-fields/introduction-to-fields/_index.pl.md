---
title: Wprowadzenie do pola Java
second_title: Aspose.Words zamiast Java
articleTitle: Wprowadzenie do pól
linktitle: Wprowadzenie do pól
description: "Pola w szczegółach, kody pól i wyniki pola wyjaśnione w Aspose.Words zamiast Java."
type: docs
weight: 10
url: /pl/java/introduction-to-fields/
---

Aspose.Words jest biblioteką klasy przeznaczoną do przetwarzania po stronie serwera Microsoft Word dokumenty i wspiera pola w następujący sposób:

- wszystkie pola w dokumencie są zachowane podczas otwartego / zapisu i konwersji
- można zaktualizować wyniki większości pól

W tym artykule dowiemy się więcej o strukturze pola, pola obsługiwane w Aspose.Words, oraz szczegóły pracy z takimi dziedzinami.

## Struktura pola

Pole składa się z:

- Węzły początku i separatora pola są używane do uwzględnienia treści tworzącej kod pola (zazwyczaj jako zwykły tekst).
- Separator pola i koniec pola obejmują wynik pola. Może to składać się z różnych rodzajów treści, począwszy od rund tekstu do tabel.
- Niektóre pola mogą nie mieć separatora, co oznacza, że cała zawartość tworzy kod pola.
- Kod pola definiuje zachowanie pola i składa się z identyfikatora pola i często innych parametrów, takich jak nazwa pola i przełączniki.
- Wynik pola zawiera najnowszą ocenę pola. Wartość ta jest zapisywana w wyniku pola i jest wyświetlana użytkownikowi. Niektóre pola mogą nie mieć żadnego rezultatu pola, więc nie będzie wyświetlać niczego w dokumencie. Podobnie, niektóre pola mogą nie być aktualizowane, a zatem nie będą miały żadnego rezultatu.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Zawartość tworząca kod pola jest zapisywana jako [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) węzły pomiędzy [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) oraz [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Wynik pola jest przechowywany pomiędzy **FieldSeparator** oraz [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) węzły i mogą być wykonane z różnych rodzajów treści. Normalnie wynik pola zawiera po prostu tekst złożony z węzłów Run, jednak możliwe jest, aby węzeł FieldEnd był zlokalizowany w zupełnie innym punkcie, a tym samym co wynik pola składa się z [Logiczne programy we Włoszech w celu uzyskania pomocy](/words/pl/java/logical-levels-of-nodes-in-a-document/) takie jak **Table** oraz **Paragraph** Także węzły.

Oto widok jak pole jest przechowywane w Aspose.Words za pomocą przykładu "* DocumentExplorer" *, który można znaleźć na [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Pola w Aspose.Words Document Object Model (DOM)

Gdy dokument jest załadowany do <span notrans="<span notrans=" Aspose.Words"=""></span>", > pola dokumentu są załadowane do Aspose.Words Document Object Model jako zestaw oddzielnych komponentów (węzłów). Jedno pole jest załadowane jako zbiór **FieldStart**, **FieldSeparator** oraz **FieldEnd** węzły wraz z zawartością pomiędzy tymi węzłami. Jeśli pole nie ma wyniku pola wtedy nie będzie **FieldSeparator** węzeł. Wszystkie te węzły zawsze znajdują się wewnątrz (jako dzieci [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) lub [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

W Aspose.Words każdy z **FieldXXX** węzły pochodzą z [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Ta klasa zapewnia właściwość do sprawdzania typu pola reprezentowanego przez określony węzeł [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) nieruchomości. Na przykład `FieldType.FieldMergeField` reprezentuje pole scalania w dokumencie.

{{% alert color="primary" %}}

Istnieje kilka konkretnych pól, które istnieją w dokumencie Word, które nie są importowane do Aspose.Words jako zbiór **FieldXXX** węzły. Na przykład: `LINK` pole oraz `INCLUDEPICTURE` pola są importowane do Aspose.Words jako [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) obiekt. Obiekt ten zapewnia właściwości do pracy z danymi obrazu normalnie przechowywane w tych polach. Do przywozu `INCLUDEPICTURE` pole jako **FieldXXX** węzły [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) opcja musi być określona jako **true**.

Pola formularzy są również importowane do Aspose.Words jako ich własna klasa specjalna. W [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) klasa reprezentuje pole formularza w dokumencie Word i zapewnia dodatkowe metody, które są specyficzne dla pola formularza.

{{% /alert %}}

## Obsługiwane pola

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
- `TOC` (w tym TOT i TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Wyrafinowane parsowanie pola

Aspose.Words idzie drogą Microsoft Word przetwarza pola i w rezultacie prawidłowo obsługuje:

- zagnieżdżone pola:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argument pola może być wynikiem zagnieżdżonego pola
- pola mogą być zagnieżdżone w kodzie pola, jak również w wyniku pola
- spacje / bez spacji, cudzysłów / bez cytatów, znaki ucieczki w polach itp.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- pola, które obejmują wiele akapitów

### Pole formuły

Aspose.Words zapewnia bardzo poważne wdrożenie silnika formuły i wspiera następujące:

- operatorów arytmetycznych i logicznych:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funkcje:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- odniesienia do zakładek:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- przełączniki do formatowania liczb:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Obsługiwane są następujące funkcje w wyrażeniach: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` oraz `COMPARE` Pola

Tylko trochę `IF` wyrażenia, które Aspose.Words może łatwo obliczyć powinien dać Ci pojęcie jak potężna jest ta funkcja:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` oraz `TIME` Pola

Aspose.Words obsługuje wszystkie przełączniki formatowania daty i czasu dostępne w Microsoft Word, Niektóre przykłady to:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Pola

Aspose.Words nie nakłada żadnych ograniczeń na złożoność mail merge pola w dokumentach i wsparcie zagnieżdżone `IF` i pola formuły i może nawet obliczyć nazwę pola połączenia za pomocą wzoru.

Niektóre przykłady mail merge pola, które Aspose.Words obsługuje:

- Mail merge przełączniki pola:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- zagnieżdżone pola łączące w formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- obliczyć nazwę pola połączenia w runtime:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- warunkowe przejście do następnego rekordu w źródle danych:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Przełączniki formatowe

Pole w dokumencie może mieć przełączniki formatowania określające sposób formatowania uzyskanej wartości. Aspose.Words obsługuje następujące przełączniki formatu:

- @ - formatowanie daty i czasu
-\\\ # - formatowanie numeru
-\\\\\\\\ * Czapki
-\\\\\\\ * FirstCap
-\\\\\\\\ * Niższe
-\\\\\\\\ * Górna
-\\\\\\ * CHARFORMAT - wynik formatu według pierwszego znaku kodu pola
-\\\\\\ * MERGEFORMAT - wynik formatowania według formatowania poprzedniego wyniku

### Date i Formatowanie liczb w Polach

Kiedy Aspose.Words oblicza wynik pola, często musi przetworzyć łańcuch na wartość liczbową lub datę, a także sformatować go z powrotem do łańcucha. Domyślnie Aspose.Words wykorzystuje obecną kulturę nici do przetwarzania i formatowania podczas obliczania wartości pola podczas aktualizacji pola oraz mail merge. Istnieją również opcje w formie [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) klasa, która pozwala na dalszą kontrolę, nad którą kulturą stosuje się podczas aktualizacji pola%

* domyślnie [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) właściwość jest ustawiona na [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) który formatuje pola używając bieżącej kultury wątków
* ta właściwość może być ustawiona na [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) więc język ustawiony z kodu pola jest używany do formatowania

### Formatowanie przy użyciu bieżącej kultury gwintu

Aby kontrolować kulturę stosowaną podczas obliczania pola, wystarczy ustawić **CurrentCulture** właściwość do wybranej kultury przed powołaniem się na obliczenia pola.

Poniższy przykład kodu pokazuje, jak zmienić kulturę używaną w formatowaniu pól podczas aktualizacji:

PRZYKŁAD (użyj publicznego opakowania CurrentThreadSettings.getLocale () i setLocale () zamiast prywatnego `Thread.CurrentThread`.CurrentCulture)

Korzystanie z bieżącej kultury do formatowania pól pozwala systemowi łatwo i konsekwentnie kontrolować sposób formatowania wszystkich pól dokumentu podczas aktualizacji pola.

### Formatowanie z wykorzystaniem kultury w dokumencie

Z drugiej strony, Microsoft Word formatuje każde pojedyncze pole w oparciu o język tekstu znalezionego w polu (w szczególności, kursy z kodu pola). Czasami podczas aktualizacji pola może to być pożądane zachowanie, na przykład jeśli masz zglobalizowane dokumenty zawierające zawartość składającą się z wielu różnych języków i chciałby, aby każde pole uhonorować locale używane z tekstu. Aspose.Words obsługuje również tę funkcjonalność.

W [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) klasa zapewnia [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) właściwość, która zawiera członków, które mogą być wykorzystane do kontrolowania sposobu aktualizacji pól w dokumencie.

Poniższy przykład kodu pokazuje, jak określić, gdzie kultura użyta do formatowania daty podczas aktualizacji pola oraz mail merge jest wybierany spośród:

PRZYKŁAD
