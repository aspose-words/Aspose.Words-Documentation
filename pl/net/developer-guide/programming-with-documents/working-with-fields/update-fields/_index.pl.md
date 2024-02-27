---
title: Zaktualizuj pola C#
second_title: Aspose.Words dla .NET
articleTitle: Aktualizuj pola
linktitle: Aktualizuj pola
description: "Dowiedz się, jak aktualizować pola w C#. Aktualizuj pola programowo lub użyj automatycznej aktualizacji pól przy użyciu formatu .NET API."
type: docs
weight: 30
url: /pl/net/update-fields/
---

Zazwyczaj pole wstawione do Microsoft Word zawiera już aktualną wartość. Przykładowo, jeśli polem jest formuła lub numer strony, będzie ona zawierać poprawną wyliczoną wartość dla danej wersji dokumentu. Jeśli jednak masz aplikację, która generuje lub modyfikuje dokument za pomocą pól, na przykład łącząc dwa dokumenty lub wypełniając go danymi, w idealnym przypadku wszystkie pola muszą zostać zaktualizowane, aby dokument był użyteczny.

## Jak zaktualizować pola

Po załadowaniu dokumentu Aspose.Words naśladuje zachowanie Microsoft Word z wyłączoną opcją automatycznej aktualizacji pól. Zachowanie można podsumować w następujący sposób:

- po otwarciu/zapisaniu dokumentu pola pozostają nienaruszone
- możesz jawnie zaktualizować wszystkie pola w dokumencie, na przykład przebudować `TOC`, kiedy zajdzie taka potrzeba
- podczas drukowania/renderowania do formatu PDF lub XPS, pola związane z numeracją stron w nagłówkach/stopkach są aktualizowane
- po uruchomieniu mail merge wszystkie pola są aktualizowane automatycznie

### Aktualizuj pola programowo

Aby jawnie zaktualizować pola w całym dokumencie, wystarczy wywołać metodę [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/). Aby zaktualizować pola zawarte w części dokumentu, należy uzyskać obiekt [Range](https://reference.aspose.com/words/net/aspose.words/range/) i wywołać metodę [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/). W Aspose.Words możesz uzyskać **Range** dla dowolnego węzła w drzewie dokumentu, takiego jak [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) itp., używając właściwości [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/). Możesz zaktualizować wynik pojedynczego pola, wywołując metodę [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/).

### Automatyczna aktualizacja pól związanych ze stroną podczas renderowania

W przypadku konwersji dokumentu do formatu o stałej stronie np. do PDF lub XPS, Aspose.Words automatycznie zaktualizuje pola związane z układem strony `PAGE`, `PAGEREF` znajdujące się w nagłówkach/stopkach dokumentu. To zachowanie naśladuje zachowanie Microsoft Word podczas drukowania dokumentu.

Jeśli chcesz zaktualizować wszystkie pozostałe pola w dokumencie, musisz wywołać [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) przed wyrenderowaniem dokumentu.

Poniższy przykład kodu pokazuje, jak zaktualizować wszystkie pola przed wyrenderowaniem dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Automatyczna aktualizacja pola podczas Mail Merge

Po wykonaniu mail merge wszystkie pola w dokumencie zostaną automatycznie zaktualizowane. Dzieje się tak, ponieważ mail merge jest przypadkiem aktualizacji w terenie. Program natrafia na pole mail merge i musi zaktualizować jego wynik, co polega na pobraniu wartości ze źródła danych i wstawieniu jej do pola. Logika jest oczywiście bardziej skomplikowana, np. gdy osiągnięty zostanie koniec dokumentu/regionu mail merge, ale nadal pozostają dalsze dane do połączenia, wówczas region należy zduplikować i zaktualizować nowy zestaw pól.

## Zaktualizuj pola mające brudny atrybut

W:dirty to atrybut na poziomie pola, który po otwarciu dokumentu odświeży tylko określone pole. Informuje MS Word, aby tylko odświeżył to pole przy następnym otwarciu dokumentu. Możesz użyć właściwości [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/), aby określić, czy aktualizować pola za pomocą atrybutu brudnego. Gdy wartość **UpdateDirtyFields** jest ustawiona na *true*, wszystkie pola posiadające wartość *true* dla właściwości [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) lub [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) są aktualizowane podczas ładowania dokumentu.

Poniższy przykład kodu pokazuje, jak zaktualizować pola posiadające atrybut dirty:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Zaktualizuj właściwość LastSavedTime przed zapisaniem

Możesz użyć właściwości [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/), aby zaktualizować odpowiednią wbudowaną właściwość dokumentu [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) podczas zapisywania dokumentu.

Poniższy przykład kodu pokazuje, jak zaktualizować tę właściwość:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
