---
title: Aplicați formatarea personalizată câmpurilor din C++
second_title: Aspose.Words pentru C++
articleTitle: Aplicați formatarea personalizată câmpurilor
linktitle: Aplicați formatarea personalizată câmpurilor
description: "Formatați și evaluați rezultatele câmpurilor folosind C++."
type: docs
weight: 40
url: /ro/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Uneori, utilizatorii trebuie să aplice formatarea personalizată câmpurilor. În acest articol, vom analiza câteva exemple despre cum se poate face acest lucru.

Pentru a afla mai multe opțiuni, consultați lista completă de proprietăți pentru fiecare tip de câmp din clasa corespunzătoare din [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Cum se aplică formatarea personalizată la rezultatul câmpului

Aspose.Words oferă API pentru formatarea personalizată a rezultatului câmpului. Puteți implementa interfața [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) pentru a controla modul în care este formatat rezultatul câmpului. Puteți aplica comutator format numeric, adică \# "#.##", Comutator format dată/oră, adică \@ "dd.MM.yyyy" și comutator format număr, adică \* Ordinal.

Următorul exemplu de cod arată cum se aplică formatarea personalizată pentru rezultatul câmpului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Cum se evaluează condiția `IF`

Dacă doriți să evaluați condiția `IF` după mail merge, puteți utiliza metoda [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) care returnează imediat rezultatul evaluării expresiei.

Următorul exemplu de cod arată cum să utilizați această metodă:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Cum se aplică formatarea personalizată în câmpul de timp

În mod implicit Aspose.Words actualizări `TIME` câmp cu cultura curentă format scurt timp. Dacă doriți să formatați câmpul `TIME` în funcție de cerințele dvs., puteți realiza acest lucru prin implementarea interfeței [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Următoarele exemple de cod arată cum se aplică formatarea personalizată la câmpul `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
