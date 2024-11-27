---
title: Użyj DocumentBuilder, Aby wstawić elementy dokumentu
second_title: Aspose.Words dla C++
articleTitle: Użyj DocumentBuilder, Aby wstawić elementy dokumentu
linktitle: Użyj DocumentBuilder, Aby wstawić elementy dokumentu
type: docs
description: "Wstaw elementy dokumentu za pomocą Kreatora dokumentów w C++."
weight: 80
url: /pl/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder` służy do modyfikowania dokumentów. W tym artykule wyjaśniono i opisano, jak wykonać szereg zadań:

## Wstawianie ciągu tekstu

Po prostu przekaż ciąg tekstu, który chcesz wstawić do dokumentu, do metody `DocumentBuilder.Write`. Formatowanie tekstu jest określane przez właściwość `Font`. Ten obiekt zawiera różne atrybuty czcionki (nazwa czcionki, rozmiar czcionki, kolor itd.). Niektóre ważne atrybuty czcionki są również reprezentowane przez właściwości DocumentBuilder, aby umożliwić bezpośredni dostęp do nich. Są to właściwości logiczne `Font.Bold`, `Font.Italic` i `Font.Underline`.

Zwróć uwagę, że ustawione formatowanie znaków będzie miało zastosowanie do całego tekstu wstawionego od bieżącej pozycji w dokumencie.

Poniżej przykład wstawia sformatowany tekst za pomocą DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Wstawianie akapitu

 `DocumentBuilder.Writeln` wstawia również ciąg tekstu do dokumentu, ale dodatkowo dodaje podział akapitu. Bieżące formatowanie czcionki jest również określone przez właściwość `DocumentBuilder.Font`, a bieżące formatowanie akapitu jest określone przez właściwość `DocumentBuilder.ParagraphFormat`. Poniższy przykład pokazuje, jak wstawić akapit do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Wstawianie tabeli

Podstawowy algorytm tworzenia tabeli przy użyciu DocumentBuilder jest prosty:

1. Rozpocznij tabelę za pomocą `DocumentBuilder.StartTable`.
1. Wstaw komórkę za pomocą `DocumentBuilder.InsertCell`. Spowoduje to automatyczne uruchomienie nowego wiersza. W razie potrzeby użyj właściwości `DocumentBuilder.CellFormat`, aby określić formatowanie komórki.
1. Wstaw zawartość komórki za pomocą metod `DocumentBuilder`.
1. Powtarzaj kroki 2 i 3, aż wiersz zostanie ukończony.
1. Wywołaj `DocumentBuilder.EndRow`, aby zakończyć bieżący wiersz. W razie potrzeby użyj właściwości `DocumentBuilder.RowFormat`, aby określić formatowanie wierszy.
1. Powtarzaj kroki 2-5, aż tabela będzie kompletna.
1. Zadzwoń do `DocumentBuilder.EndTable`, aby zakończyć budowanie stołu. Odpowiednie metody tworzenia tabeli DocumentBuilder opisano poniżej.

### Rozpoczynanie stołu

Wywołanie `DocumentBuilder.StartTable` to pierwszy krok w budowaniu tabeli. Można go również wywołać wewnątrz komórki, w którym to przypadku uruchamia zagnieżdżoną tabelę. Następną metodą wywołania jest `DocumentBuilder.InsertCell`.

### Wstawianie komórki

Po wywołaniu `DocumentBuilder->InsertCell` tworzona jest nowa komórka, a każda zawartość dodana przy użyciu innych metod klasy `DocumentBuilder` zostanie dodana do bieżącej komórki. Aby uruchomić nową komórkę w tym samym wierszu, zadzwoń ponownie `DocumentBuilder->InsertCell`. Użyj właściwości `DocumentBuilder.CellFormat`, aby określić formatowanie komórki. Zwraca obiekt `CellFormat`, który reprezentuje całe formatowanie komórki tabeli.

### Zakończenie wiersza

Wywołaj `DocumentBuilder.EndRow`, aby zakończyć bieżący wiersz. Jeśli wywołasz `DocumentBuilder->InsertCell` natychmiast po tym, tabela będzie kontynuowana w nowym wierszu.

Użyj właściwości `DocumentBuilder.RowFormat`, aby określić formatowanie wierszy. Zwraca obiekt `RowFormat`, który reprezentuje całe formatowanie wiersza tabeli.

### Zakończenie stołu

Wywołaj `DocumentBuilder.EndTable`, aby zakończyć bieżącą tabelę. Ta metoda powinna być wywołana tylko raz po wywołaniu `DocumentBuilder->EndRow`. Po wywołaniu `DocumentBuilder.EndTable` przesuwa kursor z bieżącej komórki do pozycji tuż za tabelą. Poniższy przykład pokazuje, jak zbudować sformatowaną tabelę zawierającą 2 wiersze i 2 kolumny.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Wstawianie przerwy

Jeśli chcesz jawnie rozpocząć nową linię, akapit, kolumnę, sekcję lub stronę, zadzwoń do `DocumentBuilder.InsertBreak`. Przekaż do tej metody Typ przerwy, którą musisz wstawić, reprezentowany przez wyliczenie `BreakType`. Poniższy przykład pokazuje, jak wstawić podziały stron do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Wstawianie obrazu

DocumentBuilder zapewnia kilka przeciążeń metody `DocumentBuilder->InsertImage`, która umożliwia wstawienie wbudowanego lub pływającego obrazu. Jeśli obraz jest metaplikiem EMF lub WMF, zostanie wstawiony do dokumentu w formacie metaplik. Wszystkie inne obrazy będą przechowywane w formacie PNG. Metoda `DocumentBuilder->InsertImage` może wykorzystywać obrazy z różnych źródeł:

- Z pliku lub `URL` przekazując parametr ciągu `DocumentBuilder->InsertImage`.
- Ze strumienia, przekazując parametr `Stream` `DocumentBuilder->InsertImage`.
- Z obiektu obrazu, przekazując parametr obrazu `DocumentBuilder->InsertImage`.
- Z tablicy bajtów, przekazując parametr tablicy bajtów `DocumentBuilder.InsertImage`.Dla każdej z metod `DocumentBuilder->InsertImage` występują dalsze przeciążenia, które umożliwiają wstawienie obrazu z następującymi opcjami:
- Inline lub floating w określonej pozycji, na przykład `DocumentBuilder->InsertImage`.
- Skala procentowa lub rozmiar niestandardowy, na przykład `DocumentBuilder.InsertImage`. Ponadto metoda `DocumentBuilder->InsertImage` zwraca obiekt `Shape`, który został właśnie utworzony i wstawiony, dzięki czemu można dalej modyfikować właściwości kształtu.

### Wstawianie wbudowanego obrazu

Przekaż pojedynczy ciąg reprezentujący plik zawierający obraz do `DocumentBuilder->InsertImage`, aby wstawić obraz do dokumentu jako grafikę wbudowaną. Poniższy przykład pokazuje, jak wstawić wbudowany obraz w pozycji kursora do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Wstawianie pływającego (absolutnie ustawionego) obrazu

Ten przykład wstawia pływający obraz z pliku lub `URL` w określonej pozycji i rozmiarze.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Wstawianie zakładki

Aby wstawić zakładkę do dokumentu, wykonaj następujące czynności:

1. Zadzwoń `DocumentBuilder->StartBookmark` przekazując mu żądaną nazwę zakładki.
1. Wstaw tekst zakładki przy użyciu metod DocumentBuilder.
1. Wywołaj `DocumentBuilder.EndBookmark` przekazując mu tę samą nazwę, której użyłeś z **DocumentBuilder->StartBookmark**.
1. Zakładki mogą nakładać się i obejmować dowolny zakres. Aby utworzyć prawidłową zakładkę, musisz wywołać zarówno `DocumentBuilder->StartBookmark`, jak i `DocumentBuilder->EndBookmark` z tą samą nazwą zakładki.

{{% alert color="primary" %}}

Źle utworzone zakładki lub Zakładki ze zduplikowanymi nazwami będą ignorowane po zapisaniu dokumentu.

{{% /alert %}}

Poniższy przykład pokazuje, jak wstawić zakładkę do dokumentu za pomocą narzędzia do tworzenia dokumentów.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Wstawianie pola `Form`

Pola formularza to szczególny przypadek pól Word, który umożliwia "interakcję" z użytkownikiem. Pola formularza w Microsoft Word obejmują pole tekstowe, pole kombi i checkbox.DocumentBuilder zapewnia specjalne metody wstawiania każdego typu pola formularza do dokumentu: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` i `DocumentBuilder.InsertComboBox`. Pamiętaj, że jeśli podasz nazwę pola formularza, automatycznie zostanie utworzona zakładka o tej samej nazwie.

