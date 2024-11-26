---
title: Lucrul cu liste în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu liste
linktitle: Lucrul cu liste
description: "Creați, specificați formatarea și reporniți listele într-un document folosind Python."
type: docs
weight: 200
url: /ro/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

O listă dintr-un document Microsoft Word este un set de proprietăți de formatare a listei. Listele pot fi utilizate în documentele dvs. pentru a formata, aranja și sublinia textul. Listele sunt o modalitate excelentă de a organiza datele în documente și facilitează cititorilor să înțeleagă punctele cheie.

Fiecare listă poate avea până la 9 nivelurile și proprietățile de formatare, cum ar fi stilul numărului, valoarea de pornire, liniuța, poziția filei etc. sunt definite separat pentru fiecare nivel.

În Aspose.Words, Lucrul cu liste este reprezentat de modulul [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Cu toate acestea, obiectul [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) aparține întotdeauna colecției [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

Acest subiect descrie modul de lucru programatic cu liste folosind Aspose.Words.

## Crearea listelor prin aplicarea formatării listei

Aspose.Words permite crearea ușoară a listelor prin aplicarea formatării listei. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) oferă proprietatea [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) care returnează un obiect [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Acest obiect are mai multe metode pentru a începe și a termina o listă și pentru a mări/micșora liniuța. Există două tipuri generale de liste în Microsoft Word: cu marcatori și numerotate.

- Pentru a începe o listă cu marcatori, apelați [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Pentru a începe o listă numerotată, apelați [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Marcatorul sau numărul și formatarea sunt adăugate la paragraful curent și toate paragrafele ulterioare create folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) până când [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) este apelat pentru a opri formatarea listei cu marcatori.

În documentele Word, listele pot consta din până la nouă niveluri. Formatarea listei pentru fiecare nivel specifică ce glonț sau număr este utilizat, liniuța stângă, spațiul dintre glonț și text etc. Următoarele metode modifică nivelul listei și aplică proprietățile de formatare ale noului nivel:

- Pentru a mări nivelul listei paragrafului curent cu un nivel, apelați [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Pentru a reduce nivelul listei paragrafului curent cu un nivel, apelați [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Metodele modifică nivelul listei și aplică proprietățile de formatare ale noului nivel.

{{% alert color="primary" %}}

De asemenea, puteți utiliza proprietatea [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) pentru a obține sau a seta nivelul listei pentru paragraf. Nivelurile listei sunt numerotate de la 0 la 8.

{{% /alert %}}

Exemplul de mai jos arată cum să construiți o listă pe mai multe niveluri.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Specificați formatarea pentru un nivel de listă

Obiectele la nivel de listă sunt create automat atunci când este creată o listă. Utilizați proprietățile și metodele clasei [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) pentru a controla formatarea nivelurilor individuale ale unei liste.

## Reporniți lista pentru fiecare secțiune

Puteți reporni o listă pentru fiecare secțiune folosind proprietatea [is_restart_at_each_section property](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Rețineți că această opțiune este acceptată numai în formatele de documente RTF, DOC și DOCX. Această opțiune va fi scrisă în DOCX numai dacă OoxmlCompliance este mai mare decât Ecma376.

Următorul exemplu de cod arată cum să creați o listă și să o reporniți pentru fiecare secțiune:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
