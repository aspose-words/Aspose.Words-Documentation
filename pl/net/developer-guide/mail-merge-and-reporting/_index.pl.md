---
title: Mail Merge i raportowanie w C#
second_title: Aspose.Words dla .NET
articleTitle: Mail Merge i raportowanie
linktitle: Mail Merge i raportowanie
type: docs
description: "Mail Merge to popularna funkcja szybkiego tworzenia dokumentów przy użyciu C#. Aspose.Words for .NET wykorzystuje standardową funkcjonalność Mail Merge i posuwa ją o wiele kroków do przodu, przekształcając ją w pełnoprawne rozwiązanie do raportowania, które pozwala tworzyć jeszcze bardziej złożone dokumenty, takie jak raporty, katalogi, zapasy i faktury."
keywords: "how to use Mail Merge c#"
weight: 30
url: /pl/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
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

Przestrzeń nazw [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) służy do pracy z scalaniem poczty.

{{% /alert %}}

## Mechanizm i główne elementy Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words zapewnia możliwość ładowania dokumentów w różnych [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/), a następnie umożliwia użytkownikom wykonanie operacji Mail Merge.

Zwykle załadowany dokument umożliwia przechowywanie pól scalania, na przykład dokumentu w formacie DOCX. Ale są formaty, które nie przechowują takich pól, na przykład TXT. Jeśli Aspose.Words obsługuje ładowanie takich formatów plików, możesz dodać pola scalania bezpośrednio do modelu dokumentu, zapisać dokument w wygodnym [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) i wykonać operację Mail Merge.

Operacja Mail Merge połączy twoje *mail merge template* i Twoje *data source*, aby wygenerować Indywidualne *merged documents*.

## Co To jest szablon Mail Merge {#what-is-a-mail-merge-template}

Celem zastosowania operacji mail merge przy użyciu szablonu scalania jest uproszczenie procesu tworzenia dokumentu.

Istnieje kilka sposobów tworzenia i projektowania szablonu scalania. Możesz użyć Microsoft Word, A szablon scalania nie musi być szablonem Microsoft Word, czyli dokumentem w formacie DOT lub DOTX, może to być zwykły dokument w formacie DOC lub DOCX. Musisz wstawić do tego szablonu specjalne pola zwane polami scalania w miejscach, w których chcesz później wstawić dane ze źródła danych. Możesz też programowo utworzyć szablon scalania za pomocą klasy [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).

Szablon scalania zawiera tekst główny, który powinien być taki sam we wszystkich dokumentach wyjściowych po wykonaniu operacji Mail Merge. Możesz użyć dowolnego formatu szablonu, jeśli istnieje możliwość dodania do niego pól scalania. Wszystkie pola scalania w szablonie zostaną wypełnione ze źródła danych podczas operacji Mail Merge.

## Źródła danych dla operacji Mail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge akceptuje różne źródła danych. Może to być DataTable, DataView, DataSet, IDataReader, tablica wartości obsługiwanych przez ADO .NET lub niestandardowe źródła danych reprezentowane przez implementacje [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/).

Źródło danych zawiera wszystkie informacje, które są pobierane podczas operacji Mail Merge w celu personalizacji poszczególnych wiadomości e-mail i dokumentów. Źródła danych mogą być tworzone ręcznie lub generowane przez raportowanie z istniejącej bazy danych lub aplikacji. Jeśli masz dane w formacie XML, możesz je załadować i scalić z DataSet. Operacja Mail Merge przejdzie przez wszystkie rekordy źródła danych i wstawi je do pól Mail Merge w dokumencie. Możesz zaimplementować niektóre interfejsy mail merge, takie jak [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/), aby scalić dane z dowolnego źródła danych, w tym zapytania LINQ, pliku XML lub obiektów biznesowych.

Poniższy przykład kodu pokazuje, jak załadować tabelę danych jako źródło danych dla operacji Mail Merge:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Scalone dokumenty operacji Mail Merge {#merged-documents-of-a-mail-merge-operation}

Scalony dokument jest wynikiem operacji Mail Merge podczas scalania szablonu ze źródłem danych. Wszystkie pola scalania w scalonym dokumencie są zastępowane rzeczywistymi danymi ze źródła danych.

Poniższy obraz przedstawia przykład szablonu scalania z połączonymi polami przed wykonaniem operacji Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Poniższy obraz przedstawia przykład scalonego dokumentu wyjściowego w wyniku wykonania operacji Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Zobacz także

- [Praca z szablonami Mail Merge w Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
