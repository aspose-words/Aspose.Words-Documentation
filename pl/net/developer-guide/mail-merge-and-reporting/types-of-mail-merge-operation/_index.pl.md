---
title: Rodzaje operacji Mail Merge W C#
second_title: Aspose.Words dla .NET
articleTitle: Rodzaje operacji Mail Merge
linktitle: Rodzaje operacji Mail Merge
type: docs
description: "Wykonaj dwa różne typy operacji Mail Merge: proste Mail Merge i Mail Merge z regionami używającymi C#. Simple Mail Merge powtarza cały dokument na każdy rekord źródła danych, podczas gdy Mail Merge z regionami powtarza tylko wyznaczone regiony na rekord."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /pl/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

Główną ideą Mail Merge jest automatyczne tworzenie dokumentu lub wielu dokumentów na podstawie szablonu i danych pobranych ze źródła danych. Aspose.Words umożliwia wykonywanie dwóch różnych typów operacji Mail Merge: prostych Mail Merge i Mail Merge z regionami.

Najczęstszym przykładem użycia simple Mail Merge jest wysłanie dokumentu dla różnych klientów poprzez umieszczenie ich nazw na początku dokumentu. Aby to zrobić, musisz utworzyć w szablonie pola scalania, takie jak *First Name* i *Last Name*, a następnie wypełnić je danymi ze źródła danych. Natomiast najczęstszym przykładem użycia Mail Merge z regionami jest wysłanie dokumentu zawierającego określone zamówienia z listą wszystkich elementów w każdym zamówieniu. Aby to zrobić, musisz utworzyć regiony scalania w swoim własnym regionie szablonu dla każdego zamówienia, aby wypełnić je wszystkimi wymaganymi danymi dla elementów.

Główna różnica między obiema operacjami scalania polega na tym, że proste Mail Merge (bez regionów) powtarza cały dokument na każdy rekord źródła danych, podczas gdy Mail Merge z regionami powtarza tylko wyznaczone regiony na rekord. Możesz myśleć o prostej operacji Mail Merge jako szczególnym przypadku scalania z regionami, w których jedynym regionem jest cały dokument.

{{% alert color="primary" %}}

Klasa [MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) reprezentuje funkcjonalność Mail Merge. Dzięki jego właściwościom można dostosować wymagane zachowanie przed wykonaniem operacji Mail Merge.

{{% /alert %}}

## Prosta Mail Merge Operacja {#simple-mail-merge-operation}

Prosty Mail Merge służy do wypełnienia pól Mail Merge w szablonie wymaganymi danymi ze źródła danych (reprezentacja pojedynczej tabeli). Jest więc podobny do klasycznego Mail Merge w Microsoft Word.

Możesz dodać jedno lub więcej pól scalania w szablonie, a następnie wykonać prostą operację Mail Merge. Zaleca się użycie go, jeśli szablon nie zawiera żadnych regionów scalania.

Głównym ograniczeniem używania tego typu jest to, że cała zawartość dokumentu zostanie powtórzona dla każdego rekordu w źródle danych.

### Jak wykonać prostą operację Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Gdy szablon będzie gotowy, możesz rozpocząć wykonywanie prostej operacji Mail Merge. Aspose.Words umożliwia wykonanie prostej operacji Mail Merge przy użyciu różnych [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/), które akceptują różne obiekty danych jako źródło danych.

Poniższy przykład kodu pokazuje, jak wykonać prostą operację Mail Merge przy użyciu jednej z metod [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

Możesz zauważyć różnicę między dokumentem przed wykonaniem prostego mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

I po wykonaniu prostego mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### Jak utworzyć wiele scalonych dokumentów

W Aspose.Words standardowa operacja Mail Merge wypełnia tylko jeden dokument treścią ze źródła danych. Tak więc będziesz musiał wykonać operację Mail Merge wiele razy, aby utworzyć wiele scalonych dokumentów jako dane wyjściowe.

Poniższy przykład kodu pokazuje, jak wygenerować wiele scalonych dokumentów podczas operacji Mail Merge:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge z regionami

Możesz tworzyć różne regiony w szablonie, aby mieć specjalne obszary, które możesz po prostu wypełnić swoimi danymi. Użyj Mail Merge z regionami, jeśli chcesz wstawić tabele, wiersze z powtarzającymi się danymi, aby dokumenty dynamicznie rosły, określając te regiony w szablonie.

Możesz tworzyć zagnieżdżone (podrzędne) regiony, a także scalać regiony. Główną zaletą korzystania z tego typu jest dynamiczne zwiększanie części wewnątrz dokumentu. Zobacz więcej szczegółów w następnym artykule "zagnieżdżone Mail Merge z regionami".

{{% alert color="primary" %}}

Informacje o regionie Mail Merge można uzyskać za pomocą klasy [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

### Jak wykonać Mail Merge z regionami

Region Mail Merge to określona część dokumentu, która ma punkt początkowy i punkt końcowy. Oba punkty są reprezentowane jako Mail Merge pola o określonych nazwach *"TableStart:XXX"* i *"TableEnd:XXX"*. Cała zawartość zawarta w regionie Mail Merge Zostanie Automatycznie powtórzona dla każdego rekordu w źródle danych.

Aspose.Words umożliwia wykonywanie Mail Merge z regionami używającymi różnych [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/), które akceptują różne obiekty danych jako źródło danych.

W pierwszym kroku musimy utworzyć `DataSet`, aby przekazać go później jako parametr wejściowy do metody `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

Poniższy przykład kodu pokazuje, jak wykonać Mail Merge z regionami przy użyciu metody [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

Możesz zauważyć różnicę między dokumentem przed wykonaniem Mail Merge z regionami:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

I po wykonaniu Mail Merge z regionami:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Ograniczenia Mail Merge z regionami

Jest kilka ważnych punktów, które należy wziąć pod uwagę podczas wykonywania Mail Merge z regionami:

* Punkt początkowy *TableStart:Orders* i punkt końcowy *TableEnd:Orders* muszą znajdować się w tym samym wierszu lub komórce. Na przykład, jeśli rozpoczynasz region scalania w komórce tabeli, musisz zakończyć region scalania w tym samym wierszu, co pierwsza komórka.
* Nazwa pola scalania musi być zgodna z nazwą kolumny w DataTable. O ile nie określono mapowanych pól, Mail Merge z regionami nie powiedzie się dla żadnego pola scalania, które ma inną nazwę niż nazwa kolumny.

Jeśli jedna z tych zasad zostanie złamana, otrzymasz nieoczekiwane wyniki lub może zostać zgłoszony wyjątek.

{{% alert color="primary" %}}

Jeśli nie używasz regionów Mail Merge, będzie on podobny do Microsoft Word mail merge, a cała zawartość dokumentu zostanie powtórzona dla każdego rekordu w źródle danych.

{{% /alert %}}

