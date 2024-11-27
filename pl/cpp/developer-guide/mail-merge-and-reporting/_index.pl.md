---
title: Mail Merge i raportowanie w C++
second_title: Aspose.Words dla C++
articleTitle: Mail Merge i raportowanie
linktitle: Mail Merge i raportowanie
type: docs
description: "Mail Merge to popularna funkcja szybkiego tworzenia dokumentów przy użyciu C++. Aspose.Words for C++ wykorzystuje standardową funkcjonalność Mail Merge i posuwa ją o wiele kroków do przodu, przekształcając ją w pełnoprawne rozwiązanie do raportowania, które pozwala tworzyć jeszcze bardziej złożone dokumenty, takie jak raporty, katalogi, zapasy i faktury."
keywords: "how to use Mail Merge c++"
weight: 30
url: /pl/cpp/mail-merge-and-reporting/
timestamp: 2024-01-30-16-22-34
---

Mail Merge jest popularną funkcją szybkiego i łatwego tworzenia dokumentów, takich jak listy, etykiety i koperty. Aspose.Words umożliwia generowanie dokumentów z szablonów z polami Mail Merge.

Pole Mail Merge to pole, które można wstawić do szablonu mail merge, aby uwzględnić określone wartości z rekordu źródła danych w dokumentach wyjściowych. Na przykład możesz wstawić pole scalania w szablonie wiadomości e-mail, aby powitanie miało imię odbiorcy, a nie ogólne "cześć!". Aspose.Words umieszcza dane z zewnętrznego źródła, takiego jak Baza Danych lub plik, w tych polach i formatuje je. Wynikowy dokument jest zapisywany w określonym folderze.

Aspose.Words wykorzystuje standardową funkcjonalność Mail Merge i posuwa ją o wiele kroków do przodu, przekształcając ją w pełnoprawne rozwiązanie do raportowania, które pozwala tworzyć jeszcze bardziej złożone dokumenty, takie jak raporty, katalogi, zapasy i faktury. Oto kilka zalet rozwiązania do raportowania Aspose.Words:

- Projektuj raporty w Microsoft Word przy użyciu standardowych pól Mail Merge
- Zdefiniuj regiony w dokumencie, które rosną, takie jak szczegółowe wiersze kolejności
- Wstawianie obrazów podczas mail merge
- Wykonaj dowolną niestandardową logikę, kontroluj formatowanie lub Wstaw złożoną zawartość za pomocą programów obsługi zdarzeń Mail Merge
- Wypełnij dokumenty danymi z dowolnego rodzaju źródła danych

{{% alert color="primary" %}}

Przestrzeń nazw [Aspose.Words.MailMerging](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/) służy do pracy z scalaniem poczty.

{{% /alert %}}

## Mechanizm i główne elementy Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words zapewnia możliwość ładowania dokumentów w różnych [supported formats](https://reference.aspose.com/words/cpp/aspose.words/loadformat/), a następnie umożliwia użytkownikom wykonanie operacji Mail Merge.

Zwykle załadowany dokument umożliwia przechowywanie pól scalania, na przykład dokumentu w formacie DOCX. Ale są formaty, które nie przechowują takich pól, na przykład TXT. Jeśli Aspose.Words obsługuje ładowanie takich formatów plików, możesz dodać pola scalania bezpośrednio do modelu dokumentu, zapisać dokument w wygodnym [supported format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) i wykonać operację Mail Merge.

Operacja Mail Merge połączy twoje *mail merge template* i Twoje *data source*, aby wygenerować Indywidualne *merged documents*.

## Co To jest szablon Mail Merge {#what-is-a-mail-merge-template}

Celem zastosowania operacji mail merge przy użyciu szablonu scalania jest uproszczenie procesu tworzenia dokumentu.

Istnieje kilka sposobów tworzenia i projektowania szablonu scalania. Możesz użyć Microsoft Word, A szablon scalania nie musi być szablonem Microsoft Word, czyli dokumentem w formacie DOT lub DOTX, może to być zwykły dokument w formacie DOC lub DOCX. Musisz wstawić do tego szablonu specjalne pola zwane polami scalania w miejscach, w których chcesz później wstawić dane ze źródła danych. Możesz też programowo utworzyć szablon scalania za pomocą klasy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

Szablon scalania zawiera tekst główny, który powinien być taki sam we wszystkich dokumentach wyjściowych po wykonaniu operacji Mail Merge. Możesz użyć dowolnego formatu szablonu, jeśli istnieje możliwość dodania do niego pól scalania. Wszystkie pola scalania w szablonie zostaną wypełnione ze źródła danych podczas operacji Mail Merge.


## Zobacz także

- [Praca z szablonami Mail Merge w Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
