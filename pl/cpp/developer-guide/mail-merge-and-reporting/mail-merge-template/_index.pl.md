---
title: Mail Merge szablon w C++
second_title: Aspose.Words dla C++
articleTitle: Mail Merge szablon
linktitle: Mail Merge szablon
type: docs
description: "Utwórz szablon Mail Merge, aby zdefiniować stałą zawartość w dokumentach wyjściowych, a następnie Wygeneruj dokumenty scalania za pomocą pól scalania."
keywords: "create Mail Merge template с++"
weight: 10
url: /pl/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Często używa się szablonu scalania jako dokumentu podstawowego dla operacji Mail Merge, jeśli jest to prosty Mail Merge lub Mail Merge z regionami. Mail merge z regionami jest potężniejszy i bardziej popularny niż prosty mail merge. Prosty Mail Merge jest uważany za Szczególny przypadek Mail Merge z regionami, w których region jest całym dokumentem. Wszystko wyjaśniono bardziej szczegółowo w następnym artykule "rodzaje operacji Mail Merge".

Szablon zapewnia prawidłowe sformatowanie tekstu w wynikowym scalonym dokumencie, a operacja Mail Merge gwarantuje prawidłowe wprowadzenie tekstu ze źródła danych do szablonu scalania.

Aspose.Words zapewnia możliwość utworzenia szablonu Mail Merge w celu zdefiniowania stałej zawartości, a następnie wygenerowania dokumentów scalania przy użyciu pól scalania. W ten sposób szablon scalania będzie zawierał niezbędny tekst, który jest taki sam we wszystkich dokumentach wyjściowych, oraz pola scalania, aby wypełnić zmieniającą się zawartość. W rezultacie informacje z określonego źródła danych zostaną dodane do szablonu scalania za pośrednictwem tych pól podczas generowania scalonego dokumentu.

## Co To jest szablon Mail Merge

Szablon Mail Merge to spersonalizowany dokument zawierający stałe Dane i scalone pola, w których ma znajdować się tekst zmiennej. Szablon scalania może mieć dowolny format obsługujący pola, na przykład, DOC, DOCX, DOT, DOTX, RTF. Ponadto możesz również użyć szablonu mustache, który jest wyjaśniony bardziej szczegółowo w artykule "składnia szablonuMustache".

Szablon scalania można utworzyć jako model dla nowych dokumentów i powinien on zawierać tekst główny, który musi być taki sam dla każdej wersji scalonego dokumentu. Dodanie pól scalania wewnątrz szablonu będzie reprezentować dane personalizacji, takie jak nazwy lub adresy pobierane ze źródła danych. Operacja Mail Merge automatycznie wstawi dane personalizacji ze źródła danych do dokumentu szablonu scalania.

Ponadto możesz dodać region Mail Merge do szablonu, wstawiając dwa pola Mail Merge, aby zaznaczyć początek i koniec regionu poczty. Następny artykuł "rodzaje operacji Mail Merge" wyjaśnia to bardziej szczegółowo.

## Utwórz szablon Mail Merge

Możesz utworzyć szablon i dodać do niego określone pola scalania, które zostaną zastąpione wartościami ze źródła danych ręcznie, na przykład przy użyciu Microsoft Word lub programowo przy użyciu Aspose.Words. W tym artykule przyjrzymy się programowemu sposobowi tworzenia szablonu.

Użyj klasy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), aby utworzyć wymagany szablon scalania za pomocą Aspose.Words. Możesz dołączyć tekst, pole scalania i podział wiersza do takiego szablonu za pomocą metod [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) i [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

Poniższy przykład kodu pokazuje, jak utworzyć szablon Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

Poniższy obrazek pokazuje utworzony szablon:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Dostosowywanie właściwości szablonu Mail Merge

Aspose.Words pozwala dostosować szablon za pomocą wielu właściwości. Dostosowanie szablonu zostanie opisane poniżej na przykładzie dostosowania niektórych właściwości obrazów i tekstu.

### Dostosuj Właściwości Obrazu

Właściwości obrazu można określić za pomocą klasy [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

Poniższy przykład kodu pokazuje, jak określić nazwę pliku obrazu i rozmiar obrazu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Dostosuj Właściwości Tekstu

Możesz użyć właściwości [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/), aby wstawić tekst do dokumentu dla bieżącego pola scalania. Możesz także zmienić formatowanie tekstów i akapitów w szablonie za pomocą klas [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) i [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/). Możesz obsłużyć tekst, który ma zostać wstawiony przed lub po polu scalania, używając właściwości [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) i [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/), które są zawarte w klasie [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

Poniższy przykład kodu pokazuje, jak wstawić pola wyboru lub HTML podczas operacji Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Możesz również sprawdzić implementację klasy `HandleMergeField` z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Zobacz także

* Aby uzyskać więcej informacji na temat ręcznego tworzenia szablonów w Microsoft Word, Sprawdź [Utwórz szablon](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artykuł w dokumentacji Microsoft
