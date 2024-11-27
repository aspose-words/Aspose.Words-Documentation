---
title: Przegląd Tabeli
second_title: Aspose.Words dla C++
articleTitle: Przegląd Tabeli
linktitle: Przegląd Tabeli
description: "Pracuj z tabelami i ich składnikami, takimi jak komórki, wiersze, kolumny w Aspose.Words dla C++. Jak pracować z tabelami w C++."
type: docs
weight: 10
url: /pl/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words to biblioteka klas przeznaczona do przetwarzania dokumentów po stronie serwera w różnych formatach – PDF, HTML, różnych formatach Microsoft Word i innych-i obsługuje tabele w następujący sposób:

* tabele w dokumencie są zachowywane podczas otwierania / zapisywania i konwersji
* możliwe jest edytowanie tabeli, zawartości i jej formatowania, a następnie eksportowanie zmian do pliku w formacie obsługującym tabele

W tym artykule dowiemy się więcej o strukturze tabeli, komórkach, wierszach i kolumnach obsługiwanych przez Aspose.Words oraz szczegółach pracy z takimi tabelami.

## Struktura Tabeli

Jak już wspomniano, tabela składa się z takich elementów jak **Cell**, **Row** i **Column**. Są to pojęcia, które są wspólne dla wszystkich tabel w ogóle, niezależnie od formatu dokumentu.

Jest to typowy przykład tabeli znajdującej się w dokumencie Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Węzły Tabeli

Tabela z dowolnego dokumentu załadowanego do Aspose.Words jest importowana jako **Table node**. Stół można znaleźć jako dziecko:

- tekst główny
- wbudowana historia, taka jak komentarz lub przypis
- komórki, gdy tabela jest zagnieżdżona w innej tabeli

{{% alert color="primary" %}}

Należy pamiętać, że tabele można zagnieżdżać w innych tabelach na dowolną głębokość.

{{% /alert %}}

### Zawartość Tabeli

Węzeł tabeli nie zawiera żadnej rzeczywistej zawartości-zamiast tego jest kontenerem dla innych takich węzłów, które tworzą zawartość:

- **Table** zawiera wiele **Row** węzłów. Tabela zawiera wszystkie zwykłe elementy węzła, umożliwiając swobodne przenoszenie, modyfikowanie i usuwanie tabeli w dokumencie.
- **Row** reprezentuje pojedynczy wiersz tabeli i zawiera wiele węzłów **Cell**. Ponadto **Row** zawiera elementy określające sposób wyświetlania wiersza, takie jak wysokość i wyrównanie.
- **Cell** jest tym, co zawiera prawdziwą zawartość widoczną w tabeli i składa się z **Paragraph** i innych węzłów na poziomie bloku. Ponadto komórki mogą zawierać zagnieżdżone tabele.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Możesz sprawdzić strukturę węzłów tabeli w dokumencie za pomocą **DocumentExplorer**.

{{% /alert %}}

### Pusty akapit po tabeli

Powyższe zdjęcie pokazuje, że dokument zawiera tabelę kilku wierszy, która z kolei składa się z dwóch komórek. Każda z dwóch komórek zawiera akapit, który jest kontenerem dla sformatowanego tekstu komórki.

Warto również zauważyć, że oddzielenie dwóch kolejnych tabel w dokumencie wymaga co najmniej jednego pustego akapitu po tabeli. Bez takiego akapitu kolejne tabele byłyby połączone w jedną. To zachowanie jest identyczne zarówno w Microsoft Word, jak i Aspose.Words.

W Aspose.Words wszystkie klasy i właściwości związane z tabelami są zawarte w przestrzeni nazw [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Zobacz także

* [Aspose.Words Obiektowy Model Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Logiczne poziomy węzłów w dokumencie](/words/cpp/logical-levels-of-nodes-in-a-document/)
