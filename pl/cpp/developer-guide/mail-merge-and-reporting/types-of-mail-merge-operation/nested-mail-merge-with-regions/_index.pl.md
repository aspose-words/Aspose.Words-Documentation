---
title: Zagnieżdżone Mail Merge z regionami w C++
second_title: Aspose.Words dla C++
articleTitle: Zagnieżdżone Mail Merge z regionami
linktitle: Zagnieżdżone Mail Merge z regionami
type: docs
description: "Wykonaj operację Mail Merge z zagnieżdżonymi regionami za pomocą C++. Zagnieżdżone scalanie to funkcja, która umożliwia scalanie danych hierarchicznych ze źródła danych do szablonu scalania."
keywords: "mail merge with nested regions c++"
weight: 30
url: /pl/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

W niektórych scenariuszach może być konieczne użycie zagnieżdżonego Mail Merge z regionami. Zagnieżdżone scalanie to funkcja, która umożliwia scalanie danych hierarchicznych ze źródła danych do szablonu scalania w celu łatwego zapełnienia dokumentu. Zasadniczo dane hierarchiczne są reprezentowane jako zestaw elementów danych, a relacje hierarchiczne opisują, w jaki sposób elementy danych są ze sobą powiązane (jeden element danych jest rodzicem innego).

Aspose.Words umożliwia wykonanie operacji Mail Merge z zagnieżdżonymi regionami. Możesz użyć tej funkcji, jeśli masz źródło danych zorganizowane w strukturę podobną do drzewa i chcesz wykonać operację Mail Merge, aby wypełnić szablon danymi hierarchicznymi.

{{% alert color="primary" %}}

Zagnieżdżone Mail Merge jest istotne tylko podczas wykonywania Mail Merge z regionami.

{{% /alert %}}

## Co to jest zagnieżdżone Mail Merge

Region Mail Merge jest nazywany zagnieżdżonym, jeśli masz dwa lub więcej regionów Mail Merge, w których jeden z nich znajduje się wewnątrz drugiego w formie hierarchicznej. Zauważ, że Każdy region zawiera dane z jednej tabeli.

Najczęstszym przykładem zagnieżdżonego Mail Merge jest kolejność zawierająca kilka elementów, w których należy połączyć wiele tabel danych i przedstawić informacje w szablonie.

Poniższy rysunek pokazuje dwa zagnieżdżone regiony, w których region *Order* Mail Merge jest rodzicem regionu *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Jak przetwarzać Mail Merge z zagnieżdżonymi regionami

Dane do scalenia w szablon mogą pochodzić z różnych źródeł, głównie relacyjnych baz danych lub dokumentów XML. W naszym przykładzie użyjemy [SQLite](https://www.sqlite.org/index.html) baza danych do przechowywania naszych danych i ładowania ich za pomocą niestandardowej implementacji źródła danych.

Poniższy obrazek pokazuje, w jaki sposób dane z tabeli *Order* przekazane do zagnieżdżonych regionów scalania zostaną połączone z Tabelą *Item*, a także dane wyjściowe wygenerowane podczas operacji scalania.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Jak widać z dokumentu wyjściowego, każde zamówienie z tabeli **Order** jest wstawiane do szablonu scalania ze wszystkimi powiązanymi elementami zamówienia z tabeli **Item**. Następne zamówienie zostanie wstawione wraz z ich pozycjami, aż wszystkie zamówienia i pozycje zostaną wyświetlone. Kolejność zagnieżdżania Mail Merge z regionami w szablonie musi być zgodna z relacjami danych między tabelami w źródle danych.

## Jak tworzyć relacje danych z niestandardowego źródła danych

Zaimplementuj interfejs [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/), aby tworzyć relacje w strukturze rodzic-dziecko niestandardowego źródła danych. Użyj metody [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/), aby zwrócić odpowiednie dane potomne bieżącego rekordu nadrzędnego.

Poniższy przykład kodu pokazuje, jak wygenerować fakturę za pomocą zagnieżdżonego Mail Merge z regionami z [SQLite](https://www.sqlite.org/index.html) baza danych z [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
