---
title: Stosowanie DocumentBuilder wstawić elementy dokumentu
second_title: Aspose.Words zamiast Java
articleTitle: Stosowanie DocumentBuilder wstawić elementy dokumentu
linktitle: Stosowanie DocumentBuilder wstawić elementy dokumentu
type: docs
description: "Wstaw elementy dokumentu przy użyciu konstruktora dokumentu w Java."
weight: 10
url: /pl/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

W [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) jest używany do modyfikacji dokumentów. Ten artykuł wyjaśnia i opisuje, jak wykonać wiele zadań.

## Wstawianie tekstu

Wystarczy przekazać ciąg tekstu, który należy umieścić w dokumencie do [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) metody. Formatowanie tekstu jest określane przez `Font` nieruchomości. Obiekt ten zawiera różne atrybuty czcionki (nazwa czcionki, rozmiar czcionki, kolor itp.). Niektóre ważne atrybuty czcionek są również reprezentowane przez [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) nieruchomości umożliwiające bezpośredni dostęp do nich. Są to właściwości Boolean [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), oraz [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Zauważ, że ustawione formatowanie znaków będzie miało zastosowanie do całego tekstu dodanego z bieżącej pozycji w dokumencie.

{{% /alert %}}

Poniższy przykład kodu Wstawia sformatowany tekst używając DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Dodanie paragrafu

DocumentBuilder.writeln umieszcza w dokumencie również ciąg tekstu, ale dodatkowo dodaje do niego paragraf. Obecne formatowanie czcionki jest również określone przez DocumentBuilder. dostać Właściwość czcionki i bieżące formatowanie paragrafu jest określone przez właściwość DocumentBuilder.getParagraphFormat

Poniższy przykład kodu pokazuje, jak dodać do dokumentu akapit.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Wstawianie tabeli

Podstawowy algorytm do tworzenia tabeli przy użyciu `DocumentBuilder` jest proste:

1. Uruchom tabelę używając [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Wstaw komórkę używając [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). To automatycznie uruchamia nowy wiersz. W razie potrzeby należy użyć [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) właściwość do określenia formatowania komórek.
1. Wstaw zawartość komórki używając `DocumentBuilder` metody.
1. Powtarzać kroki 2 i 3 aż do zakończenia wiersza.
1. Call [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) zakończyć bieżący wiersz. W razie potrzeby należy użyć [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) właściwość do określenia formatowania wierszy.
1. Powtarzać czynności 2 - 5 aż do zakończenia tabeli.
1. Call [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) aby zakończyć budynek stołu. Poniżej opisano odpowiednie metody tworzenia tabeli DocumentBuilder.

### Uruchamianie tabeli

Połączenie DocumentBuilder.start Stolik jest pierwszym krokiem w budowaniu stołu. Może być również nazywany wewnątrz komórki, w tym przypadku, rozpoczyna zagnieżdżony stół. Następnym sposobem wywołania jest DocumentBuilder.insertCell.

### Wstawianie komórki

Po tym jak zadzwonisz do DocumentBuilder. wstawić Komórka, nowa komórka jest tworzona i każda zawartość dodawana przy użyciu innych metod `DocumentBuilder` klasa zostanie dodana do bieżącej komórki. Aby uruchomić nową komórkę w tym samym wierszu, zadzwoń DocumentBuilder. wstawić Znowu komórka. Użyj DocumentBuilder.getCell Format właściwości do określenia formatowania komórki. Zwraca [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) obiekt, który reprezentuje wszystkie formatowanie dla komórki tabeli.

### Koniec wiersza

Zadzwoń DocumentBuilder.end Wiersz, aby zakończyć bieżący wiersz. Jeśli zadzwonisz do DocumentBuilder. wstawić Komórka zaraz po tym, potem tabela kontynuuje nowy wiersz. Użyj `DocumentBuilder.RowFormat` właściwość do określenia formatowania wierszy. Zwraca [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) obiekt, który reprezentuje wszystkie formatowanie dla wiersza tabeli.

### Koniec tabeli

Zadzwoń DocumentBuilder.end Stół do zakończenia bieżącej tabeli. Metoda ta powinna być wywołana tylko raz po dokumencie DocumentBuilder. Nazywano to endRow. Po wywołaniu, DocumentBuilder.end Tabela przesuwa kursor z bieżącej komórki do pozycji tuż po tabeli. Poniższy przykład pokazuje jak zbudować sformatowaną tabelę zawierającą 2 wiersze i 2 kolumny.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Wstawianie przerwy

Jeśli chcesz wyraźnie uruchomić nową linię, paragraf, kolumnę, sekcję lub stronę, zadzwoń DocumentBuilder. Wstaw Break. Podaj do tej metody typ przerwy, którą należy włożyć, który jest reprezentowany przez `BreakType` wyliczenie
Poniższy przykład kodu pokazuje jak wstawić stronę włamuje się do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Wstawianie obrazka

DocumentBuilder zapewnia kilka przeładowań [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) metoda, która pozwala na wstawianie obrazu inline lub floating. Jeżeli obraz jest EMF lub metafilem WMF, zostanie on dodany do dokumentu w formacie metafilu. Wszystkie pozostałe obrazy będą przechowywane w formacie PNG. DokumentBuilder.insert Metoda obrazowania może wykorzystywać obrazy z różnych źródeł:

- Z pliku lub `URL` przez podanie parametru string
- Z strumienia przechodząc `Stream` parametr
- Z obiektu Image przez podanie parametru Image
- Z tablicy bajtów przez podanie parametru tablicy bajtów
- I inni

Dla każdego z DocumentBuilder. wstawić Metody obrazowania, istnieją dalsze przeciążenia, które pozwalają na wstawianie obrazu z następującymi opcjami:

- Inline lub pływające w określonym położeniu
- Procentowa skala lub wielkość na zamówienie

Ponadto, DocumentBuilder.insert Metoda obrazka zwraca a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) obiekt, który został właśnie utworzony i wstawiony, dzięki czemu można dalej modyfikować właściwości kształtu.

### Wstawianie obrazka inline

Podaj pojedynczy ciąg przedstawiający plik zawierający obraz do DocumentBuilder. wstawić Obraz, aby umieścić obraz w dokumencie jako grafika inline. Poniższy przykład kodu pokazuje jak umieścić obraz inline na pozycji kursora w dokumencie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Wstawianie pływającego obrazu (całkowicie pozycjonowanego)

Ten przykład wprowadza zmienny obraz z pliku lub `URL` w określonym położeniu i rozmiarze.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Wstawianie zakładki

Aby umieścić zakładkę w dokumencie, należy wykonać następujące czynności:

1. Call [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) podając żądaną nazwę zakładki.
1. Wstaw tekst zakładki `DocumentBuilder` metody.
1. Call [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) podawanie tej samej nazwy, której użyłeś w DocumentBuilder.startBookmark.

Zakładki mogą nakładać się i rozpraszać w dowolnym zakresie. Aby utworzyć poprawną zakładkę, musisz wywołać zarówno DocumentBuilder.startBookmark jak i DocumentBuilder.endBookmark z tą samą nazwą zakładki.

Źle utworzone zakładki lub zakładki z podwójnymi nazwami będą ignorowane po zapisaniu dokumentu.

Poniższy przykład kodu pokazuje, jak umieścić zakładkę do dokumentu za pomocą buildera dokumentów.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Wstawianie pola

Pola w Microsoft Word dokumenty składają się z kodu pola i wyniku pola. Kod pola jest podobny do wzoru, a wynik pola jest wartością, którą tworzy wzór. Kod pola może również zawierać przełączniki pola, które są dodatkowymi instrukcjami do wykonania określonego działania. Możesz przełączać między wyświetlaniem kodów pola i wyników w dokumencie w Microsoft Word za pomocą skrótu klawiszowego Alt + F9. Kody pola pojawiają się między kręconymi szelki ( { } ). [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) do tworzenia pól w dokumencie. Musisz podać typ pola, kod pola i wartość pola. Jeśli nie jesteś pewien konkretnej składni kodu pola, stwórz pole w Microsoft Word pierwszy i przełącz, aby zobaczyć jego kod pola
Poniższy przykład kodu wprowadza pole scalania do dokumentu przy użyciu DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Wstawianie `Form` Pole

Pola formularza są szczególnym przypadkiem pól Word, które umożliwiają "interakcję" z użytkownikiem. Formować pola w Microsoft Word zawiera textbox, Combobox i pole wyboru. DocumentBuilder zapewnia specjalne metody umieszczania w dokumencie każdego rodzaju pola formularza: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), oraz [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Zauważ, że jeśli podasz nazwę pola formularza, to zakładka zostanie automatycznie utworzona z tą samą nazwą.

### Wstawianie wejścia tekstowego

DocumentBuilder.inserttTextInput, aby umieścić w dokumencie textbox. Poniższy przykład kodu pokazuje jak wstawić pole tekstowe do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Wstawianie `CheckBox`

Zadzwoń DocumentBuilder.insert Pole wyboru, aby umieścić pole wyboru w dokumencie. Poniższy przykład kodu pokazuje jak wstawić pole formularza wyboru do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Wstawianie pola Combo

Zadzwoń DocumentBuilder.insertComboBox wstawić pole combo do dokumentu. Poniższy przykład kodu pokazuje jak włożyć pole formularza combo do dokumentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Wstawianie lokalizacji na poziomie pola

Klienci mogą określić Locale na poziomie pola teraz i może osiągnąć lepszą kontrolę. Locale Identyfikatory mogą być powiązane z każdym polem wewnątrz DocumentBuilder. Poniższe przykłady ilustrują sposób wykorzystania tej opcji.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Wstawianie HTML

Możesz łatwo umieścić łańcuch HTML zawierający fragment HTML lub cały dokument HTML w dokumencie Word. Po prostu przekaż ten sznurek DocumentBuilderowi. wstawić Metoda Html. Jedną z przydatnych implementacji metody jest przechowywanie łańcucha HTML w bazie danych i umieszczanie go w dokumencie podczas Mail Merge aby dodać sformatowaną zawartość zamiast budować ją przy użyciu różnych metod konstruktora dokumentów. Poniższy przykład kodu pokazuje wstawianie HTML do dokumentu przy użyciu DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Wstawianie hiperłącza

Użyj DocumentBuilder.insertHyperlink, aby wprowadzić hiperłącze do dokumentu. Metoda ta akceptuje trzy parametry: tekst odnośnika wyświetlanego w dokumencie, cel odnośnika (URL lub nazwa zakładki wewnątrz dokumentu) oraz parametr boolean, który powinien być true jeśli `URL` jest nazwą zakładki wewnątrz dokumentu. DocumentBuilder.insertHyperlink wewnętrzne połączenia DocumentBuilder.insertField. Metoda zawsze dodaje apostrofy na początku i końcu URL. Zauważ, że musisz wyraźnie określić formatowanie czcionki dla wyświetlanego hiperłącza za pomocą `Font` nieruchomości. Poniższy przykład kodu wprowadza hiperłącze do dokumentu przy użyciu DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Wstawianie tabeli treści

Można wstawić `TOC` (tabela treści) pole do dokumentu w bieżącej pozycji przez wywołanie [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) Metoda. Metoda DocumentBuilder. `TOC` pole w dokumencie. Aby zbudować tabelę treści i wyświetlić je zgodnie z numerami stron, oba **Document.UpdateFields**metoda musi być wywołana po wprowadzeniu pola. Poniższy przykład kodu pokazuje, jak umieścić pole tabeli treści w dokumencie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Wstawianie obiektu Ole

Jeśli chcesz wywołanie Ole Object [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Ustaw nazwę i rozszerzenie pliku podczas wprowadzania obiektu Ole

Pakiet OLE to dziedziczny i "nieudokumentowany" sposób przechowywania wbudowanych obiektów, jeśli nie jest znany opiekun OLE. Wczesne Windows wersje takie jak Windows 3.1, 95 i 98 mieli Packagera. exe aplikacja, która może być wykorzystana do umieszczania w dokumencie jakiegokolwiek rodzaju danych. Ta aplikacja jest wyłączona z Windows ale MS Word i inne aplikacje nadal używają go do osadzania danych, jeśli opiekun OLE jest brakujący lub nieznany. Klasa OlePackage umożliwia dostęp do właściwości pakietu OLE. Poniższy przykład kodu pokazuje, jak ustawić nazwę pliku, rozszerzenie i nazwę wyświetlacza dla pakietu OLE.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Uzyskaj dostęp do Surowych Danych OLE Object

Poniższy przykład kodu pokazuje, jak uzyskać OLE Object surd data using `OleFormat.GetRawData`() metoda.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Wstaw poziome Artykuł w dokumencie

Poniższy przykład kodu pokazuje, jak umieścić horyzontalny kształt reguły w dokumencie za pomocą `DocumentBuilder.InsertHorizontalRule` Metoda.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Praca z kształtami

### Wstawianie kształtów Inline i Free- floating

Można umieścić kształt inline o określonym typie i rozmiarze oraz swobodnie zmienny kształt z określoną pozycją, rozmiar i typ zawijania tekstu w dokumencie za pomocą `DocumentBuilder.InsertShape` Metoda. W `DocumentBuilder.InsertShape` metoda pozwala na wprowadzenie kształtu DML do modelu dokumentu. Dokument musi być zapisany w formacie, który obsługuje kształty DML, w przeciwnym razie takie węzły zostaną przekonwertowane na kształt VML, podczas zapisywania dokumentów. Poniższy przykład kodu pokazuje, jak umieścić te typy kształtów w dokumencie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Utwórz prostokąt narożnika Snip

Możesz utworzyć prostokąt narożny za pomocą Aspose.Words. Typy kształtów są SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded i DiagonalCornersRounded. Kształt DML jest tworzony przy użyciu `DocumentBuilder.InsertShape` metoda z tymi typami kształtu. Typy te nie mogą być używane do tworzenia kształtów VML. Próba stworzenia kształtu przy użyciu konstruktora publicznego klasy "Kształt" podnosi wyjątek "NotSupportedException". Poniższy przykład kodu pokazuje, jak umieścić te typy kształtów w dokumencie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importuj kształty z Math XML jako kształty do DOM

Możesz użyć `LoadOptions.ConvertShapeToOfficeMath` właściwość do konwersji kształtów z EquationXML do obiektów Math Office. Domyślna wartość tej właściwości odpowiada zachowaniu MS Word tj. kształty z równaniem XML nie są konwertowane na obiekty matematyczne Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
