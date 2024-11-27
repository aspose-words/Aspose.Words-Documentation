---
title: Mail Merge szablon w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Mail Merge szablon
linktitle: Mail Merge szablon
type: docs
description: "Utwórz szablon Mail Merge, aby zdefiniować stałą zawartość w dokumentach wyjściowych, a następnie Wygeneruj dokumenty scalania przy użyciu pól scalania w Python."
keywords: "create Mail Merge template python"
weight: 10
url: /pl/python-net/mail-merge-template/
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

Użyj klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), aby utworzyć wymagany szablon scalania za pomocą Aspose.Words. Możesz dołączyć tekst, pole scalania i podział wiersza do takiego szablonu za pomocą metod [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) i [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

Poniższy przykład kodu pokazuje, jak utworzyć szablon Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

Poniższy obrazek pokazuje utworzony szablon:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Dostosowywanie właściwości szablonu Mail Merge

Aspose.Words pozwala dostosować szablon za pomocą wielu właściwości. Dostosowanie szablonu zostanie opisane poniżej na przykładzie dostosowania niektórych właściwości obrazów i tekstu.

## Zobacz także

* Aby uzyskać więcej informacji na temat ręcznego tworzenia szablonów w Microsoft Word, Sprawdź [Utwórz szablon](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artykuł w dokumentacji Microsoft
