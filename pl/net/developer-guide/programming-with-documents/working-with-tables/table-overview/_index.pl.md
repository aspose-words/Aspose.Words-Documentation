---
title: Przegląd tabeli
second_title: Aspose.Words dla .NET
articleTitle: Przegląd tabeli
linktitle: Przegląd tabeli
description: "Pracuj z tabelami i ich komponentami, takimi jak komórki, wiersze, kolumny w Aspose.Words dla .NET. Jak pracować z tabelami w formacie C#."
type: docs
weight: 10
url: /pl/net/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words to biblioteka klas przeznaczona do przetwarzania po stronie serwera dokumentów w różnych formatach – PDF, HTML, różnych formatach Microsoft Word i innych – i obsługuje tabele w następujący sposób:

* tabele w dokumencie są zachowywane podczas otwierania/zapisywania i konwersji
* możliwa jest edycja tabeli, treści i jej formatowania, a następnie eksport zmian do pliku w formacie obsługującym tabele

W tym artykule dowiemy się więcej o strukturze tabel, komórkach, wierszach i kolumnach obsługiwanych przez Aspose.Words oraz o szczegółach pracy z takimi tabelami.

## Struktura tabeli

Jak już wspomniano, tabela składa się z takich elementów, jak **Cell**, **Row** i **Column**. Są to pojęcia wspólne dla wszystkich tabel w ogóle, niezależnie od formatu dokumentu.

Oto typowy przykład tabeli znajdującej się w dokumencie Microsoft Word:

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### Węzły tabeli

Tabela z dowolnego dokumentu załadowanego do Aspose.Words jest importowana jako **Węzeł tabeli**. Stół można znaleźć jako dziecko:

- tekst główny
- historia wbudowana, taka jak komentarz lub przypis
- komórki, gdy tabela jest zagnieżdżona w innej tabeli

{{% alert color="primary" %}}

Należy pamiętać, że tabele można zagnieżdżać w innych tabelach na dowolną głębokość.

{{% /alert %}}

### Zawartość tabeli

Węzeł tabeli nie zawiera żadnej rzeczywistej treści – zamiast tego jest kontenerem dla innych tego typu węzłów, które składają się na treść:

- **Table** zawiera wiele węzłów **Row**. Tabela zawiera wszystkie typowe elementy węzła, co pozwala na swobodne przenoszenie, modyfikowanie i usuwanie tabeli w dokumencie.
- **Row** reprezentuje pojedynczy wiersz tabeli i zawiera wiele węzłów **Cell**. Ponadto **Row** udostępnia elementy definiujące sposób wyświetlania wiersza, takie jak wysokość i wyrównanie.
- **Cell** zawiera zawartość true widoczną w tabeli i składa się z plików **Paragraph** i innych węzłów na poziomie bloków. Ponadto komórki mogą zawierać zagnieżdżone tabele.

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Możesz sprawdzić strukturę węzłów tabeli w dokumencie za pomocą **DocumentExplorer**.

{{% /alert %}}

### Pusty akapit po tabeli

Powyższy obrazek pokazuje, że dokument zawiera kilkuwierszową tabelę, która z kolei składa się z dwóch komórek. Każda z dwóch komórek zawiera akapit, który jest pojemnikiem na tekst sformatowany w komórce.

Warto również zaznaczyć, że oddzielenie dwóch kolejnych tabel w dokumencie wymaga umieszczenia po tabeli przynajmniej jednego pustego akapitu. Bez takiego akapitu kolejne tabele zostałyby połączone w jedną. To zachowanie jest identyczne w obu formatach Microsoft Word i Aspose.Words.

W Aspose.Words wszystkie klasy i właściwości związane z tabelami zawarte są w przestrzeni nazw [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/).

## Zobacz też

* [Aspose.Words Document Object Model (DOM)](/words/pl/net/aspose-words-document-object-model/)
* [Poziomy logiczne węzłów w dokumencie](/words/pl/net/logical-levels-of-nodes-in-a-document/)
