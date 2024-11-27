---
title: Mail Merge i raportowanie w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Mail Merge i raportowanie
linktitle: Mail Merge i raportowanie
type: docs
description: "Mail Merge to popularna funkcja szybkiego tworzenia dokumentów przy użyciu Python. Aspose.Words for Python via .NET wykorzystuje standardową funkcjonalność Mail Merge i posuwa ją o wiele kroków do przodu, przekształcając ją w pełnoprawne rozwiązanie do raportowania, które pozwala tworzyć jeszcze bardziej złożone dokumenty, takie jak raporty, katalogi, zapasy i faktury."
keywords: "how to use Mail Merge python"
weight: 30
url: /pl/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge jest popularną funkcją szybkiego i łatwego tworzenia dokumentów, takich jak listy, etykiety i koperty. Aspose.Words umożliwia generowanie dokumentów z szablonów z polami Mail Merge.

Pole Mail Merge to pole, które można wstawić do szablonu mail merge, aby uwzględnić określone wartości z rekordu źródła danych w dokumentach wyjściowych. Na przykład możesz wstawić pole scalania w szablonie wiadomości e-mail, aby powitanie miało imię odbiorcy, a nie ogólne "cześć!". Aspose.Words umieszcza dane z zewnętrznego źródła, takiego jak Baza Danych lub plik, w tych polach i formatuje je. Wynikowy dokument jest zapisywany w określonym folderze.

Aspose.Words wykorzystuje standardową funkcjonalność Mail Merge i posuwa ją o wiele kroków do przodu, przekształcając ją w pełnoprawne rozwiązanie do raportowania, które pozwala tworzyć jeszcze bardziej złożone dokumenty, takie jak raporty, katalogi, zapasy i faktury. Oto kilka zalet rozwiązania do raportowania Aspose.Words:

- Projektuj raporty w Microsoft Word przy użyciu standardowych pól Mail Merge
- Zdefiniuj regiony w dokumencie, które rosną, takie jak szczegółowe wiersze kolejności (obecnie nie jest obsługiwane w wersji Python)
- Wstawianie obrazów podczas mail merge
- Wykonaj dowolną logikę niestandardową, kontroluj formatowanie lub Wstaw złożoną zawartość za pomocą programów obsługi zdarzeń Mail Merge (Obecnie nie jest obsługiwana w wersji Python)
- Wypełnij dokumenty danymi z dowolnego typu źródła danych (Obecnie nie jest obsługiwane w wersji Python, obsługiwane jest tylko źródło danych tablic)

{{% alert color="primary" %}}

Moduł [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) służy do pracy z scalaniem poczty.

{{% /alert %}}

## Mechanizm i główne elementy operacji Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words zapewnia możliwość ładowania dokumentów w różnych [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), a następnie umożliwia użytkownikom wykonanie operacji Mail Merge.

Zwykle załadowany dokument umożliwia przechowywanie pól scalania, na przykład dokumentu w formacie DOCX. Ale są formaty, które nie przechowują takich pól, na przykład TXT. Jeśli Aspose.Words obsługuje ładowanie takich formatów plików, możesz dodać pola scalania bezpośrednio do modelu dokumentu, zapisać dokument w wygodnym [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) i wykonać operację Mail Merge.

Operacja Mail Merge połączy twoje *mail merge template* i Twoje *data source*, aby wygenerować Indywidualne *merged documents*.

## Co To jest szablon Mail Merge {#what-is-a-mail-merge-template}

Celem zastosowania operacji mail merge przy użyciu szablonu scalania jest uproszczenie procesu tworzenia dokumentu.

Istnieje kilka sposobów tworzenia i projektowania szablonu scalania. Możesz użyć Microsoft Word, A szablon scalania nie musi być szablonem Microsoft Word, czyli dokumentem w formacie DOT lub DOTX, może to być zwykły dokument w formacie DOC lub DOCX. Musisz wstawić do tego szablonu specjalne pola zwane polami scalania w miejscach, w których chcesz później wstawić dane ze źródła danych. Możesz też programowo utworzyć szablon scalania za pomocą klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

Szablon scalania zawiera tekst główny, który powinien być taki sam we wszystkich dokumentach wyjściowych po wykonaniu operacji Mail Merge. Możesz użyć dowolnego formatu szablonu, jeśli istnieje możliwość dodania do niego pól scalania. Wszystkie pola scalania w szablonie zostaną wypełnione ze źródła danych podczas operacji Mail Merge.

## Typy źródeł danych dla operacji Mail Merge {#data-source-types-for-a-mail-merge-operation}

Obecnie Aspose.Words dla Python via .NET Mail Merge akceptuje tylko tablicę wartości jako źródło danych. Inne typy zostaną dodane w przyszłych wersjach.

Poniższy przykład kodu pokazuje, jak utworzyć prosty szablon i wypełnić go danymi za pomocą funkcji Mail Merge:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## Scalone dokumenty operacji Mail Merge {#merged-documents-of-a-mail-merge-operation}

Scalony dokument jest wynikiem operacji Mail Merge podczas scalania szablonu ze źródłem danych. Wszystkie pola scalania w scalonym dokumencie są zastępowane rzeczywistymi danymi ze źródła danych.

Poniższy obraz przedstawia przykład szablonu scalania z połączonymi polami przed wykonaniem operacji Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Poniższy obraz przedstawia przykład scalonego dokumentu wyjściowego w wyniku wykonania operacji Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Zobacz także

- [Praca z szablonami Mail Merge w Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