### Wstawianie wprowadzania tekstu

 `DocumentBuilder.InsertTextInput` aby wstawić pole tekstowe do dokumentu. Poniższy przykład pokazuje, jak wstawić pole formularza wprowadzania tekstu do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Wstawianie pola wyboru

Wywołaj `DocumentBuilder.InsertCheckBox`, aby wstawić checkbox do dokumentu. Poniższy przykład pokazuje, jak wstawić pole formularza checkbox do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Wstawianie Skrzynki Combo

Wywołaj `DocumentBuilder.InsertComboBox`, aby wstawić pole kombi do dokumentu. Poniższy przykład pokazuje, jak wstawić pole formularza kombi do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Wstawianie ustawień regionalnych na poziomie pola

Klienci mogą teraz określić ustawienia regionalne na poziomie pola i uzyskać lepszą kontrolę. Identyfikatory regionalne mogą być powiązane z każdym polem wewnątrz DocumentBuilder. Poniższe przykłady ilustrują, jak skorzystać z tej opcji.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Wstawianie hiperłącza

Użyj `DocumentBuilder.InsertHyperlink`, aby wstawić hiperłącze do dokumentu. Ta metoda akceptuje trzy parametry: tekst łącza, które ma być wyświetlane w dokumencie, miejsce docelowe łącza (URL lub nazwa zakładki w dokumencie) oraz parametr logiczny, który powinien być prawdziwy, jeśli `URL` jest nazwą zakładki w dokumencie.DocumentBuilder.InsertHyperlink wywołania wewnętrzne `DocumentBuilder.InsertField`.Metoda zawsze dodaje apostrofy na początku i na końcu URL. Pamiętaj, że musisz określić formatowanie czcionki dla tekstu wyświetlania hiperłącza jawnie za pomocą właściwości `Font`. Poniższy przykład wstawia hiperłącze do dokumentu za pomocą DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Wstawianie Ole Obiektu

