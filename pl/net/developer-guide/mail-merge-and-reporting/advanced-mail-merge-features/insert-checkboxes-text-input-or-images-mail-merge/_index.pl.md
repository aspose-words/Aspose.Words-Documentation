---
title: Wstaw Checkboxes, wprowadzanie tekstu lub obrazy podczas Mail Merge
second_title: Aspose.Words dla .NET
articleTitle: Wstaw Checkboxes, wprowadzanie tekstu lub obrazy
linktitle: Wstaw Checkboxes, wprowadzanie tekstu lub obrazy
description: "Wstaw checkboxes lub pola wprowadzania tekstu podczas Mail Merge przy użyciu C#. Wstaw także obrazy z bazy danych podczas Mail Merge w C#."
type: docs
weight: 40
url: /pl/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Silnik scalania przyjmuje dokument jako dane wejściowe, szuka w nim pól `MERGEFIELD` i zastępuje je danymi uzyskanymi ze źródła danych. Zazwyczaj wstawiany jest zwykły tekst i HTML, ale użytkownicy Aspose.Words mogą również wygenerować dokument, który obsługuje bardziej nietypowe scenariusze dla pól Mail Merge.

Potężna funkcjonalność Aspose.Words pozwala rozszerzyć proces Mail Merge:

- Wstaw checkboxpola formularza es i wprowadzania tekstu do dokumentu podczas mail merge
- Wstaw obrazy z dowolnego niestandardowego magazynu (pliki, pola BLOB itp.)

## Insert Checkboxes i wprowadzanie tekstu podczas Mail Merge

Czasami konieczne jest wykonanie operacji Mail Merge, aby w polu scalania nie podstawiono tekstu, ale checkbox lub pole wprowadzania tekstu. Chociaż nie jest to najczęstszy scenariusz, jest bardzo przydatny w przypadku niektórych zadań.

Poniższy zrzut ekranu dokumentu Word pokazuje szablon z polami scalania:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Ten zrzut ekranu dokumentu Word poniżej pokazuje już wygenerowany dokument:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Zwróć uwagę, że niektóre pola zostały zastąpione zwykłym tekstem, niektóre pola zostały zastąpione polami formularza checkbox, A pole `Subject` zostało zastąpione polem wprowadzania tekstu.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić checkboxes i wprowadzić pola tekstowe do dokumentu podczas mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Wstawianie obrazów podczas Mail Merge

Podczas wykonywania operacji Mail Merge można wstawiać obrazy z bazy danych do dokumentu za pomocą specjalnych pól image Mail Merge. Pole image Mail Merge jest polem scalania o nazwie Image: MyFieldName.

### Wstawianie obrazów z bazy danych

Podczas mail merge, gdy napotkane jest pole obraz Mail Merge w dokumencie, Zdarzenie [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) jest uruchamiane. Możesz odpowiedzieć na to zdarzenie, aby zwrócić nazwę pliku, strumień lub obiekt obrazu do silnika Mail Merge, aby można go było wstawić do dokumentu.

Poniższy przykład kodu pokazuje, jak wstawić obrazy zapisane w bazie danych BLOB pole do raportu:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Ustaw właściwości obrazu podczas Mail Merge

Podczas scalania pola scalania obrazu czasami może być konieczne kontrolowanie różnych właściwości obrazu, takich jak [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Obecnie za pomocą [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) można ustawić tylko odpowiednio właściwości szerokości lub wysokości obrazu. Aby rozwiązać ten problem, Aspose.Words udostępnia Właściwość [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), która ułatwia uzyskanie pełnej kontroli nad wstawionym obrazem lub dowolnym innym kształtem.

Poniższy przykład kodu pokazuje, jak ustawić różne właściwości obrazu:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
