---
title: Jak zbudować stół z DataTable w Java
second_title: Aspose.Words zamiast Java
articleTitle: Zbuduj stół z DataTable
linktitle: Zbuduj stół z DataTable
description: "Przykład wypełnienia tabeli dokumentów z zewnętrznej bazy danych Java."
type: docs
weight: 130
url: /pl/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Często Twoja aplikacja będzie pobierać dane z bazy danych i przechowywać je w formie **DataTable**. Można łatwo umieścić te dane w dokumencie jako nową tabelę i szybko zastosować formatowanie do całej tabeli.

{{% alert color="primary" %}}

Należy zauważyć, że preferowany sposób wprowadzania danych z **DataTable** do tabeli dokumentu jest za pomocą [Mail Merge z regionami](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Technika przedstawiona w tym artykule jest sugerowana tylko wtedy, gdy nie jesteś w stanie utworzyć odpowiedniego szablonu wcześniej, aby połączyć dane z innymi słowy, jeśli wymagasz, aby wszystko działo się programowo.

{{% /alert %}}

Stosowanie Aspose.Words, można łatwo pobrać dane z bazy danych i przechowywać je jako tabelę:

1. Utwórz nowy [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) obiekt na Twoim [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Uruchom nową tabelę używając [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Jeśli chcemy dodać nazwy każdej kolumny z naszej **DataTable** jako wiersz nagłówka następnie iterate przez każdą kolumnę danych i zapisać nazwy kolumn do wiersza w tabeli.
1. Iterate przez każdy **DataRow** w **DataTable**:
   1. Iterate przez każdy obiekt w **DataRow**.
   1. Wstaw obiekt do dokumentu używając [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Zastosowana metoda zależy od typu wstawianego obiektu np. [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) dla tekstu oraz [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) dla tablicy bajtów, która reprezentuje obraz.
   1. Na koniec przetwarzania wiersza danych kończy się również wiersz tworzony przez [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) za pomocą [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Raz wszystkie rzędy z **DataTable** zostały przetworzone zakończyć stół przez wywołanie [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Wreszcie, możemy ustawić pożądany styl tabeli przy użyciu jednej z odpowiednich właściwości tabeli, takich jak [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) automatycznie stosować formatowanie do całej tabeli.
   Poniższe dane w naszym **DataTable** jest stosowany w tym przykładzie:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Poniższy przykład kodu pokazuje jak wykonać powyższy algorytm w Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Metoda ta może być łatwo wywołana za pomocą **DocumentBuilder** i dane.

Poniższy przykład kodu pokazuje, jak importować dane z `DataTable` i umieścić go w nowej tabeli w dokumencie:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Tabela pokazana na poniższym obrazku jest wytwarzana przez uruchomienie powyższego kodu.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
