---
title: Curățați înainte sau în timpul Mail Merge
second_title: Aspose.Words pentru .NET
articleTitle: Curățați înainte sau în timpul unei operații Mail Merge
linktitle: Curățați înainte sau în timpul unei operații Mail Merge
type: docs
description: "Aplicați diferite opțiuni de curățare și eliminare, cum ar fi ștergerea câmpurilor de îmbinare înainte de a efectua o operație Mail Merge sau eliminarea regiunilor neutilizate în timpul unei operații Mail Merge folosind C#."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /ro/net/clean-up-before-or-during-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words vă permite să aplicați diferite opțiuni de curățare și eliminare, cum ar fi ștergerea câmpurilor de îmbinare înainte de a efectua o operație Mail Merge sau eliminarea regiunilor neutilizate în timpul unei operații Mail Merge. Această secțiune va explica cum să ștergeți câmpurile îmbinate și cum să configurați o opțiune de eliminare.

## Ștergeți Câmpurile Îmbinate

Când utilizați un șablon lung creat de altcineva, vă recomandăm să ștergeți toate câmpurile de îmbinare care există deja în acel șablon înainte de a efectua o operație Mail Merge. Puteți utiliza metoda [DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/) Dacă doriți să ștergeți toate câmpurile de îmbinare dintr-un document fără a executa o operație Mail Merge. Această metodă nu este afectată de nicio opțiune de eliminare a proprietății [CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/) și executarea acesteia elimină doar câmpurile îmbinate, nu orice câmpuri care conțin sau paragrafe goale.

Următorul exemplu de cod arată cum să ștergeți toate câmpurile de îmbinare din șablon fără a executa o operație Mail Merge:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## Configurați o opțiune `Removing`

Aspose.Words vă permite să eliminați câmpurile, regiunile și paragrafele nemergate dintr-un șablon în timpul unei operații Mail Merge folosind opțiuni de eliminare.

Utilizați proprietatea **CleanupOptions** împreună cu enumerarea [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) pentru a seta opțiunea Eliminare. Specificați ce elemente doriți să eliminați alegând următoarele opțiuni (puteți combina mai multe):

* Eliminați paragrafele goale
* Eliminați regiunile neutilizate
* Eliminați câmpurile neutilizate
* Eliminați câmpurile care conțin
* Eliminați câmpurile statice
* Eliminați rândurile de tabel goale

Puteți considera un câmp de îmbinare ca unmerged într-una din următoarele condiții:

1. Dacă câmpul îmbinare din sursa de date nu are o coloană sau un câmp de mapare.
2. Dacă câmpul de îmbinare din sursa de date conține un câmp de mapare, dar datele sunt nule.

{{% alert color="primary" %}}

Dacă fuzionați date folosind surse de date separate, atunci acele opțiuni de eliminare vor fi activate numai cu ultimul apel al metodei de execuție Mail Merge.

{{% /alert %}}

### Eliminați Paragrafele Goale

Un paragraf care include doar câmpuri de îmbinare va fi gol atunci când procesul Mail Merge elimină toate câmpurile sale de îmbinare ca nemergate. Aceste paragrafe goale pot adăuga spațiu nedorit și pot schimba modul în care va arăta raportul generat. Este posibil să vă confruntați cu două situații cu paragrafe în timpul unei operații Mail Merge:

1. Câmpul Mail Merge va fi îmbinat cu date goale.
2. Câmpul de îmbinare este neutilizat și va fi eliminat.

În ambele situații, opțiunea **RemoveEmptyParagraphs** va elimina automat paragrafele goale din document. De asemenea, va elimina câmpurile de îmbinare `TableStart` și TableEnd dacă restul paragrafului este gol.

Următorul exemplu de cod arată cum să eliminați paragrafele goale:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Eliminați Regiunile Neutilizate

În versiunile anterioare ale Aspose.Words, regiunile goale Mail Merge au fost eliminate automat din document în timpul operației Mail Merge. Cu cea mai recentă versiune de Aspose.cuvinte, regiunile goale Mail Merge rămân în mod implicit după operația Mail Merge. Cu toate acestea, puteți utiliza opțiunea **RemoveUnusedRegions** pentru a elimina regiunile Mail Merge neutilizate în timpul operației Mail Merge. De exemplu, puteți îmbina un document cu o sursă de date goală care nu conține tabele de date care să conducă la regiuni neutilizate în document.

Următorul exemplu de cod arată cum să eliminați regiunile de îmbinare neutilizate:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Notă**

### Eliminați Câmpurile Neutilizate

Aspose.Words vă permite să eliminați orice câmpuri Mail Merge neutilizate prin atribuirea steagului **RemoveUnusedFields** la **CleanupOptions**. Această opțiune va elimina câmpurile de îmbinare care nu au datele corespunzătoare în sursa de date.

Următorul exemplu de cod arată cum să eliminați automat orice câmpuri de îmbinare neutilizate dintr-un document în timpul unei operații Mail Merge:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### Eliminarea Câmpurilor Care Conțin

Un câmp de fuziune poate fi conținut într-un alt câmp, cum ar fi un câmp **IF** sau un câmp de formulă. Eliminați acest câmp exterior atunci când câmpul îmbinare este îmbinat sau eliminat din document.

Următorul exemplu de cod arată cum să eliminați câmpurile care conțin câmpuri de îmbinare dintr - un document:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**Notă**

### Eliminați Rândurile De Tabel Goale

Aspose.Words vă permite să eliminați rândurile de tabel goale atribuind steagul **RemoveEmptyTableRows** la **CleanupOptions**. Această opțiune va elimina rândurile de tabel care conțin câmpuri de îmbinare goale.

Următorul exemplu de cod arată cum să eliminați rândurile de tabel goale care conțin regiuni Mail Merge dintr-un document:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}