Jeśli chcesz Ole wywołanie obiektu `DocumentBuilder.InsertOleObject`. Przekaż do tej metody `ProgId` jawnie z innymi parametrami. Poniższy przykład pokazuje, jak wstawić obiekt Ole do dokumentu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Ustaw nazwę pliku i rozszerzenie podczas wstawiania obiektu Ole

OLE Pakiet jest starszym i" nieudokumentowanym " sposobem przechowywania osadzonego obiektu, jeśli program obsługi OLE jest nieznany. Wczesne wersje Windows, takie jak Windows 3.1, 95 i 98 miały Packager.exe aplikację, której można było użyć do osadzenia dowolnego typu danych w dokumencie. Teraz ta aplikacja jest wykluczona z Windows, ale MS Word i inne aplikacje nadal używają jej do osadzania danych, jeśli brakuje programu obsługi OLE lub jest nieznany. Klasa OlePackage umożliwia dostęp do właściwości OLE Package. Poniższy przykład pokazuje, jak ustawić nazwę pliku, rozszerzenie i nazwę wyświetlaną dla OLE Package.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Wstawianie HTML

Możesz łatwo wstawić ciąg HTML zawierający fragment HTML lub cały dokument HTML do dokumentu Word. Po prostu przekaż ten ciąg do metody `DocumentBuilder->InsertHtml`. Jedną z przydatnych implementacji metody jest przechowywanie ciągu HTML w bazie danych i wstawianie go do dokumentu podczas Mail Merge, aby dodać sformatowaną zawartość, zamiast budować ją przy użyciu różnych metod kreatora dokumentów. Poniższy przykład pokazuje wstawki HTML do dokumentu przy użyciu DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Wstaw regułę poziomą do dokumentu

Przykład Below code pokazuje, jak wstawić poziomy kształt reguły do dokumentu przy użyciu metody `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
