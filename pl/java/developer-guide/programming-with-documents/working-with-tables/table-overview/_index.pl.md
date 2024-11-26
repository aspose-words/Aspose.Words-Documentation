---
title: Przegląd tabeli
second_title: Aspose.Words zamiast Java
articleTitle: Przegląd tabeli
linktitle: Przegląd tabeli
description: "Praca z tabelami i ich komponentami, takimi jak komórki, wiersze, kolumny w Aspose.Words zamiast Java. Jak pracować z tabelami w Java."
type: docs
weight: 10
url: /pl/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words jest biblioteką klasy przeznaczoną do przetwarzania dokumentów po stronie serwera w różnych formatach - PDF, HTML, różne Microsoft Word formaty i inne - i obsługuje tabele w następujący sposób:

* tabele w dokumencie są zachowane podczas otwartego / zapisania i konwersji
* można edytować tabelę, zawartość i jej formatowanie, a następnie eksportować zmiany do pliku w formacie, który obsługuje tabele

W tym artykule dowiemy się więcej o strukturze tabeli, komórkach, wierszach i kolumnach obsługiwanych przez Aspose.Words, oraz szczegóły pracy z takimi tabelami.

## Struktura tabeli

Jak już wspomniano, tabela składa się z takich elementów jak **Cell**, **Row** oraz **Column**. Są to pojęcia wspólne dla wszystkich tabel, niezależnie od formatu dokumentu.

Jest to wspólny przykład tabeli znalezionej w Microsoft Word dokument:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Węzły tabeli

Tabela z każdego dokumentu załadowanego do Aspose.Words jest importowany jako **Węzeł tabeli**. Stół można znaleźć jako dziecko:

- główny tekst
- inline historia, taka jak komentarz lub przypis
- komórki, gdy tabela jest zagnieżdżona w innej tabeli

{{% alert color="primary" %}}

Należy zauważyć, że tabele mogą być zagnieżdżone wewnątrz innych tabel do dowolnej głębokości.

{{% /alert %}}

### Zawartość tabeli

Węzeł tabeli nie zawiera żadnej rzeczywistej zawartości - zamiast tego jest kontenerem dla innych takich węzłów, które tworzą zawartość:

- **Table** zawiera wiele **Row** węzły. Tabela zawiera wszystkie zwykłe elementy węzła, umożliwiające swobodne przemieszczanie, modyfikowanie i usuwanie tabeli w dokumencie.
- **Row** reprezentuje pojedynczy wiersz tabeli i zawiera wiele **Cell** węzły. Ponadto **Row** zawiera elementy określające sposób wyświetlania wiersza, takie jak wysokość i ustawienie.
- **Cell** co zawiera true zawartość widoczna w tabeli i składa się z **Paragraph** oraz inne węzły poziomu bloku. Dodatkowo komórki mogą zawierać zagnieżdżone tabele.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Można sprawdzić strukturę węzłów tabeli w dokumencie za pomocą **DocumentExplorer**.

{{% /alert %}}

### Pusty punkt po tabeli

Powyższy rysunek pokazuje, że dokument zawiera tabelę kilku wierszy, która z kolei składa się z dwóch komórek. Każda z tych dwóch komórek zawiera paragraf, który jest pojemnikiem na sformatowany tekst komórki.

Warto również zauważyć, że oddzielenie dwóch kolejnych tabel dokumentu wymaga co najmniej jednego pustego akapitu po tabeli. Bez takiego ustępu kolejne tabele byłyby połączone w jedną całość. To zachowanie jest identyczne w obu Microsoft Word oraz Aspose.Words.

Aspose.Words posiada pewną liczbę klas związanych z tabelami - [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), I innych.

## Zobacz również

* [Aspose.Words Document Object Model (DOM)](/words/pl/java/aspose-words-document-object-model/)
* [Logiczne programy we Włoszech w celu uzyskania pomocy](/words/pl/java/logical-levels-of-nodes-in-a-document/)
