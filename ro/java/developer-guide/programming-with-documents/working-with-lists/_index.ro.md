---
title: Lucrul cu liste în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu liste
linktitle: Lucrul cu liste
description: "Introducere în funcția de formatare a numerotării în Aspose.Words pentru Java."
type: docs
weight: 200
url: /ro/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

O listă dintr-un document Microsoft Word este un set de proprietăți de formatare a listei. Listele pot fi utilizate în documentele dvs. pentru a formata, aranja și sublinia textul. Listele sunt o modalitate excelentă de a organiza datele în documente și facilitează cititorilor să înțeleagă punctele cheie.

Fiecare listă poate avea până la 9 niveluri și proprietăți de formatare, cum ar fi stilul numărului, valoarea de pornire, liniuța, poziția filei și altele sunt definite separat pentru fiecare nivel.

Acest articol descrie lucrul programatic cu liste folosind Aspose.Words.

## Crearea listelor prin aplicarea formatării listei

Aspose.Words permite crearea ușoară a listelor prin aplicarea formatării listei. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) oferă proprietatea [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) care returnează un obiect **ListFormat**. Acest obiect are mai multe metode pentru a începe și a termina o listă și pentru a mări/micșora liniuța. Există două tipuri generale de liste în Microsoft Word: cu marcatori și numerotate:

- Pentru a începe o listă cu marcatori, apelați [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Pentru a începe o listă numerotată, apelați [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Marcatorul sau numărul și formatarea sunt adăugate la paragraful curent și toate paragrafele ulterioare create folosind **DocumentBuilder** până când [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) este apelat pentru a opri formatarea listei cu marcatori.

În documentele Word, listele pot consta din până la nouă niveluri. Formatarea listei pentru fiecare nivel specifică ce glonț sau număr este utilizat, liniuța stângă, spațiul dintre glonț și text etc. Următoarele metode modifică nivelul listei și aplică proprietățile de formatare ale noului nivel:

- Pentru a mări nivelul listei paragrafului curent cu un nivel, apelați [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Pentru a reduce nivelul listei paragrafului curent cu un nivel, apelați [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Metodele modifică nivelul listei și aplică proprietățile de formatare ale noului nivel.

{{% alert color="primary" %}}

De asemenea, puteți utiliza proprietatea [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) pentru a obține sau a seta nivelul listei pentru paragraf. Nivelurile listei sunt numerotate de la 0 la 8.

{{% /alert %}}

Următorul exemplu de cod arată cum să construiți o listă pe mai multe niveluri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Specificați formatarea pentru un nivel de listă

Obiectele la nivel de listă sunt create automat atunci când este creată o listă. Utilizați proprietățile și metodele clasei [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) pentru a controla formatarea nivelurilor individuale ale unei liste.

## Reporniți lista pentru fiecare secțiune

Puteți reporni o listă pentru fiecare secțiune folosind proprietatea [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). Rețineți că această opțiune este acceptată numai în formatele de documente RTF, DOC și DOCX. Această opțiune va fi scrisă în DOCX numai dacă OoxmlCompliance este mai mare decât Ecma376.

Următorul exemplu de cod arată cum să creați o listă și să o reporniți pentru fiecare secțiune:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

