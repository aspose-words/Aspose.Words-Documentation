---
title: Mail Merge Mustache sintaxă
second_title: Aspose.Words pentru Python via .NET
articleTitle: Mail Merge șablon din Mustache sintaxă
linktitle: Mail Merge șablon din Mustache sintaxă
type: docs
description: "Creați șabloane cu Mustache sintaxă folosind Python. Mustache sintaxa este singura opțiune de utilizat cu șabloane care nu conțin câmpuri (HTML sau TXT). Cu șabloanele Word, aveți două opțiuni: câmpuri sau sintaxă Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /ro/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words vă permite să creați șabloane cu mustache sintaxă în plus față de șabloanele familiare. A Mustache este o variantă alternativă a sintaxei șablonului care constă din nume de etichete închise cu `{{ }}` și este susținută de un obiect model care conține datele pentru șablon.

Sintaxa Mustache este singura opțiune de utilizat cu șabloane care nu conțin câmpuri, cum ar fi HTML și TXT șabloane. Cu șabloanele Word, aveți două opțiuni fie pentru a utiliza câmpuri, fie pentru sintaxa Mustache.

Sintaxa Mustache suportă eticheta *foreach*, Care este o alternativă pentru utilizarea Mail Merge cu regiuni. Deci, avantajul este că puteți utiliza mustache sintaxă dacă din anumite motive nu puteți sau pur și simplu nu doriți să utilizați câmpuri de îmbinare și regiuni de îmbinare.

De asemenea, puteți combina câmpurile Mail Merge cu unele câmpuri suplimentare folosind eticheta *foreach* așa cum se arată în imaginea de mai jos.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Creați un șablon Mustache

Primul punct important de clarificat este că Mustache nu este un motor de șablon. Mustache este o altă variantă de sintaxă care este disponibilă pentru orice șablon dintr-un [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) suportat de Aspose.Words. Prin urmare, puteți crea un astfel de șablon atât programatic, cât și printr-o interfață, trebuie doar să includeți o anumită sintaxă și să respectați specificația Mustache.

Să presupunem că trebuie să trimiteți același e-mail destinatarilor 50 pentru a personaliza salutul cu prenumele corespunzătoare. Puteți înlocui prenumele destinatarului cu un substituent, după cum urmează:

> Dear {{FirstName}}
>
> I hereby...

Întrebarea aici: cum puteți crea 50 e-mailuri din 1 un singur șablon Mustache? Pentru a răspunde la aceasta, trebuie să efectuați un Mail Merge cu regiuni pentru a umple acoladele pentru substituenții din șablon cu date reale și pentru a genera un document de ieșire.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

După cum observați din exemplul de mai sus, în Mustache trebuie să utilizați acolade pentru substituenți care arată ca un mustache atunci când rotiți acolade 90 grade în sensul acelor de ceasornic.

{{% /alert %}}

## Lucrați cu Mustache sintaxă

Mustache este reprezentat ca o ordine fără logică, deoarece nu are instrucțiuni specifice de flux de control, cum ar fi *for* bucle și *if* și *else* condiții. Dar puteți utiliza secțiunea etichete liste de procesare și lambdas pentru a realiza evaluarea condiționată și looping. Deci, pentru a include sintaxa Mustache în cadrul operației mail merge, va trebui să utilizați proprietatea [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) și să setați valoarea acesteia la *True*.

## Utilizați `IF` câmpuri pentru a face un Mail Merge inteligent

Aspose.Words vă permite să utilizați câmpurile Mail Merge și etichetele Mustache cu instrucțiunea `IF`. Câmpurile `IF` pot fi utilizate în orice document Mail Merge pentru a suprima spațiile și virgulele nedorite dacă un câmp este gol.

Formula câmpului `IF` este prezentată mai jos:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Aici, condiția poate fi fie un câmp de îmbinare, fie o etichetă Mustache.

De exemplu, puteți utiliza câmpurile `IF` dacă trebuie să inserați "lui", "ei"," el "sau" ea " în funcție de sex, după cum urmează:

**{ IF { MERGEFIELD Gender } = "MALE" "Text adevărat" "text fals"}**

**{ IF "{{ GENDER }}" = "MALE" "Text adevărat" "text fals"}**

Următorul exemplu de cod arată cum se efectuează o operație Mail Merge cu Mustache etichete și `IF` câmpuri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Puteți observa diferența dintre document înainte de a aplica proprietatea [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

Și după aplicarea proprietății [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
