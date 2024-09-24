---
title: Aplicarea Formatării Personalizate la Câmpuri în C#
second_title: Aspose.Words pentru .NET
articleTitle: Aplicați formatare personalizată câmpurilor
linktitle: Aplicați formatare personalizată câmpurilor
description: "Formatează şi evaluează rezultatul câmpurilor folosind C#."
type: docs
weight: 40
url: /ro/net/applying-custom-formatting-to-fields/
---

Uneori utilizatorii au nevoie să aplice formatare particularizată câmpurilor. În acest articol vom privi câteva exemple de modul în care aceasta poate fi realizată.

Pentru a afla mai multe opțiuni, vedeți lista completă de proprietăți pentru fiecare tip de câmp în clasa corespunzătoare din [Fields namespace](https://reference.aspose.com/words/net/aspose.words.fields/).

## Cum se aplică formatarea particularizată rezultatelor câmpului

Aspose.Words oferă API pentru formatarea personalizată a rezultatului câmpului. Puteți implementa interfața [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) pentru a controla modul în care rezultatul câmpului este formatat. Puteți aplica comutatorul de format numeric, adică "\# #. ## ", comutatorul de format dată/oră, adică "\ @ "dd.mm.y", și comutatorul de format al numărului, adică "\ * Ordinal.

Exemplul de cod următor prezintă modul în care se aplică formatarea particularizată pentru câmpul rezultat":

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Cum să evaluiți condiția `IF`

Dacă doriți să evaluați `IF` condiție după mail merge, puteți utiliza metoda [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) care returnează imediat rezultatul evaluării expresiei.

Exemplul următor arată cum să folosești această metodă:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Cum să aplici formatare personalizată câmpului de timp

În mod implicit Aspose.Words actualizează `TIME` câmp cu formatul scurt de timp al culturii curente. Am descoperit că există o diferență între Microsoft Word formatare și .NET / Windows formatare, și de asemenea între diferite versiuni .NET Framework. Dacă doriți să formatați câmpul `TIME` în funcție de cerințele dvs., puteți realiza acest lucru prin implementarea interfeței [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/).

Următoarele exemple de cod arată cum se aplică formatarea particularizată la câmpul `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
