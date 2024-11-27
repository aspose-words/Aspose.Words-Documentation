---
title: Mail Merge z regionami w C++
second_title: Aspose.Words dla C++
articleTitle: Mail Merge z regionami
linktitle: Mail Merge z regionami
type: docs
description: "Utwórz różne regiony w szablonie, aby mieć specjalne obszary, które możesz po prostu wypełnić swoimi danymi. Użyj Mail Merge z regionami, jeśli chcesz wstawić tabele, wiersze z powtarzającymi się danymi, aby dynamicznie powiększać dokumenty."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /pl/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Możesz tworzyć różne regiony w szablonie, aby mieć specjalne obszary, które możesz po prostu wypełnić swoimi danymi. Użyj Mail Merge z regionami, jeśli chcesz wstawić tabele, wiersze z powtarzającymi się danymi, aby dokumenty dynamicznie rosły, określając te regiony w szablonie.

Możesz tworzyć zagnieżdżone (podrzędne) regiony, a także scalać regiony. Główną zaletą korzystania z tego typu jest dynamiczne zwiększanie części wewnątrz dokumentu. Zobacz więcej szczegółów w następnym artykule "zagnieżdżone Mail Merge z regionami".

{{% alert color="primary" %}}

Informacje o regionie Mail Merge można uzyskać za pomocą klasy [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Jak wykonać Mail Merge z regionami

Region Mail Merge to określona część dokumentu, która ma punkt początkowy i punkt końcowy. Oba punkty są reprezentowane jako Mail Merge pola o określonych nazwach *"TableStart:XXX"* i *"TableEnd:XXX"*. Cała zawartość zawarta w regionie Mail Merge Zostanie Automatycznie powtórzona dla każdego rekordu w źródle danych.

Aspose.Words umożliwia wykonywanie Mail Merge z regionami przy użyciu jednej z metod [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/), które akceptują [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) niestandardowe źródło danych.

Poniższy przykład kodu pokazuje, jak wykonać Mail Merge z regionami z bazy danych sqlite za pomocą [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Możesz zauważyć różnicę między dokumentem przed wykonaniem Mail Merge z regionami:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

I po wykonaniu Mail Merge z regionami:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Ograniczenia Mail Merge z regionami

Jest kilka ważnych punktów, które należy wziąć pod uwagę podczas wykonywania Mail Merge z regionami:

* Punkt początkowy *TableStart:Orders* i punkt końcowy *TableEnd:Orders* muszą znajdować się w tym samym wierszu lub komórce. Na przykład, jeśli rozpoczynasz region scalania w komórce tabeli, musisz zakończyć region scalania w tym samym wierszu, co pierwsza komórka.
  Nazwa pola scalania musi być zgodna z nazwą kolumny w DataTable. Jeśli nie określisz mapowanych pól, Mail Merge z regionami nie powiedzie się dla żadnego pola scalania, które ma nazwę inną niż nazwa kolumny.
* Aspose.Words dla C++ obsługuje tylko źródła danych oparte na [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) i [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). W przeciwieństwie do .NET i Java, C++ nie ma ogólnie przyjętego wieloplatformowego API do pracy z bazami danych (takimi jak ADODB, ODBC lub JDBC). Aby pracować z określonym źródłem danych, musisz zaimplementować interfejs [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) lub [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Jeśli jedna z tych zasad zostanie złamana, otrzymasz nieoczekiwane wyniki lub może zostać zgłoszony wyjątek.

{{% alert color="primary" %}}

Jeśli nie używasz regionów Mail Merge, będzie on podobny do Microsoft Word mail merge, a cała zawartość dokumentu zostanie powtórzona dla każdego rekordu w źródle danych.

{{% /alert %}}

