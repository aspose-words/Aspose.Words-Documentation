---
title: Aktualizuj pola Java
second_title: Aspose.Words zamiast Java
articleTitle: Aktualizuj pola
linktitle: Aktualizuj pola
description: "Dowiedz się, jak aktualizować pola w Java. Aktualizuj pola programowo lub używaj automatycznej aktualizacji pola Java API"
type: docs
weight: 30
url: /pl/java/update-field/
---

Zazwyczaj, pole umieszczone w Microsoft Word zawiera zaktualizowaną wartość. Na przykład, jeśli pole jest wzorem lub numerem strony, będzie zawierać poprawną wartość obliczoną dla danej wersji dokumentu. Ale jeśli masz aplikację, która generuje lub modyfikuje dokument z polami takimi jak łączenie dwóch dokumentów lub populacja go z danymi, to najlepiej wszystkie pola muszą być aktualizowane, aby dokument był przydatny.

## Jak zaktualizować pola

Kiedy dokument jest załadowany, Aspose.Words naśladuje zachowanie Microsoft Word z możliwością automatycznej aktualizacji pól jest wyłączona. Zachowanie można podsumować następująco:

- po otwarciu / zapisaniu dokumentu pola pozostają nienaruszone
- można wyraźnie zaktualizować wszystkie pola w dokumencie, na przykład odbudować `TOC` kiedy należy
- gdy drukujesz / renderujesz do PDF lub XPS pola związane z numeracją konkursów w nagłówkach / stopkach są aktualizowane
- kiedy wykonasz mail merge wszystkie pola są automatycznie aktualizowane

### Aktualizacja pól programowo

Aby wyraźnie zaktualizować pola w całym dokumencie, po prostu zadzwoń [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) Metoda. Aby zaktualizować pola zawarte w części dokumentu, uzyskać [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) obiekt i wywołaj [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) Metoda. W Aspose.Words, można uzyskać **Range** dla każdego węzła w drzewie dokumentów, takich jak [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) nieruchomości. Możesz zaktualizować wynik pojedynczego pola wywołując [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) Metoda.

### Automatyczna aktualizacja pól pokrewnych podczas renderingu

Gdy wykonujesz konwersję dokumentu do formatu fixed-page np. do PDF lub XPS, wtedy Aspose.Words automatycznie aktualizuje pola związane z układem `PAGE`, `PAGEREF` znaleźć w nagłówkach / stopkach dokumentu. To zachowanie naśladuje zachowanie Microsoft Word podczas drukowania dokumentu.

Jeśli chcesz zaktualizować wszystkie inne pola w dokumencie, musisz zadzwonić [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) przed złożeniem dokumentu.

Poniższy przykład pokazuje jak zaktualizować wszystkie pola przed sporządzeniem dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Automatyczna aktualizacja pola podczas Mail Merge

Kiedy wykonujesz <span notrans="<span notrans=" mail merge"=""></span>", > wszystkie pola w dokumencie będą automatycznie aktualizowane. To dlatego, że mail merge jest to przypadek aktualizacji pola. Program spotyka mail merge pole i musi uaktualnić jego wynik, co obejmuje chwytanie wartości ze źródła danych i umieszczanie go w polu. Logika jest oczywiście bardziej skomplikowana, na przykład, gdy koniec dokumentu /mail merge region został osiągnięty, ale nadal istnieją dalsze dane, które należy połączyć, a następnie region należy powielić i uaktualnić nowy zestaw pól.

## Aktualizuj pola posiadające nieprzyzwoity atrybut

W: dirty jest atrybutem poziomu Field-, który odświeża tylko pole, które podasz po otwarciu dokumentu. Mówi MS Word, aby odświeżyć to pole dopiero przy następnym otwarciu dokumentu. Możesz użyć właściwości LoadOptions.setupdateDirtyFields (), aby określić, czy zaktualizować pola z atrybutem brudny. Kiedy wartość LoadOptions.setupdateDirtyFields () jest ustawiona na <span notrans="<span notrans=" *true*"=""></span>", > wszystkie pola *true* wartość dla `Field.IsDirty` lub `FieldChar.IsDirty` nieruchomość jest aktualizowana przy załadowaniu dokumentu

Poniższy przykład kodu pokazuje, jak zaktualizować pola posiadające atrybut brudny:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Aktualizacja własności LastSavedTime przed zapisaniem

Można użyć [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) właściwość, czy zaktualizować odpowiednią właściwość built- in document [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) podczas zapisywania dokumentu.

Poniższy przykład kodu pokazuje jak zaktualizować tę właściwość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
