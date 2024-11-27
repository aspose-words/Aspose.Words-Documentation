---
title: Mail Merge Mustache składnia
second_title: Aspose.Words dla Python via .NET
articleTitle: Mail Merge szablon ze składni Mustache
linktitle: Mail Merge szablon ze składni Mustache
type: docs
description: "Twórz szablony ze składnią Mustache za pomocą Python. Składnia Mustache jest jedyną opcją do użycia z szablonami, które nie zawierają pól (HTML lub TXT). W przypadku szablonów Word masz dwie opcje: pola lub składnię Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /pl/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umożliwia tworzenie szablonów ze składnią mustache oprócz znanych szablonów. Mustache jest alternatywnym wariantem składni szablonu, który składa się z nazw tagów ujętych w `{{ }}` i jest wspierany przez obiekt modelu zawierający dane szablonu.

Składnia Mustache jest jedyną opcją do użycia z szablonami, które nie zawierają pól, takimi jak szablony HTML i TXT. W przypadku szablonów Word masz dwie opcje użycia pól lub składni Mustache.

Składnia Mustache obsługuje znacznik *foreach*, który jest alternatywą dla używania Mail Merge z regionami. Zaletą jest więc to, że możesz użyć składni mustache, Jeśli z jakiegoś powodu nie jesteś w stanie lub po prostu nie chcesz używać pól scalania i regionów scalania.

Możesz także połączyć pola Mail Merge z kilkoma dodatkowymi polami za pomocą znacznika *foreach*, Jak pokazano na poniższym obrazku.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Utwórz szablon Mustache

Pierwszą ważną kwestią do wyjaśnienia jest to, że Mustache nie jest silnikiem szablonów. Mustache to kolejny wariant składni, który jest dostępny dla dowolnego szablonu w [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) obsługiwanym przez Aspose.Words. Dlatego możesz utworzyć taki szablon zarówno programowo, jak i za pomocą interfejsu, wystarczy dołączyć określoną składnię i spełnić specyfikację Mustache.

Załóżmy, że musisz wysłać ten sam e-mail do 50 odbiorców, aby spersonalizować powitanie za pomocą odpowiednich imion. Możesz zastąpić imię odbiorcy jakimś symbolem zastępczym w następujący sposób:

> Dear {{FirstName}}
>
> I hereby...

Pytanie tutaj: jak utworzyć 50 e-maili z jednego szablonu Mustache? Aby odpowiedzieć na to pytanie, musisz wykonać Mail Merge z regionami, aby wypełnić nawiasy klamrowe dla symboli zastępczych w szablonie rzeczywistymi danymi i wygenerować dokument wyjściowy.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Jak zauważasz z powyższego przykładu, w Mustache musisz użyć nawiasów klamrowych dla symboli zastępczych, które wyglądają jak mustache, gdy obracasz nawiasy klamrowe o 90 stopni zgodnie z ruchem wskazówek zegara.

{{% /alert %}}

## Praca ze składnią Mustache

Mustache jest reprezentowany jako porządek bez logiki, ponieważ nie ma żadnych konkretnych instrukcji przepływu sterowania, takich jak *for* pętle i *if* i *else* warunki. Ale możesz użyć list przetwarzania tagów sekcji i lambdas, aby uzyskać warunkową ocenę i zapętlenie. Aby więc uwzględnić składnię Mustache w operacji Mail Merge, musisz użyć właściwości [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) i ustawić jej wartość na *True*.

## Użyj pól `IF`, aby utworzyć Mail Merge inteligentny

Aspose.Words umożliwia użycie pól Mail Merge i znaczników Mustache z instrukcją `IF`. Pola `IF` mogą być używane w dowolnym dokumencie Mail Merge do pomijania niepożądanych spacji i przecinków, jeśli pole jest puste.

Formuła pola `IF` jest pokazana poniżej:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Tutaj warunkiem może być pole scalania lub znacznik Mustache.

Na przykład możesz użyć pól `IF`, jeśli chcesz wstawić "jego", "ona"," on "lub" ona " w zależności od płci w następujący sposób:

**{ IF { MERGEFIELD Gender } = "MALE" "true text" "false text"}**

**{ IF "{{ GENDER }}" = "MALE" "true text" "false text"}**

Poniższy przykład kodu pokazuje, jak wykonać operację Mail Merge za pomocą znaczników Mustache i pól `IF`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem właściwości [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

I po zastosowaniu właściwości [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
