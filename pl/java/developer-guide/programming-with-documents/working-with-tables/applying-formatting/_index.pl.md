---
title: Formatowanie tabeli Java
second_title: Aspose.Words zamiast Java
articleTitle: Zastosuj formatowanie tabeli
linktitle: Zastosuj formatowanie tabeli
description: "Stół formatuje w szczegółach. Stosowanie Java do formatowania każdej części tabeli."
type: docs
weight: 70
url: /pl/java/applying-formatting/
---

Każdy element tabeli może być zastosowany z innym formatowaniem. Na przykład, formatowanie tabeli będzie stosowane do całej tabeli, wiersz formatowanie tylko do poszczególnych wierszy, formatowanie komórek do tylko niektórych komórek.

Aspose.Words zapewnia bogaty API odzyskać i zastosować formatowanie do stołu. Można użyć [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), oraz [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) węzły do ustawiania formatowania.

W tym artykule porozmawiamy o tym, jak stosować formatowanie do różnych węzłów tabeli i jakie ustawienia formatowania tabeli Aspose.Words wsparcie.

## Zastosuj formatowanie do różnych węzłów

W tej sekcji, będziemy patrzeć na stosowanie formatowania do różnych węzłów tabeli.

### Formatowanie poziomu tabeli

Aby zastosować formatowanie do tabeli można użyć właściwości dostępnych na odpowiedniej **Table** węzeł [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), oraz [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) zajęcia.

{{% alert color="primary" %}}

Należy zauważyć, że tabela musi mieć co najmniej jeden wiersz przed zastosowaniem właściwości tabeli. Oznacza to, że budując stół z [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), to formatowanie musi być wykonane po pierwszym wezwaniu do [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), lub po pierwszym wierszu dodaje się do tabeli, lub gdy węzły są wstawiane bezpośrednio do DOM.

{{% /alert %}}

Poniższe zdjęcia przedstawiają reprezentację **Table** formatowanie funkcji w Microsoft Word i ich właściwości w Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

Poniższy przykład kodu pokazuje, w jaki sposób zastosować obrysową granicę do tabeli:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Poniższy przykład kodu pokazuje, jak zbudować tabelę z włączonymi wszystkimi granicami (siatka):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Formatowanie wiersza

Row- level * * formatowanie może być kontrolowane za pomocą [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), oraz [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) zajęcia.

{{% alert color="primary" %}}

Należy pamiętać, że **Row** może być tylko węzeł dziecięcy **Table**. Jednocześnie musi być przynajmniej jeden **Cell** w **Row** aby można było zastosować formatowanie.

{{% /alert %}}

Poniższe zdjęcia przedstawiają reprezentację **Row** formatowanie funkcji w Microsoft Word i ich właściwości w Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

Poniższy przykład kodu pokazuje jak zmodyfikować formatowanie wiersza tabeli:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Formatowanie poziomu komórki

Formatowanie na poziomie komórkowym jest kontrolowane przez [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), oraz [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) zajęcia.

{{% alert color="primary" %}}

Należy pamiętać, że **Cell** może być tylko węzeł dziecięcy **Row**. Jednocześnie musi być przynajmniej jeden [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) w **Cell** aby można było zastosować formatowanie.

Oprócz **Paragraph**, można również wstawić **Table** do **Cell**.

{{% /alert %}}

Poniższe zdjęcia przedstawiają reprezentację **Cell** formatowanie funkcji w Microsoft Word i ich właściwości w Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

Poniższy przykład kodu pokazuje jak zmodyfikować formatowanie komórki tabeli:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Poniższy przykład kodu pokazuje jak ustawić ilość miejsca (w punktach) do dodania do lewej / górnej / prawej / dolnej zawartości komórki:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Określanie wysokości wiersza

Najprostszym sposobem ustawienia wysokości wiersza jest użycie **DocumentBuilder**. Stosowanie odpowiednich **RowFormat** właściwości, można ustawić domyślną wysokość ustawienia lub zastosować inną wysokość dla każdego wiersza tabeli.

W Aspose.Words, wysokość wiersza tabeli jest kontrolowana przez:

