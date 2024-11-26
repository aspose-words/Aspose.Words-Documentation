---
title: Lucrând cu liste în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu liste
linktitle: Lucrul cu liste
description: "Introducere la caracteristica de formatare numerotare în Aspose.Words pentru .NET."
type: docs
weight: 200
url: /ro/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

O listă într-un Microsoft Word document este un set de proprietăți de formatare a paragrafului. Liste pot fi folosite în documente pentru a structura, aranja și evidenția textul. Liste sunt un mod minunat de a organiza datele în documente într-un mod care le face ușor pentru cititori să absoarbă și să înțeleagă punctele cheie.

Fiecare listă poate avea până la 9 niveluri, iar proprietățile de formatare precum stilul numerelor, valoarea de început, indentarea, poziția tab-ului și altele sunt definite separat pentru fiecare nivel.

În Aspose.Words, lucrul cu liste este reprezentat prin spațiul de nume [Lists](https://reference.aspose.com/words/net/aspose.words.lists/). "Cu toate acestea, obiectul [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) aparține întotdeauna obiectului [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/)."

Acest articol descrie lucrul programatic cu liste folosind Aspose.Words.

## Creați liste prin aplicarea formatării listelor

Aspose.Words permite crearea ușoară a listelor prin aplicarea formatării de listă. " [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) " oferă proprietatea [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/), care returnează un obiect **ListFormat**. Acest obiect are mai multe metode pentru a începe și termina o listă și pentru a crește/scădea indentul. Există două tipuri generale de liste în Microsoft Word: marcate și numerotate

"- Pentru a începe o listă cu marcatori, apelați [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)"
- Pentru a începe o listă numerotată, apelați [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

La tragere sau la număr și formatarea sunt adăugate la paragraf actual și toate paragrafele ulterioare create folosind **DocumentBuilder** până când [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) este numit pentru a opri formatarea de listă cu puncte.

În documentele Word, listele pot consta din până la nouă niveluri. Formatarea listelor pentru fiecare nivel specifică ce glonț sau număr este folosit, indentare stânga, spațiu între glonț și text etc. Următoarele metode modifică nivelul de listă și aplică proprietățile de formatare ale noului nivel:

- Pentru a crește nivelul de listă al paragrafului curent cu unul, apelați [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
Pentru a reduce nivelul de listă al paragrafului curent cu un nivel, apelați [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Puteți folosi și proprietatea [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) pentru a obține sau seta nivelul de listă al paragrafului.

{{% alert color="primary" %}}

Nivelurile de listă sunt numărate de la 0 la 8.

{{% /alert %}}

Exemplul de cod de mai jos prezintă cum se construiește o listă în mai multe niveluri:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Specificați formatarea pentru un nivel de listă

Obiectele de nivel lista sunt create automat când se creează o listă. Folosiți proprietățile și metodele clasei [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) pentru a controla formatarea nivelurilor individuale ale unei liste.

## Repornire listă pentru fiecare secțiune

Poţi reporni o listă pentru fiecare secţiune folosind proprietatea [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/). Reține că această opțiune este suportată doar în formatul de fișiere RTF, DOC și DOCX. Această opțiune va fi scrisă în DOCX numai dacă OoxmlCompliance este mai mare decât Ecma376.

Exemplul de cod următor arată cum să creezi o listă și să o restarteze pentru fiecare secțiune:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
