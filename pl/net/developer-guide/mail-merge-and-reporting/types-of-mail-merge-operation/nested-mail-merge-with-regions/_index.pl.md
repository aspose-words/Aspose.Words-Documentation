---
title: Zagnieżdżone Mail Merge z regionami w C#
second_title: Aspose.Words dla .NET
articleTitle: Zagnieżdżone Mail Merge z regionami
linktitle: Zagnieżdżone Mail Merge z regionami
type: docs
description: "Wykonaj operację Mail Merge z zagnieżdżonymi regionami za pomocą C#. Zagnieżdżone scalanie to funkcja, która umożliwia scalanie danych hierarchicznych ze źródła danych do szablonu scalania."
keywords: "mail merge with nested regions c#"
weight: 10
url: /pl/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

W niektórych scenariuszach może być konieczne użycie zagnieżdżonego Mail Merge z regionami. Zagnieżdżone scalanie to funkcja, która umożliwia scalanie danych hierarchicznych ze źródła danych do szablonu scalania w celu łatwego zapełnienia dokumentu. Zasadniczo dane hierarchiczne są reprezentowane jako zestaw elementów danych, a relacje hierarchiczne opisują, w jaki sposób elementy danych są ze sobą powiązane (jeden element danych jest rodzicem innego).

Aspose.Words umożliwia wykonanie operacji Mail Merge z zagnieżdżonymi regionami. Możesz użyć tej funkcji, jeśli masz źródło danych zorganizowane w strukturę podobną do drzewa i chcesz wykonać operację Mail Merge, aby wypełnić szablon danymi hierarchicznymi.

{{% alert color="primary" %}}

Zagnieżdżone Mail Merge jest istotne tylko podczas wykonywania Mail Merge z regionami.

{{% /alert %}}

## Co to jest zagnieżdżone Mail Merge

Region Mail Merge jest nazywany zagnieżdżonym, jeśli masz dwa lub więcej regionów Mail Merge, w których jeden z nich znajduje się wewnątrz drugiego w formie hierarchicznej. Zauważ, że Każdy region zawiera dane z jednej tabeli.

Najczęstszym przykładem zagnieżdżonego Mail Merge jest kolejność zawierająca wiele elementów, w których należy połączyć wiele tabel danych i przedstawić informacje w szablonie.

Poniższy rysunek pokazuje dwa zagnieżdżone regiony, w których region *Order* Mail Merge jest rodzicem regionu *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Jak przetwarzać Mail Merge z zagnieżdżonymi regionami

Dane do scalenia w szablon mogą pochodzić z różnych źródeł, głównie relacyjnych baz danych lub dokumentów XML. W naszym przykładzie użyjemy pliku XML do przechowywania naszych danych i załadowania ich bezpośrednio do **DataSet**.

Aspose.Words umożliwia przetwarzanie Mail Merge z zagnieżdżonymi regionami przy użyciu relacji danych określonych w **DataSet**. Kiedy obiekt **DataSet** ładuje XML, albo używa dostarczonego schematu, albo wnioskuje go ze struktury samego XML, aby to osiągnąć. Z tej struktury tworzy relacje między tabelami w razie potrzeby.

Poniższy obrazek pokazuje, w jaki sposób dane z tabeli *Order* przekazane do zagnieżdżonych regionów scalania zostaną połączone z Tabelą *Item*, a także dane wyjściowe wygenerowane podczas operacji scalania.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Jak widać z dokumentu wyjściowego, każde zamówienie z tabeli **Order** jest wstawiane do szablonu scalania ze wszystkimi powiązanymi elementami zamówienia z tabeli **Item**. Następne zamówienie zostanie wstawione wraz z ich pozycjami, aż wszystkie zamówienia i pozycje zostaną wyświetlone. Kolejność zagnieżdżania Mail Merge z regionami w szablonie musi być zgodna z relacjami danych między tabelami w źródle danych.

Poniższy przykład kodu pokazuje, jak wygenerować fakturę za pomocą zagnieżdżonego Mail Merge z regionami:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

Implementację konfiguracji relacji danych można sprawdzić ręcznie z [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Jak skonfigurować relacje danych w zagnieżdżonym Mail Merge z regionami

Musisz skonfigurować wszystkie relacje danych w strukturze rodzic-dziecko, aby poprawnie wykonać zagnieżdżone Mail Merge z regionami. Pominięcie tego ważnego kroku może prowadzić do niepowodzenia w wykonywaniu zagnieżdżonego Mail Merge z regionami.

Podczas pobierania danych dla zagnieżdżonego Mail Merge z pliku XML przy użyciu metody **ReadXml** relacje są tworzone automatycznie zgodnie ze strukturą dokumentu XML. Musisz jednak upewnić się, że powstały prawidłowe relacje.

Jeśli Mail Merge nie działa zgodnie z oczekiwaniami, może być konieczna restrukturyzacja pliku XML lub jawne utworzenie relacji między obiektami DataTable w pliku DataSet.

`DataSet`, który ma powiązane tabele danych, użyje obiektu **DataRelation** do reprezentowania relacji rodzic-dziecko między tabelami.

Poniższy przykład kodu pokazuje, jak ustanowić `DataRelation` między tabelą klienta a tabelą zamówienia za pomocą obiektu `DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Jak tworzyć relacje danych z niestandardowego źródła danych

Zaimplementuj interfejs [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/), aby tworzyć relacje w strukturze rodzic-dziecko niestandardowego źródła danych. Użyj metody [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/), aby zwrócić odpowiednie dane potomne bieżącego rekordu nadrzędnego.

Poniższy przykład pokazuje, jak tworzyć relacje danych za pomocą **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