- właściwość wysokości wiersza - [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- właściwość zasady wysokości dla danego wiersza - [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Jednocześnie można ustawić inną wysokość dla każdego rzędu - pozwala to na szerokie sterowanie ustawieniami tabeli.

{{% alert color="primary" %}}

Możliwe jest ustawienie opcji zasad określających wysokość obiektu za pomocą [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) pola.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak utworzyć tabelę zawierającą jedną komórkę i zastosować formatowanie wierszy:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Określ szerokość tablicy i komórki

Stół w Microsoft Word dokument zawiera kilka różnych sposobów zmiany rozmiaru tabeli i poszczególnych komórek. Właściwości te pozwalają na znaczną kontrolę nad wyglądem i zachowaniem tabeli, tak, że Aspose.Words wspiera zachowanie tabel, jak w Microsoft Word.

Ważne jest, aby wiedzieć, że elementy tabeli przedstawiają kilka różnych właściwości, które mogą mieć wpływ na sposób obliczania szerokości całkowitej tabeli, jak również poszczególnych komórek:

- Preferowana szerokość na stole
- Preferowana szerokość poszczególnych komórek
- Dopuszczenie autofit na stole

Ten artykuł szczegółowo określa, jak różne właściwości obliczania szerokości tabeli i jak uzyskać pełną kontrolę nad obliczeniem szerokości tabeli. To jest..
szczególnie przydatne, aby wiedzieć w takich przypadkach, gdy układ tabeli nie wydaje się tak, jak oczekiwano.

{{% alert color="primary" %}}

W większości przypadków zaleca się stosowanie preferowanej komórki niż szerokość tabeli. Preferowana szerokość komórki jest bardziej zgodna ze specyfikacją formatu DOCX oraz Aspose.Words Model.

Szerokość komórki jest obliczoną wartością dla formatu DOCX. Rzeczywista szerokość komórek może zależeć od wielu rzeczy. Na przykład zmiana marginesów strony lub preferowanej szerokości tabeli może mieć wpływ na rzeczywistą szerokość komórki.

Preferowana szerokość komórki jest właściwością komórki, która jest przechowywana w dokumencie. Nie zależy od niczego i nie zmienia się przy zmianie tabeli lub innych właściwości komórki.

{{% /alert %}}

{{% alert color="primary" %}}

Wszystkie właściwości i metody opisane w tym artykule są związane z tym, jak tabele działają w Microsoft Word. Więc w większości przypadków, jeśli budujesz swój stół programowo, ale trudno jest stworzyć pożądany stół, można spróbować wizualnie tworząc go w Microsoft Word najpierw, a następnie po prostu skopiować wartości formatowania do aplikacji.

{{% /alert %}}

### Jak stosować preferowaną szerokość

Pożądana szerokość tabeli lub poszczególnych komórek jest zdefiniowana poprzez preferowaną właściwość szerokości, która jest wielkością, którą element stara się dopasować. Oznacza to, że preferowaną szerokość można określić dla całej tabeli lub dla poszczególnych komórek. W niektórych sytuacjach może nie być możliwe dopasowanie tej szerokości dokładnie, ale rzeczywista szerokość będzie w większości przypadków zbliżona do tej wartości.

Odpowiedni preferowany typ szerokości i wartość są ustawiane przy użyciu metod [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) klasa:

- [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) pole, aby określić auto lub "brak preferowanej szerokości"
- [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) metoda określania szerokości procentowej
- [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) metoda określania szerokości punktów

Poniższe zdjęcia pokazują reprezentację * preferowanych funkcji ustawienia szerokości * w Microsoft Word i ich właściwości w Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Przykład zastosowania tych opcji do rzeczywistej tabeli w dokumencie można zobaczyć na rysunku poniżej.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Przed użyciem preferowanej szerokości tabeli należy upewnić się, że tabela zawiera co najmniej jeden wiersz. To dlatego, że takie formatowanie tabeli w Microsoft Word dokument lub dokument utworzony w Aspose.Words jest przechowywany w rzędach tabeli.

{{% /alert %}}

#### Określić preferowaną szerokość tabeli lub komórki

W Aspose.Words, szerokość tabel i komórek są ustawione za pomocą [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) nieruchomości i [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) właściwość, z opcji dostępnych w [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) wyliczenie:

- **Auto**, która jest równoważna nieustawieniu preferowanej szerokości
- **Percent**, która pasuje do elementu w stosunku do dostępnej przestrzeni w oknie lub wielkości pojemnika i ponownie oblicza wartość, gdy dostępna szerokość zmienia
- **Points**, która odpowiada elementowi określonej szerokości w punktach

{{% alert color="primary" %}}

Domyślnie można opisać tabelę jako zamocowaną do 100% dostępnej powierzchni na stronie. W tym przypadku oznacza to, że tabela będzie próbowała zająć przestrzeń pomiędzy marginesami lewej i prawej strony.

{{% /alert %}}

Korzystanie z [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) właściwość będzie dostosowywać swoją preferowaną szerokość względem pojemnika: strona, kolumna tekstowa lub zewnętrzna komórka tabeli, jeśli jest to zagnieżdżona tabela.

Poniższy przykład kodu pokazuje jak ustawić tabelę do auto- dopasować do 50% szerokości strony:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Korzystanie z [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) właściwość na danej komórce dostosowuje preferowaną szerokość.

Poniższy przykład kodu pokazuje jak ustawić różne ustawienia preferowanej szerokości:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Znajdź preferowany typ szerokości i wartość

Można użyć [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) oraz [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) właściwości, aby znaleźć preferowaną szerokość szczegóły pożądanej tabeli lub komórki.

Poniższy przykład kodu pokazuje jak pobrać preferowany typ szerokości komórki tabeli:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Jak ustawić Autofit

W [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) właściwość pozwala komórkom w tabeli rosnąć i kurczyć się zgodnie z wybranym kryterium. Na przykład, można użyć **AutoFit do okna** możliwość dopasowania tabeli do szerokości strony, **AutoFit do zawartości** opcja pozwalająca każdej komórce rosnąć lub kurczyć się w zależności od jej zawartości.

{{% alert color="primary" %}}

Ponadto **AllowAutoFit** właściwość może być używana w połączeniu z preferowaną szerokością komórki do formatowania komórki, która automatycznie pasuje do jej zawartości, ale ma również szerokość początkową. W razie potrzeby szerokość komórki może następnie wzrosnąć powyżej tej szerokości.

{{% /alert %}}

Domyślnie, Aspose.Words wstawia nową tabelę używając **AutoFit do okna**. Tabela będzie wielkości według dostępnej szerokości strony. Aby zmienić rozmiar tabeli, można zadzwonić do [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) Metoda. Ta metoda akceptuje [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) wyliczenie określające rodzaj autofitu stosowanego do tabeli.

Ważne jest, aby wiedzieć, że metoda autofit jest rzeczywiście skrótem, który stosuje różne właściwości do tabeli w tym samym czasie. To są właściwości, które dają tabeli obserwowane zachowanie. Omówimy te właściwości dla każdej opcji autofit.

Poniższy przykład kodu pokazuje, jak ustawić tabelę do zmniejszenia lub wzrostu każdej komórki w zależności od jej zawartości:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Użyjemy poniższej tabeli do zastosowania różnych ustawień auto dopasowania jako demonstracja.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit Tabela do okna

Jeżeli automontaż do okna jest stosowany do tabeli, następujące operacje są rzeczywiście wykonywane za kulisami:

1. W **Table.AllowAutoFit** właściwość może automatycznie zmieniać rozmiar kolumn, aby dopasować dostępną zawartość, używając **Table.PreferredWidth** wartość 100%
2. **CellFormat.PreferredWidth** jest usuwany ze wszystkich komórek stołowych
      {{% alert color="primary" %}}
   Należy zauważyć, że jest to nieco odmienne od Microsoft Word zachowanie, gdzie preferowana szerokość każdej komórki jest ustawiona na odpowiednie wartości na podstawie ich obecnego rozmiaru i zawartości. Aspose.Words nie aktualizuje preferowanej szerokości, więc po prostu zostają oczyszczone.
      {{% /alert %}}
3. Szerokość kolumny jest ponownie obliczona dla bieżącej zawartości tabeli - wynik końcowy to tabela, która zajmuje całą dostępną szerokość
4. Szerokość kolumn w tabeli zmienia się automatycznie, gdy użytkownik edytuje tekst

Poniższy przykład kodu pokazuje jak automatycznie dopasować tabelę do szerokości strony:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Przykład zastosowania tych opcji do powyższej tabeli można zobaczyć na poniższym rysunku.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Tabela do zawartości

Gdy tabela jest automatycznie wyposażona zawartość, następujące kroki są rzeczywiście wykonywane za kulisami:

1. W **Table.AllowAutoFit** właściwość może automatycznie zmieniać rozmiar każdej komórki w zależności od jej zawartości

2. Preferowana szerokość tabeli jest usuwana z **Table.PreferredWidth**, **CellFormat.PreferredWidth** jest usuwany dla każdej komórki tabeli
      {{% alert color="primary" %}}

   Należy pamiętać, że ta opcja autofit usuwa preferowaną szerokość z komórek, tak jak w Microsoft Word. Jeśli chcesz zachować rozmiary kolumn i zwiększyć lub zmniejszyć kolumny, aby dopasować zawartość, należy ustawić **Table.AllowAutoFit** nieruchomości **True** samodzielnie zamiast używać skrótu autofit.{{% /alert %}}

3. Szerokości kolumn są ponownie obliczane dla bieżącej zawartości tabeli - wynik końcowy jest tabelą, w której szerokość kolumn i szerokość całej tabeli są automatycznie zmieniane, aby najlepiej dopasować zawartość, gdy użytkownik edytuje tekst

Poniższy przykład kodu pokazuje, jak automatycznie dopasować tabelę do jej zawartości:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Przykład zastosowania tych opcji do powyższej tabeli można zobaczyć na poniższym rysunku.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Wyłącz AutoFit w tabeli i użyj stałych szerokości kolumny

Jeżeli zamiast tabeli autofit jest wyłączony i stosowane są stałe szerokości kolumn, wykonuje się następujące czynności:

1. **Table.AllowAutoFit** właściwość jest wyłączona więc kolumny nie rosną lub kurczą się do ich zawartości
2. Preferowana szerokość całej tabeli jest usuwana z **Table.PreferredWidth**, **CellFormat.PreferredWidth** jest usuwany ze wszystkich komórek stołowych
3. Wynik końcowy to tabela, której szerokość kolumn jest określona przez [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) właściwość, której kolumny nie są automatycznie zmieniane, gdy użytkownik wprowadza tekst lub gdy strona jest zmieniana

{{% alert color="primary" %}}

Należy zauważyć, że jeżeli nie podano szerokości **CellFormat.Width**, użyto domyślnej wartości jednego cala (72 punkty).

{{% /alert %}}

Poniższy przykład kodu pokazuje jak wyłączyć autofit i włączyć stałą szerokość dla określonej tabeli:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Przykład zastosowania tych opcji do powyższej tabeli można zobaczyć na poniższym rysunku.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Kolejność precyzji przy obliczaniu szerokości komórki

Aspose.Words pozwala użytkownikom określić szerokość stołu lub komórki poprzez wiele obiektów, w tym [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) - [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) właściwość jest w większości pozostawiona z poprzednich wersji, jednak jest ona nadal przydatna do uproszczenia ustawienia szerokości komórek.

Ważne jest, aby wiedzieć, że **CellFormat.Width** właściwość działa inaczej w zależności od tego, które z innych właściwości szerokość istnieje już w tabeli.

Aspose.Words wykorzystuje następującą kolejność do obliczania szerokości komórek:

|  Kolejność |  Własność |  Opis |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) jest określony |  Jeśli **AutoFit** jest włączona:<br/>- tabela może rosnąć poza preferowaną szerokość, aby pomieścić zawartość - zazwyczaj nie kurczy się poniżej preferowanej szerokości<br/>- wszelkie zmiany **CellFormat.Width** wartość jest ignorowana i komórka będzie pasować do jej zawartości zamiast |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) o wartości **Points** lub **Percent** |  **CellFormat.Width** jest ignorowany |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) o wartości **Auto** |  Wartość z **CellFormat.Width** jest kopiowane i staje się preferowaną szerokością komórki (w punktach) |

