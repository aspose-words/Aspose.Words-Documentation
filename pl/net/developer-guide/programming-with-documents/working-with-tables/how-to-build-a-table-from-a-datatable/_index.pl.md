---
title: Jak zbudować tabelę z `DataTable` w C#
second_title: Aspose.Words dla .NET
articleTitle: Zbuduj tabelę z pliku `DataTable`
linktitle: Zbuduj tabelę z pliku `DataTable`
description: "Przykład wypełnienia tabeli dokumentów z zewnętrznej bazy danych przy pomocy C#."
type: docs
weight: 120
url: /pl/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

Często Twoja aplikacja będzie pobierać dane z bazy danych i przechowywać je w formie **DataTable**. Możesz łatwo wstawić te dane do swojego dokumentu jako nową tabelę i szybko zastosować formatowanie do całej tabeli.

{{% alert color="primary" %}}

Należy pamiętać, że preferowanym sposobem wstawiania danych z **DataTable** do tabeli dokumentów jest użycie [Mail Merge z regionami](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). Technika przedstawiona w tym artykule jest sugerowana tylko wtedy, gdy nie możesz wcześniej utworzyć odpowiedniego szablonu do scalania danych, innymi słowy, jeśli chcesz, aby wszystko działo się programowo.

{{% /alert %}}

Używając Aspose.Words, możesz łatwo pobrać dane z bazy danych i zapisać je w postaci tabeli:

1. Utwórz nowy obiekt **DocumentBuilder** na swoim **Document**.
1. Rozpocznij nową tabelę za pomocą **DocumentBuilder**.
1. Jeśli chcemy wstawić nazwy każdej kolumny z naszego **DataTable** jako wiersz nagłówka, wykonaj iterację po każdej kolumnie danych i wpisz nazwy kolumn w wierszu tabeli.
1. Iteruj po każdym **DataRow** w **DataTable**:
   1. Wykonaj iterację po każdym obiekcie w **DataRow**.
   1. Wstaw obiekt do dokumentu za pomocą **DocumentBuilder**. Zastosowana metoda zależy od typu wstawianego obiektu, np. **DocumentBuilder.Writeln** dla tekstu i **DocumentBuilder.InsertImage** dla tablicy bajtów reprezentującej obraz.
   1. Na koniec przetwarzania **DataRow** zakończ także wiersz tworzony przez **DocumentBuilder**, używając **DocumentBuilder.EndRow**.
1. Po przetworzeniu wszystkich wierszy z **DataTable** zakończ tabelę wywołując **DocumentBuilder.EndTable**.
1. Na koniec możemy ustawić żądany styl tabeli, korzystając z jednej z odpowiednich właściwości tabeli, takich jak **Table.StyleIdentifier**, aby automatycznie zastosować formatowanie do całej tabeli.

Metoda **ImportTableFromDataTable** akceptuje obiekt **DocumentBuilder**, plik **DataTable** zawierający dane oraz flagę określającą, czy nagłówek kolumny z formatu **DataTable** znajduje się na górze tabeli. Ta metoda tworzy tabelę na podstawie tych parametrów, korzystając z bieżącej pozycji i formatowania konstruktora. Zapewnia metodę importowania danych z formatu `DataTable` i wstawiania ich do nowej tabeli przy użyciu narzędzia DocumentBuilder.

W tym przykładzie wykorzystano następujące dane z naszego **DataTable**:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Poniższy przykład kodu pokazuje, jak wykonać powyższy algorytm w Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Metodę można następnie łatwo wywołać, korzystając z pliku **DocumentBuilder** i danych.

Poniższy przykład kodu pokazuje, jak zaimportować dane z `DataTable` i wstawić je do nowej tabeli w dokumencie:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
