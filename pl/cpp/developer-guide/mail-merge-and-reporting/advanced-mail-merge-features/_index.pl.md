---
title: Zaawansowane funkcje Mail Merge w C++
second_title: Aspose.Words dla C++
articleTitle: Zaawansowane Funkcje Mail Merge
linktitle: Zaawansowane Funkcje Mail Merge
type: docs
description: "Aspose.Words dla C++ zapewnia kilka zaawansowanych funkcji Mail Merge, które pozwalają na dalsze dostosowywanie Mail Merge. Na przykład uzyskiwanie informacji o strukturze szablonu, ustawianie reguł, czyszczenie po operacji Mail Merge i inne."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /pl/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words zapewnia dodatkowe właściwości i metody Mail Merge, które pozwalają na dalsze dostosowywanie procesu Mail Merge w prostym Mail Merge lub Mail Merge z regionami.

Zaawansowane funkcje Mail Merge obejmują między innymi uzyskiwanie informacji o strukturze szablonu przed wykonaniem operacji Mail Merge, ustawianie reguł dla operacji Mail Merge i czyszczenie podczas operacji Mail Merge. W tym artykule omówimy tylko kilka właściwości i przykładów, aby pokazać, jak korzystać z zaawansowanych funkcji.

## Ustaw reguły dla operacji Mail Merge

Dodanie reguł do szablonu pozwala uczynić proces przepływu pracy bardziej efektywnym i elastycznym. Korzystając z reguł Mail Merge, możesz skonfigurować zawartość, którą można szybko zmienić i uniknąć konieczności generowania wielu dokumentów.

Aspose.Words umożliwia dostosowanie Mail Merge w oparciu o reguły uruchamiane podczas wykonywania operacji Mail Merge i sterowanie scalaniem informacji. Na przykład podczas tworzenia wiadomości e-mail lub listu do wysłania do wszystkich klientów. Możesz skonfigurować regułę, aby litera mogła zawierać różne dane na podstawie różnych wartości w niektórych polach źródła danych.

Spójrz na kilka reguł Mail Merge, które możesz zaimplementować.

### Zaimplementuj następne pole, aby scalić rekordy danych w bieżącym dokumencie

Możesz zaimplementować pole [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/), aby scalić następny rekord danych z bieżącym wynikowym scalonym dokumentem, zamiast rozpoczynać nowy scalony dokument. Służy do wyświetlania wielu rekordów w jednym dokumencie.

### Zaimplementuj pola NextIf i SkipIf, Aby porównać dwa wyrażenia

Możesz użyć pola [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) lub pola [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/), jeśli chcesz porównać dwa wyrażenia (wyrażenia[right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/)) przez jakieś [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words połączy następny rekord danych z bieżącym dokumentem scalania, a wszystkie pola scalania w szablonie, które są po polu *NextIf*, zostaną zastąpione wartościami z następnego rekordu danych, a nie bieżącym rekordem danych. | Aspose.Words połączy następny rekord danych w nowy dokument scalania. |
| `SkipIf` | Aspose.Words anuluje bieżący dokument scalania, przejdzie do następnego rekordu danych w źródle danych i rozpocznie nowy dokument scalania. | Aspose.Words będzie kontynuować bieżący dokument scalania. |

## Uzyskanie Informacji O Strukturze Szablonu

Aspose.Words Umożliwia zbieranie różnych informacji w szablonie za pomocą wielu metod. Na przykład może być konieczne uzyskanie nazw niektórych pól scalania lub hierarchii regionów w szablonie. Teraz wyjaśnimy możliwe warianty, aby uzyskać konkretne informacje z szablonu.

### Uzyskaj Nazwy Pól Scalania

Możesz natknąć się na scenariusz, w którym będziesz chciał scalić dane z polami scalania utworzonymi przez innych, w takim przypadku nie będziesz mieć pewności co do dokładnych nazw pól scalania. Tak więc, aby osiągnąć cel Mail Merge, najpierw musisz przeczytać i wyświetlić nazwy wszystkich pól scalania. Aspose.Words pozwala uzyskać zbiór nazw pól scalania przy użyciu metody [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

Poniższy przykład kodu pokazuje, jak uzyskać nazwy wszystkich pól scalania w szablonie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Uzyskaj Informacje O Regionach Scalania

Możesz mieć scenariusz, w którym chcesz zrozumieć strukturę szablonu w określonych regionach scalania. Możesz użyć niektórych metod, aby zebrać wszystkie niezbędne informacje o regionach scalania lub uzyskać hierarchię regionów scalania w szablonie, na przykład metodę [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Możesz użyć właściwości i metod klasy [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).Poniższy przykład kodu pokazuje, jak uzyskać hierarchię regionów scalania:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Dodaj Zmapowane Pola

Aspose.Words umożliwia automatyczne mapowanie nazw pól w źródle danych i nazw pól Mail Merge w szablonie przy użyciu właściwości [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Na przykład, jeśli masz nazwę pola o nazwie "nazwisko" w szablonie, a w źródle danych masz nazwę pola "nazwisko" lub inną odmianę, taką jak "Last_Name" lub "LastName", to pole w źródle danych zostanie automatycznie odwzorowane na odpowiednie zmapowane pole. Jeśli szablon scalania ma zostać scalony z wieloma źródłami danych, zmapowane pola sprawiają, że ponowne wprowadzanie pól do szablonu nie jest konieczne, aby zgadzać się z nazwami pól w bazie danych.

Poniższy przykład kodu pokazuje, jak dodać zmapowane pole przy użyciu metody [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/), gdy pole scalania w szablonie i pole danych w źródle danych mają różne nazwy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
