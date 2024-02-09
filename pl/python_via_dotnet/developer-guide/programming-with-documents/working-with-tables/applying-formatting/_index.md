---
title: Formatowanie tabeli w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Zastosuj formatowanie
linktitle: Zastosuj formatowanie
description: "Szczegóły formatowania tabeli przy użyciu Python. Użyj Python, aby sformatować każdą część tabeli."
type: docs
weight: 70
url: /pl/python-net/applying-formatting/
---

Do każdego elementu tabeli można zastosować inne formatowanie. Na przykład formatowanie tabeli zostanie zastosowane do całej tabeli, formatowanie wierszy tylko do określonych wierszy, a formatowanie komórek tylko do wybranych komórek.

Aspose.Words zapewnia bogaty format API do pobierania i stosowania formatowania w tabeli. Do ustawienia formatowania można użyć węzłów [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) i [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/).

W tym artykule porozmawiamy o tym, jak zastosować formatowanie do różnych węzłów tabeli i jakie ustawienia formatowania tabeli obsługuje Aspose.Words.

## Zastosuj formatowanie do różnych węzłów

W tej sekcji przyjrzymy się stosowaniu formatowania do różnych węzłów tabeli.

### Formatowanie na poziomie tabeli

Aby zastosować formatowanie do tabeli, możesz użyć właściwości dostępnych w odpowiednim węźle **Table** przy użyciu klas [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) i [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Należy pamiętać, że aby można było zastosować właściwości tabeli, tabela musi zawierać co najmniej jeden wiersz. Oznacza to, że podczas budowania tabeli w formacie [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) formatowanie to należy wykonać po pierwszym wywołaniu [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default), po dodaniu pierwszego wiersza do tabeli lub po wstawieniu węzłów bezpośrednio do pliku DOM.

{{% /alert %}}

Poniższe rysunki przedstawiają funkcje formatowania **Table** w formacie Microsoft Word i odpowiadające im właściwości w formacie Aspose.Words.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

Poniższy przykład kodu pokazuje, jak zastosować obramowanie konspektu do tabeli:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zbudować tabelę z włączonymi wszystkimi obramowaniami (siatką):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatowanie na poziomie wiersza

Formatowaniem **Poziom wiersza** można sterować za pomocą klas [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/) i [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Należy pamiętać, że **Row** może być tylko węzłem podrzędnym **Table**. Jednocześnie w pliku **Row** musi znajdować się co najmniej jeden plik **Cell**, aby można było zastosować do niego formatowanie.

{{% /alert %}}

Poniższe rysunki przedstawiają funkcje formatowania **Row** w formacie Microsoft Word i odpowiadające im właściwości w formacie Aspose.Words.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


Poniższy przykład kodu pokazuje, jak zmodyfikować formatowanie wierszy tabeli:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatowanie na poziomie komórki

Formatowanie na poziomie komórki jest kontrolowane przez klasy [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/) i [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Należy pamiętać, że **Cell** może być tylko węzłem podrzędnym **Row**. Jednocześnie w pliku **Cell** musi znajdować się co najmniej jeden plik [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), aby można było zastosować do niego formatowanie.

Oprócz **Paragraph** możesz także wstawić **Table** do **Cell**.

{{% /alert %}}

Poniższe rysunki przedstawiają funkcje formatowania **Cell** w formacie Microsoft Word i odpowiadające im właściwości w formacie Aspose.Words.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


Poniższy przykład kodu pokazuje, jak zmodyfikować formatowanie komórki tabeli:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak ustawić ilość miejsca (w punktach), które ma zostać dodane po lewej/górze/prawej/dolnej stronie zawartości komórki:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## Określ wysokość wierszy

Najprostszym sposobem ustawienia wysokości wiersza jest użycie **DocumentBuilder**. Korzystając z odpowiednich właściwości **RowFormat**, możesz ustawić domyślne ustawienie wysokości lub zastosować inną wysokość dla każdego wiersza w tabeli.

W Aspose.Words wysokość wiersza tabeli jest kontrolowana przez:

- właściwość wysokości wiersza – [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- właściwość reguły wysokości dla danego wiersza – [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

Jednocześnie dla każdego rzędu można ustawić inną wysokość – pozwala to na szeroką kontrolę ustawień stołu.

{{% alert color="primary" %}}

Opcje reguł określające wysokość obiektu można ustawić za pomocą wyliczenia [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak utworzyć tabelę zawierającą pojedynczą komórkę i zastosować formatowanie wierszy:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## Określanie szerokości tabeli i komórek

Tabela w dokumencie Microsoft Word udostępnia kilka różnych sposobów zmiany rozmiaru tabeli i poszczególnych komórek. Właściwości te pozwalają na znaczną kontrolę nad wyglądem i zachowaniem tabeli, dzięki czemu Aspose.Words obsługuje zachowanie tabel, podobnie jak w Microsoft Word.

Ważne jest, aby wiedzieć, że elementy tabeli mają kilka różnych właściwości, które mogą wpływać na sposób obliczania szerokości całej tabeli, a także poszczególnych komórek:

- Preferowana szerokość na stole
- Preferowana szerokość poszczególnych komórek
- Umożliwienie automatycznego dopasowania na stole

W tym artykule szczegółowo opisano, jak działają różne właściwości obliczania szerokości tabeli i jak uzyskać pełną kontrolę nad obliczaniem szerokości tabeli. To jest
Jest to szczególnie przydatne w przypadkach, gdy układ tabeli nie wygląda zgodnie z oczekiwaniami.

{{% alert color="primary" %}}

W większości przypadków zalecana jest preferowana komórka niż szerokość tabeli. Preferowana szerokość komórki jest bardziej zgodna ze specyfikacją formatu DOCX, a także modelem Aspose.Words.

Szerokość komórki jest w rzeczywistości wartością obliczoną dla formatu DOCX. Rzeczywista szerokość komórki może zależeć od wielu rzeczy. Na przykład zmiana marginesów strony lub preferowanej szerokości tabeli może wpłynąć na rzeczywistą szerokość komórki.

Preferowana szerokość komórki to właściwość komórki przechowywana w dokumencie. Nie zależy od niczego i nie zmienia się, gdy zmieniasz tabelę lub inne właściwości komórki.

{{% /alert %}}

{{% alert color="primary" %}}

Wszystkie właściwości i metody opisane w tym artykule są powiązane z działaniem tabel w Microsoft Word. Zatem w większości przypadków, jeśli programowo budujesz tabelę, ale masz trudności z utworzeniem żądanej tabeli, możesz zamiast tego spróbować najpierw wizualnie utworzyć ją w Microsoft Word, a następnie po prostu skopiować wartości formatowania do swojej aplikacji.

{{% /alert %}}

### Jak korzystać z preferowanej szerokości

Pożądaną szerokość tabeli lub poszczególnych komórek definiuje się poprzez preferowaną właściwość szerokości, czyli rozmiar, do jakiego stara się dopasować element. Oznacza to, że preferowaną szerokość można określić dla całej tabeli lub dla poszczególnych komórek. W niektórych sytuacjach dokładne dopasowanie tej szerokości może nie być możliwe, ale w większości przypadków rzeczywista szerokość będzie zbliżona do tej wartości.

Odpowiedni preferowany typ szerokości i wartość ustawia się za pomocą metod klasy [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/):

- metoda [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) do określenia szerokości automatycznej lub "brak preferowanej szerokości"
- metoda [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) służąca do określenia procentowej szerokości
- metoda [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) określająca szerokość w punktach

Poniższe rysunki przedstawiają *preferowane funkcje ustawiania szerokości* w formacie Microsoft Word i odpowiadające im właściwości w formacie Aspose.Words.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

Przykład zastosowania tych opcji do rzeczywistej tabeli w dokumencie widać na poniższym obrazku.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Zanim będzie można użyć preferowanej szerokości w tabeli, należy upewnić się, że tabela zawiera co najmniej jeden wiersz. Dzieje się tak dlatego, że takie formatowanie tabeli w dokumencie Microsoft Word lub w dokumencie utworzonym w formacie Aspose.Words jest przechowywane w wierszach tabeli.

{{% /alert %}}

#### Określ preferowaną szerokość tabeli lub komórki

W Aspose.Words szerokość tabeli i komórki jest ustawiana za pomocą właściwości [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) i właściwości [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/), z opcjami dostępnymi w wyliczeniu [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/):

- **Auto**, co jest równoznaczne z brakiem zestawu preferowanej szerokości
- **Percent**, który dopasowuje element względem dostępnej przestrzeni w oknie lub rozmiarze kontenera i przelicza wartość w przypadku zmiany dostępnej szerokości
- **Points**, który odpowiada elementowi o określonej szerokości w punktach

{{% alert color="primary" %}}

Domyślnie tabelę można opisać jako zajmującą 100% dostępnego miejsca na stronie. W tym przypadku oznacza to, że tabela będzie próbowała zająć miejsce pomiędzy lewym i prawym marginesem strony.

{{% /alert %}}

Użycie właściwości [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) spowoduje dostosowanie preferowanej szerokości względem kontenera: strony, kolumny tekstowej lub zewnętrznej komórki tabeli, jeśli jest to tabela zagnieżdżona.

Poniższy przykład kodu pokazuje, jak ustawić tabelę tak, aby automatycznie dopasowywała się do 50% szerokości strony:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

Użycie właściwości [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) w danej komórce spowoduje dostosowanie jej preferowanej szerokości.

Poniższy przykład kodu pokazuje, jak ustawić różne preferowane ustawienia szerokości:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### Znajdowanie preferowanego typu i wartości szerokości

Możesz użyć właściwości [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) i [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/), aby znaleźć preferowane szczegóły szerokości żądanej tabeli lub komórki.

Poniższy przykład kodu pokazuje, jak pobrać preferowany typ szerokości komórki tabeli:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Jak ustawić automatyczne dopasowanie

Właściwość [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) umożliwia powiększanie i zmniejszanie komórek w tabeli zgodnie z wybranym kryterium. Na przykład możesz użyć opcji **Automatyczne dopasowanie do okna**, aby dopasować tabelę do szerokości strony, oraz opcji **Automatyczne dopasowanie do treści**, aby umożliwić powiększanie lub zmniejszanie każdej komórki w zależności od jej zawartości.

{{% alert color="primary" %}}

Ponadto właściwości **AllowAutoFit** można użyć w połączeniu z preferowaną szerokością komórki, aby sformatować komórkę, która automatycznie dopasowuje się do jej zawartości, ale ma również początkową szerokość. Jeśli to konieczne, szerokość komórki może następnie wzrosnąć powyżej tej szerokości.

{{% /alert %}}

Domyślnie Aspose.Words wstawia nową tabelę za pomocą **Automatyczne dopasowanie do okna**. Rozmiar tabeli zostanie dostosowany do dostępnej szerokości strony. Aby zmienić rozmiar tabeli, możesz wywołać metodę [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior). Ta metoda akceptuje wyliczenie [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/), które określa, jaki typ automatycznego dopasowania jest stosowany w tabeli.

Warto wiedzieć, że metoda automatycznego dopasowania jest w rzeczywistości skrótem, który jednocześnie stosuje do tabeli różne właściwości. Są to właściwości, które faktycznie nadają tabeli obserwowane zachowanie. Omówimy te właściwości dla każdej opcji automatycznego dopasowania.

Poniższy przykład kodu pokazuje, jak ustawić tabelę tak, aby zmniejszała lub powiększała każdą komórkę zgodnie z jej zawartością:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### Automatyczne dopasowanie tabeli do okna

Gdy do tabeli zostanie zastosowane automatyczne dopasowanie do okna, w tle faktycznie wykonywane są następujące operacje:

1. Właściwość **Table.AllowAutoFit** umożliwia automatyczną zmianę rozmiaru kolumn w celu dopasowania ich do dostępnej treści przy użyciu wartości **Table.PreferredWidth** wynoszącej 100%
2. **CellFormat.PreferredWidth** zostanie usunięty ze wszystkich komórek tabeli
      {{% alert color="primary" %}}
   Należy zauważyć, że różni się to nieco od zachowania Microsoft Word, gdzie preferowana szerokość każdej komórki jest ustawiana na odpowiednie wartości w oparciu o jej bieżący rozmiar i zawartość. Aspose.Words nie aktualizuje preferowanej szerokości, więc zamiast tego jest ona po prostu czyszczona.
      {{% /alert %}}
3. Szerokości kolumn są przeliczane pod kątem aktualnej zawartości tabeli – efektem końcowym jest tabela zajmująca całą dostępną szerokość
4. Szerokość kolumn tabeli zmienia się automatycznie w miarę edycji tekstu przez użytkownika

Poniższy przykład kodu pokazuje, jak automatycznie dopasować tabelę do szerokości strony:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Automatyczne dopasowanie tabeli do zawartości

Kiedy zawartość tabeli jest automatycznie dopasowywana, w tle wykonywane są następujące kroki:

1. Właściwość **Table.AllowAutoFit** jest włączona, aby automatycznie zmieniać rozmiar każdej komórki zgodnie z jej zawartością

2. Preferowana szerokość tabeli jest usuwana z **Table.PreferredWidth**, **CellFormat.PreferredWidth** jest usuwany dla każdej komórki tabeli
      {{% alert color="primary" %}}

   Należy pamiętać, że ta opcja automatycznego dopasowania usuwa preferowaną szerokość z komórek, podobnie jak w Microsoft Word. Jeśli chcesz zachować rozmiary kolumn i zwiększyć lub zmniejszyć kolumny, aby dopasować je do treści, powinieneś ustawić właściwość **Table.AllowAutoFit** samodzielnie na **True**, zamiast używać skrótu automatycznego dopasowania.{{% /alert %}}

3. Szerokość kolumn jest przeliczana dla aktualnej zawartości tabeli – efektem końcowym jest tabela, w której szerokość kolumn i szerokość całej tabeli są automatycznie dopasowywane do treści podczas edycji tekstu przez użytkownika

Poniższy przykład kodu pokazuje, jak automatycznie dopasować tabelę do jej zawartości:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Wyłącz automatyczne dopasowanie w tabeli i użyj stałych szerokości kolumn

Jeśli w tabeli wyłączono automatyczne dopasowanie i zamiast tego używane są stałe szerokości kolumn, wykonywane są następujące kroki:

1. Właściwość **Table.AllowAutoFit** jest wyłączona, więc kolumny nie powiększają się ani nie zmniejszają do swojej zawartości
2. Z **Table.PreferredWidth** usunięto preferowaną szerokość całej tabeli, ze wszystkich komórek tabeli usunięto **CellFormat.PreferredWidth**
3. Efektem końcowym jest tabela, której szerokość kolumn jest określona przez właściwość [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) i której rozmiar kolumn nie jest automatycznie zmieniany, gdy użytkownik wprowadza tekst lub gdy zmienia się rozmiar strony

{{% alert color="primary" %}}

Należy pamiętać, że jeśli dla **CellFormat.Width** nie określono szerokości, używana jest domyślna wartość jednego cala (72 punkty).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wyłączyć automatyczne dopasowanie i włączyć stałą szerokość dla określonej tabeli:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Kolejność pierwszeństwa przy obliczaniu szerokości komórki

Aspose.Words pozwala użytkownikom definiować szerokość tabeli lub komórki za pomocą wielu obiektów, w tym [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) – jego właściwość [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) jest w większości pozostałością z poprzednich wersji, jednak nadal jest przydatna do uproszczenia ustawiania szerokości komórki.

Ważne jest, aby wiedzieć, że właściwość **CellFormat.Width** działa inaczej w zależności od tego, które inne właściwości szerokości już istnieją w tabeli.

Aspose.Words stosuje następującą kolejność obliczania szerokości komórek:

|  Zamówienie |  Nieruchomość |  Opis |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) jest określony |  Jeśli **AutoFit** jest włączony:<br>- stół może urosnąć powyżej preferowanej szerokości, aby pomieścić zawartość - zwykle nie zmniejsza się poniżej preferowanej szerokości<br>- jakakolwiek zmiana wartości **CellFormat.Width** zostanie zignorowana i zamiast tego komórka dopasuje się do jej zawartości |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) o wartości **Points** lub **Percent** |  **CellFormat.Width** jest ignorowany |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) o wartości **Auto** |  Wartość z **CellFormat.Width** jest kopiowana i staje się preferowaną szerokością komórki (w punktach) |

{{% alert color="primary" %}}

Wszelkie zmiany właściwości szerokości nie są aktualizowane w preferowanej szerokości i zamiast tego muszą zostać zastosowane do preferowanej szerokości.

{{% /alert %}}

{{% alert color="primary" %}}

Tworząc stały układ tabeli, określ szerokość komórki. Komórki bez szerokości nie można zapisać w formacie DOC. Formaty dokumentów inne niż DOC, takie jak DOCX, pozwalają w zasadzie na zapisywanie komórek bez szerokości w ustalonym układzie tabeli.

{{% /alert %}}

## Zezwalaj na odstępy między komórkami

Możesz uzyskać lub ustawić dowolny dodatkowy odstęp między komórkami tabeli, podobnie jak w przypadku opcji "Odstępy komórek" w Microsoft Word. Można to zrobić za pomocą właściwości [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/).

Przykład zastosowania tych opcji do rzeczywistej tabeli w dokumencie widać na poniższym obrazku.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="formatowanie-odstępów-między-komórkami-układanie-słów-python" style="width:500px"/>

Poniższy przykład kodu pokazuje, jak ustawić odstępy między komórkami:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## Stosowanie obramowań i cieniowania

Obramowania i cieniowanie można zastosować do całej tabeli przy użyciu formatów [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) i [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/) lub tylko do określonych komórek przy użyciu formatów [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) i [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). Dodatkowo granice wierszy można ustawić za pomocą pliku [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/), jednak w ten sposób nie można zastosować cieniowania.

Poniższe zdjęcia pokazują ustawienia obramowania i cienia w formacie Microsoft Word oraz odpowiadające im właściwości w formacie Aspose.Words.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

Poniższy przykład kodu pokazuje, jak sformatować tabelę i komórkę z różnymi obramowaniami i cieniami:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}