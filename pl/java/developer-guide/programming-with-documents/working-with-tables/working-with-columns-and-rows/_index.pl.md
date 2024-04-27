---
title: Praca z kolumnami i wierszami w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z kolumnami i wierszami
linktitle: Praca z kolumnami i wierszami
description: "Praca z częściami tabeli - wiersze, kolumny i komórki przy użyciu Java. Podaj wiersz nagłówka Java."
type: docs
weight: 30
url: /pl/java/working-with-columns-and-rows/
---

Aby uzyskać większą kontrolę nad funkcjonowaniem tabel, naucz się manipulować kolumnami i wierszami.

## Znajdź indeks elementu tabeli

Kolumny, wiersze i komórki są zarządzane przez dostęp do wybranego węzła dokumentu przez jego indeks. Znalezienie indeksu dowolnego węzła polega na zebraniu wszystkich węzłów dziecięcych typu elementu z węzła macierzystego, a następnie użyciu [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) metoda znalezienia indeksu pożądanego węzła w kolekcji.

### Znajdź indeks tabeli w dokumencie

Czasami może być konieczne wprowadzenie zmian do konkretnej tabeli w dokumencie. Aby to zrobić, można odnieść się do tabeli po jej indeksie.

Poniższy przykład kodu pokazuje jak pobrać indeks tabeli w dokumencie:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Znalezienie indeksu wiersza w tabeli

Podobnie może być konieczne wprowadzenie zmian do określonego wiersza w wybranej tabeli. Aby to zrobić, możesz również odnieść się do wiersza po jego indeksie.

Poniższy przykład kodu pokazuje jak pobrać indeks wiersza w tabeli:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Znalezienie indeksu komórki w wierszu

Wreszcie, może trzeba wprowadzić zmiany do konkretnej komórki, i można to zrobić również przez indeks komórki.

Poniższy przykład kodu pokazuje, jak pobrać indeks komórki w wierszu:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Praca z kolumnami

W Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) węzeł składa się z [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) węzły, a następnie [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) węzły. Tak więc, w `Document` Model obiektu Aspose.Words, jak w dokumentach Worda, nie ma pojęcia o kolumnie.

Według projektu, tabeli wiersze w Microsoft Word oraz Aspose.Words są całkowicie niezależne, a podstawowe właściwości i operacje są zawarte tylko w wierszach i komórkach tabeli. Daje to tabelom możliwość posiadania ciekawych atrybutów:

- Każdy rząd tabeli może mieć zupełnie inną liczbę komórek
- pionowo, komórki każdego rzędu mogą mieć różne szerokości
- Istnieje możliwość łączenia tabel z różnymi formatami wierszy i liczbą komórek

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Wszelkie operacje wykonywane na kolumnach są rzeczywiście "skrótami", które wykonują operację poprzez zbiorczą zmianę komórek wierszy w taki sposób, że wygląda na to, że są one stosowane do kolumn. Oznacza to, że można wykonywać operacje na kolumnach, po prostu powtarzając ten sam indeks komórek wiersza tabeli.

Poniższy przykład kodu upraszcza takie operacje, udowadniając klasę elewacji, która zbiera komórki, które tworzą "kolumnę" tabeli:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Poniższy przykład kodu pokazuje jak umieścić pustą kolumnę w tabeli:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Poniższy przykład kodu pokazuje jak usunąć kolumnę z tabeli w dokumencie:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Określa wiersze jako wiersze nagłówka

Możesz powtórzyć pierwszy wiersz w tabeli jako wiersz nagłówka tylko na pierwszej stronie lub na każdej stronie, jeśli tabela jest podzielona na kilka. W Aspose.Words, możesz powtórzyć wiersz nagłówka na każdej stronie za pomocą [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) nieruchomości.

Możesz również zaznaczyć wiele wierszy nagłówka, jeśli takie wiersze znajdują się jeden za drugim na początku tabeli. Aby to zrobić, należy zastosować **HeadingFormat** właściwości tych wierszy.

{{% alert color="primary" %}}

Pamiętaj, że Wiersze nagłówkowe nie działają w zagnieżdżonych tabelach. To znaczy, jeśli masz stół wewnątrz innej tabeli, to ustawienie nie będzie miało wpływu. Jest to ograniczenie Microsoft Word które nie pozwala na to, nie Aspose.Words.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak zbudować tabelę zawierającą wiersze nagłówka, które powtarzają się na kolejnych stronach:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Zachowaj tabele i wiersze z przełamywania stron {#keep-tables-and-rows-from-breaking-across-pages}

Istnieją momenty, w których zawartość tabeli nie powinna być podzielona na strony. Na przykład, jeśli tytuł jest powyżej tabeli, tytuł i tabela powinny być zawsze trzymane razem na tej samej stronie, aby zachować odpowiedni wygląd.

Istnieją dwa odrębne techniki, które są przydatne do osiągnięcia tej funkcjonalności:

- `Allow row break across pages`, które stosuje się do wierszy tabeli
- `Keep with next`, które stosuje się do ustępów w komórkach tabeli

Domyślnie powyższe właściwości są wyłączone.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Keep a row from Breaking Across Pages {#keep-a-row-from-breaking-across-pages}

Oznacza to ograniczenie zawartości wewnątrz komórek wiersza do podziału na stronę. W Microsoft Word, to można znaleźć w Właściwości tabeli jako opcja "Zezwalaj na przełamanie wiersza między stronami". W Aspose.Words to znajduje się pod [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) obiekt [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) jako nieruchomość [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Poniższy przykład kodu pokazuje jak wyłączyć łamanie wierszy pomiędzy stronami dla każdego wiersza tabeli:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Zachowaj stół przed przełamywaniem stron {#keep-a-table-from-breaking-across-pages}

Aby zatrzymać podział tabeli na strony, musimy określić, że chcemy, aby zawartość w tabeli pozostać razem.

Aby to zrobić, Aspose.Words używa metody, która pozwala użytkownikom wybrać tabelę i włączyć [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parametr true dla każdego punktu w komórkach tabeli. Wyjątkiem jest ostatni akapit tabeli, który należy ustawić na false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Poniższy przykład kodu pokazuje, jak ustawić tabelę, aby pozostać razem na tej samej stronie:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}