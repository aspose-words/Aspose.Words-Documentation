---
title: Mail Merge szablon w C#
second_title: Aspose.Words dla .NET
articleTitle: Mail Merge szablon
linktitle: Mail Merge szablon
type: docs
description: "Utwórz szablon Mail Merge, aby zdefiniować stałą zawartość w dokumentach wyjściowych, a następnie Wygeneruj dokumenty scalania przy użyciu pól scalania w C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /pl/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
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

Użyj klasy [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), aby utworzyć wymagany szablon scalania za pomocą Aspose.Words. Możesz dołączyć tekst, pole scalania i podział wiersza do takiego szablonu za pomocą metod [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) i [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

Poniższy przykład kodu pokazuje, jak utworzyć szablon Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

Poniższy obrazek pokazuje utworzony szablon:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Dostosowywanie właściwości szablonu Mail Merge

Aspose.Words pozwala dostosować szablon za pomocą wielu właściwości. Dostosowanie szablonu zostanie opisane poniżej na przykładzie dostosowania niektórych właściwości obrazów i tekstu.

### Dostosuj Właściwości Obrazu

Właściwości obrazu można określić za pomocą klasy [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Pamiętaj, że możesz wstawić obraz z bazy danych w sposób opisany w [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

Poniższy przykład kodu pokazuje, jak określić nazwę pliku obrazu i rozmiar obrazu:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Dostosuj Właściwości Tekstu

Możesz użyć właściwości [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/), aby wstawić tekst do dokumentu dla bieżącego pola scalania. Możesz także zmienić formatowanie tekstów i akapitów w szablonie za pomocą klas [Font](https://reference.aspose.com/words/net/aspose.words/font/) i [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Możesz obsłużyć tekst, który ma zostać wstawiony przed lub po polu scalania, używając właściwości [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) i [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/), które są zawarte w klasie [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

Poniższy przykład kodu pokazuje, jak wstawić pola wyboru lub HTML podczas operacji Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Możesz również sprawdzić implementację klasy `HandleMergeField` z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Zobacz także

* Aby uzyskać więcej informacji na temat ręcznego tworzenia szablonów w Microsoft Word, Sprawdź [Utwórz szablon](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artykuł w dokumentacji Microsoft