{{% alert color="primary" %}}

Wszelkie zmiany właściwości szerokości nie są aktualizowane w preferowanej szerokości i zamiast tego muszą być stosowane do preferowanej szerokości.

{{% /alert %}}

{{% alert color="primary" %}}

Podczas tworzenia stałej tabeli należy określić szerokość komórki. Komórka bez szerokości nie może być zapisywana do formatu DOC. Formaty dokumentów inne niż DOC, takie jak DOCX, pozwalają zasadniczo oszczędzać komórki bez szerokości w ustalonym układzie tabeli.

{{% /alert %}}

## Pozwól na odstępy między komórkami

Można uzyskać lub ustawić dowolną dodatkową przestrzeń między komórkami tabeli podobną do opcji "Separacja" w Microsoft Word. Można to zrobić używając [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) nieruchomości.

Przykład zastosowania tych opcji do rzeczywistej tabeli w dokumencie można zobaczyć na rysunku poniżej.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Poniższy przykład kodu pokazuje jak ustawić odstępy między komórkami:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Zastosuj granice i cień

Granice i zacienienie mogą być stosowane albo do całej tabeli przy użyciu [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) oraz [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), lub tylko do określonych komórek wykorzystujących [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) oraz [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Dodatkowo można ustawić granice wierszy za pomocą [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), nie można jednak zastosować w ten sposób cienia.

Poniższe zdjęcia pokazują ustawienia granicy i cienia w Microsoft Word i ich właściwości w Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


Poniższy przykład kodu pokazuje jak formatować tabelę i komórkę z różnymi granicami i cieniami:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}