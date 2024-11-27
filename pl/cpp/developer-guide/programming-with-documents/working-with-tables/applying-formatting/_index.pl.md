---
title: Formatowanie tabeli w C++
second_title: Aspose.Words dla C++
articleTitle: Zastosuj Formatowanie
linktitle: Zastosuj Formatowanie
description: "Formatowanie tabeli w szczegółach za pomocą C++. Używanie C++ do formatowania każdej części tabeli."
type: docs
weight: 70
url: /pl/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Każdy element tabeli można zastosować z innym formatowaniem. Na przykład formatowanie tabeli zostanie zastosowane do całej tabeli, formatowanie wierszy tylko do określonych wierszy, Formatowanie komórek tylko do niektórych komórek.

Aspose.Words zapewnia bogaty API do pobierania i stosowania formatowania do tabeli. Do ustawienia formatowania można użyć węzłów [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) i [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/).

W tym artykule porozmawiamy o tym, jak zastosować formatowanie do różnych węzłów tabeli i jakie ustawienia formatowania tabeli obsługują Aspose.Words.

## Zastosuj formatowanie do różnych węzłów

W tej sekcji przyjrzymy się zastosowaniu formatowania do różnych węzłów tabeli.

### Formatowanie Poziomu Tabeli

Aby zastosować formatowanie do tabeli, możesz użyć właściwości dostępnych w odpowiednim węźle **Table** przy użyciu klas [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) i [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Należy pamiętać, że tabela musi mieć co najmniej jeden wiersz, zanim można zastosować właściwości tabeli. Oznacza to, że podczas budowania tabeli z [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) formatowanie to musi być wykonane po pierwszym wywołaniu [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) lub po dodaniu pierwszego wiersza do tabeli lub gdy węzły są wstawiane bezpośrednio do DOM.

{{% /alert %}}

Poniższe zdjęcia przedstawiają reprezentację funkcji formatowania **Table** w Microsoft Word i odpowiadających im właściwości w Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Poniższy przykład kodu pokazuje, jak zastosować obramowanie konturu do tabeli:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Poniższy przykład kodu pokazuje, jak zbudować tabelę z włączonymi wszystkimi obramowaniami (siatka):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Formatowanie Na Poziomie Wiersza

**Poziom rzędu**

{{% alert color="primary" %}}

Zauważ, że **Row** może być tylko węzłem potomnym **Table**. Jednocześnie musi być co najmniej jeden **Cell** w **Row**, aby można było zastosować do niego formatowanie.

{{% /alert %}}

Poniższe zdjęcia przedstawiają reprezentację funkcji formatowania **Row** w Microsoft Word i odpowiadających im właściwości w Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Poniższy przykład kodu pokazuje, jak zmodyfikować formatowanie wiersza tabeli:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Formatowanie Na Poziomie Komórki

Formatowanie na poziomie komórki jest kontrolowane przez klasy [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) i [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Zauważ, że **Cell** może być tylko węzłem potomnym **Row**. Jednocześnie musi być co najmniej jeden [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) w **Cell**, aby można było zastosować do niego formatowanie.

Oprócz **Paragraph** Możesz również wstawić **Table** do **Cell**.

{{% /alert %}}

Poniższe zdjęcia przedstawiają reprezentację funkcji formatowania **Cell** w Microsoft Word i odpowiadających im właściwości w Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Poniższy przykład kodu pokazuje, jak zmodyfikować formatowanie komórki tabeli:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Poniższy przykład kodu pokazuje, jak ustawić ilość miejsca (w punktach), aby dodać do lewej / górnej / prawej / dolnej części zawartości komórki:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Określ Wysokości Wierszy

Najprostszym sposobem ustawienia wysokości wiersza jest użycie **DocumentBuilder**. Korzystając z odpowiednich właściwości **RowFormat**, możesz ustawić domyślne ustawienie wysokości lub zastosować inną wysokość dla każdego wiersza w tabeli.

W Aspose.Words wysokość wiersza tabeli jest kontrolowana przez:

- właściwość row height - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- właściwość reguła wysokości dla danego wiersza - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Jednocześnie dla każdego rzędu można ustawić inną wysokość-pozwala to na szerokie sterowanie ustawieniami stołu.

{{% alert color="primary" %}}

Opcje reguł określających wysokość obiektu można ustawić za pomocą wyliczenia [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak utworzyć tabelę zawierającą pojedynczą komórkę i zastosować formatowanie wiersza:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Określanie szerokości tabel i komórek

Tabela w dokumencie Microsoft Word udostępnia kilka różnych sposobów zmiany rozmiaru tabeli i poszczególnych komórek. Te właściwości pozwalają na znaczną kontrolę nad wyglądem i zachowaniem tabeli, tak że Aspose.Words obsługuje zachowanie tabel, jak w Microsoft Word.

Ważne jest, aby wiedzieć, że elementy tabeli mają kilka różnych właściwości, które mogą wpływać na sposób obliczania szerokości całej tabeli, a także poszczególnych komórek:

- Preferowana szerokość na stole
- Preferowana szerokość na poszczególnych komórkach
- Umożliwienie automatycznego dopasowania na stole

W tym artykule szczegółowo opisano, jak działają różne właściwości obliczania szerokości tabeli i jak uzyskać pełną kontrolę nad obliczaniem szerokości tabeli. To jest
szczególnie przydatne, aby wiedzieć w takich przypadkach, w których układ tabeli nie pojawia się zgodnie z oczekiwaniami.

{{% alert color="primary" %}}

W większości przypadków zalecana jest preferowana komórka niż szerokość tabeli. Preferowana szerokość komórki jest bardziej zgodna ze specyfikacją formatu DOCX, a także z modelem Aspose.Words.

Szerokość komórki jest w rzeczywistości obliczoną wartością dla formatu DOCX. Rzeczywista szerokość komórki może zależeć od wielu rzeczy. Na przykład zmiana marginesów strony lub preferowanej szerokości tabeli może wpłynąć na rzeczywistą szerokość komórki.

Preferowana szerokość komórki to właściwość komórki przechowywana w dokumencie. Nie zależy od niczego i nie zmienia się po zmianie tabeli lub innych właściwości komórki.

{{% /alert %}}

{{% alert color="primary" %}}

Wszystkie właściwości i metody opisane w tym artykule są związane z działaniem tabel w Microsoft Word. Tak więc w większości przypadków, jeśli budujesz tabelę programowo, ale trudno jest utworzyć żądaną tabelę, możesz zamiast tego spróbować wizualnie utworzyć ją w Microsoft Word, a następnie po prostu skopiować wartości formatowania do aplikacji.

{{% /alert %}}

### Jak korzystać z preferowanej szerokości

Pożądana szerokość tabeli lub pojedynczych komórek jest definiowana za pomocą właściwości preferred width, czyli rozmiaru, który element stara się dopasować. Oznacza to, że preferowaną szerokość można określić dla całej tabeli lub dla poszczególnych komórek. W niektórych sytuacjach dokładne dopasowanie tej szerokości może nie być możliwe, ale w większości przypadków rzeczywista szerokość będzie zbliżona do tej wartości.

Odpowiedni preferowany typ szerokości i wartość są ustawiane przy użyciu metod klasy [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- metoda [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) określająca auto lub "brak preferowanej szerokości"
- metoda [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) określająca szerokość procentową
- metoda [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) określająca szerokość w punktach

Poniższe zdjęcia przedstawiają reprezentację *preferred width setting features* W Microsoft Word i odpowiadające im właściwości w Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Przykład zastosowania tych opcji do rzeczywistej tabeli w dokumencie można zobaczyć na poniższym obrazku.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Zanim będzie można użyć preferowanej szerokości w tabeli, należy upewnić się, że tabela zawiera co najmniej jeden wiersz. Dzieje się tak, ponieważ takie formatowanie tabeli w dokumencie Microsoft Word lub w dokumencie utworzonym w Aspose.Words jest przechowywane w wierszach tabeli.

{{% /alert %}}

#### Określ preferowaną szerokość tabeli lub komórki

W Aspose.Words szerokości tabeli i komórek są ustawiane przy użyciu właściwości [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) i właściwości [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), z opcjami dostępnymi w wyliczeniu [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, co jest równoważne żadnemu preferowanemu zestawowi szerokości
- **Percent**, który pasuje do elementu względem dostępnego miejsca w oknie lub rozmiarze kontenera i ponownie oblicza wartość, gdy zmienia się dostępna szerokość
- **Points**, który odpowiada elementowi o określonej szerokości w punktach

{{% alert color="primary" %}}

Domyślnie tabelę można opisać jako dopasowaną do 100% dostępnego miejsca na stronie. W takim przypadku oznacza to, że tabela spróbuje zająć miejsce między lewym i prawym marginesem strony.

{{% /alert %}}

Użycie właściwości [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) spowoduje dostosowanie jej preferowanej szerokości względem kontenera: strony, kolumny tekstu lub zewnętrznej komórki tabeli, jeśli jest to tabela zagnieżdżona.

Poniższy przykład kodu pokazuje, jak ustawić tabelę na automatyczne dopasowanie do 50% szerokości strony:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Użycie właściwości [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) w danej komórce dostosuje jej preferowaną szerokość.

Poniższy przykład kodu pokazuje, jak ustawić różne preferowane ustawienia szerokości:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Znajdź preferowany typ szerokości i wartość

Możesz użyć właściwości [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) i [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/), aby znaleźć preferowane szczegóły szerokości żądanej tabeli lub komórki.

Poniższy przykład kodu pokazuje, jak pobrać preferowany typ szerokości komórki tabeli:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Jak ustawić Autofit

Właściwość [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) pozwala komórkom w tabeli rosnąć i kurczyć się zgodnie z wybranym kryterium. Na przykład możesz użyć opcji **AutoFit to Window**, aby dopasować tabelę do szerokości strony, a opcji **AutoFit to Content**, aby umożliwić wzrost lub kurczenie się każdej komórki zgodnie z jej zawartością.

{{% alert color="primary" %}}

Ponadto Właściwość **AllowAutoFit** może być używana w połączeniu z preferowaną szerokością komórki do formatowania komórki, która automatycznie pasuje do jej zawartości, ale ma również początkową szerokość. W razie potrzeby szerokość komórki może przekroczyć tę szerokość.

{{% /alert %}}

Domyślnie Aspose.Words wstawia nową tabelę za pomocą **AutoFit to Window**. Tabela będzie dopasowana do dostępnej szerokości strony. Aby zmienić rozmiar tabeli, możesz wywołać metodę [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Ta metoda akceptuje wyliczenie [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/), które określa, jaki typ autofit jest stosowany do tabeli.

Ważne jest, aby wiedzieć, że metoda autofit jest w rzeczywistości skrótem, który stosuje różne właściwości do tabeli w tym samym czasie. Są to właściwości, które faktycznie nadają tabeli obserwowane zachowanie. Omówimy te właściwości dla każdej opcji autofit.

Poniższy przykład kodu pokazuje, jak ustawić tabelę, aby zmniejszyć lub powiększyć każdą komórkę zgodnie z jej zawartością:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit tabela do okna

Po zastosowaniu automatycznego dopasowania do okna do tabeli, następujące operacje są faktycznie wykonywane za kulisami:

1. Właściwość **Table.AllowAutoFit** umożliwia automatyczną zmianę rozmiaru kolumn w celu dopasowania do dostępnej zawartości przy użyciu wartości **Table.PreferredWidth** równej 100%
2. **CellFormat.PreferredWidth** jest usuwany ze wszystkich komórek tabeli
   {{% alert color="primary" %}}
   Zauważ, że różni się to nieco od zachowania Microsoft Word, w którym preferowana szerokość każdej komórki jest ustawiona na odpowiednie wartości na podstawie ich bieżącego rozmiaru i zawartości. Aspose.Words nie aktualizuje preferowanej szerokości, więc zamiast tego zostają wyczyszczone.
   {{% /alert %}}
3. Szerokości kolumn są ponownie obliczane dla bieżącej zawartości tabeli - wynikiem końcowym jest tabela zajmująca całą dostępną szerokość
4. Szerokość kolumn w tabeli zmienia się automatycznie, gdy użytkownik edytuje tekst

Poniższy przykład kodu pokazuje, jak automatycznie dopasować tabelę do szerokości strony:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit tabela do treści

Gdy tabela jest automatycznie ustawiana zawartość, następujące kroki są faktycznie wykonywane za kulisami:

1. Właściwość **Table.AllowAutoFit** umożliwia automatyczną zmianę rozmiaru każdej komórki zgodnie z jej zawartością

2. Preferowana szerokość tabeli jest usuwana z **Table.PreferredWidth**, **CellFormat.PreferredWidth** jest usuwana dla każdej komórki tabeli
   {{% alert color="primary" %}}

   Zauważ, że ta opcja autofit usuwa preferowaną szerokość z komórek, tak jak w Microsoft Word. Jeśli chcesz zachować rozmiary kolumn i zwiększyć lub zmniejszyć kolumny, aby pasowały do zawartości, powinieneś ustawić właściwość **Table.AllowAutoFit** na **True** samodzielnie, zamiast używać skrótu autofit.{{% /alert %}}

3. Szerokości kolumn są ponownie obliczane dla bieżącej zawartości tabeli - wynikiem końcowym jest tabela, w której szerokość kolumn i szerokość całej tabeli są automatycznie zmieniane, aby jak najlepiej pasowały do treści, gdy użytkownik edytuje tekst

Poniższy przykład kodu pokazuje, jak automatycznie dopasować tabelę do jej zawartości:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Wyłącz AutoFit w tabeli i użyj stałych szerokości kolumn

Jeśli tabela ma wyłączone autofit i zamiast tego używane są stałe szerokości kolumn, wykonywane są następujące kroki:

1. **Table.AllowAutoFit** właściwość jest wyłączona, więc kolumny nie rosną ani nie kurczą się do ich zawartości
2. Preferowana szerokość całej tabeli jest usuwana z **Table.PreferredWidth**, **CellFormat.PreferredWidth** jest usuwana ze wszystkich komórek tabeli
3. Wynikiem końcowym jest tabela, której szerokości kolumn są określone przez właściwość [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) i której rozmiar kolumn nie jest automatycznie zmieniany, gdy użytkownik wprowadza tekst lub gdy strona jest zmieniana

{{% alert color="primary" %}}

Zauważ, że jeśli nie określono szerokości dla **CellFormat.Width**, używana jest domyślna wartość jednego cala (72 punkty).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wyłączyć autofit i włączyć stałą szerokość dla określonej tabeli:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Kolejność pierwszeństwa przy obliczaniu szerokości komórki

Aspose.Words umożliwia użytkownikom definiowanie szerokości tabeli lub komórki za pomocą wielu obiektów, w tym [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – jego właściwość [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) jest w większości pozostawiona z poprzednich wersji, jednak nadal jest przydatna do uproszczenia ustawiania szerokości komórki.

Ważne jest, aby wiedzieć, że właściwość **CellFormat.Width** działa inaczej w zależności od tego, która z innych właściwości szerokości już istnieje w tabeli.

Aspose.Words używa następującej kolejności do obliczania szerokości komórek:

| Zamówienie | Nieruchomości | Opis |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) jest określona | Jeśli **AutoFit** jest włączony:<br />- tabela może przekroczyć preferowaną szerokość, aby pomieścić zawartość-zwykle nie kurczy się poniżej preferowanej szerokości<br />- każda zmiana wartości **CellFormat.Width** jest ignorowana, a komórka będzie pasować do jej zawartości |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) o wartości **Points** lub **Percent** | **CellFormat.Width** jest ignorowany |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) o wartości **Auto** | Wartość z **CellFormat.Width** jest kopiowana i staje się preferowaną szerokością komórki (w punktach) |

{{% alert color="primary" %}}

Wszelkie zmiany właściwości width nie są aktualizowane w preferowanej szerokości i zamiast tego należy je zastosować do preferowanej szerokości.

{{% /alert %}}

{{% alert color="primary" %}}

Podczas tworzenia stałego układu tabeli określ szerokość komórki. Komórki bez szerokości nie można zapisać w formacie DOC. Formaty dokumentów inne niż DOC, takie jak DOCX, pozwalają w zasadzie na zapisywanie komórek bez szerokości w ustalonym układzie tabeli.

{{% /alert %}}

## Zezwalaj Na Odstępy Między Komórkami

Możesz uzyskać lub ustawić dowolną dodatkową przestrzeń między komórkami tabeli podobną do opcji" odstępy między komórkami " w Microsoft Word. Można to zrobić za pomocą właściwości [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Przykład zastosowania tych opcji do rzeczywistej tabeli w dokumencie można zobaczyć na poniższym obrazku.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Poniższy przykład kodu pokazuje, jak ustawić odstępy między komórkami:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Zastosuj obramowania i cieniowanie

Obramowania i cieniowanie można zastosować do całej tabeli za pomocą [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) i [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/) lub tylko do określonych komórek za pomocą [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) i [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Dodatkowo granice wierszy można ustawić za pomocą [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), jednak cieniowanie nie może być stosowane w ten sposób.

Poniższe zdjęcia pokazują ustawienia obramowania i cienia w Microsoft Word i odpowiadające im właściwości w Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Poniższy przykład kodu pokazuje, jak sformatować tabelę I komórkę z różnymi obramowaniami i cieniami:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
