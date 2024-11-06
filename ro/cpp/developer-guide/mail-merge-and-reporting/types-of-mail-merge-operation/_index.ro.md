---
title: Tipuri de operații Mail Merge în C++
second_title: Aspose.Words pentru C++
articleTitle: Tipuri de operațiuni Mail Merge
linktitle: Tipuri de operațiuni Mail Merge
type: docs
description: "Efectuați două tipuri diferite de operații mail merge: simple mail merge și mail merge cu regiuni folosind C++. Simplu mail merge repetă întregul document pentru fiecare înregistrare sursă de date, în timp ce mail merge cu regiuni repetă doar regiunile desemnate pentru fiecare înregistrare."
keywords: "how to execute mail merge c++"
weight: 20
url: /ro/cpp/types-of-mail-merge-operations/
---

Ideea principală a mail merge este să creați automat un document sau mai multe documente pe baza șablonului și a datelor preluate din sursa de date. Aspose.Words vă permite să efectuați două tipuri diferite de operații mail merge: simple mail merge și mail merge cu regiuni.

Cel mai comun exemplu de utilizare a simplului mail merge este atunci când doriți să trimiteți un document pentru diferiți clienți, incluzând numele acestora la începutul documentului. Pentru a face acest lucru, trebuie să creați câmpuri de îmbinare, cum ar fi *First Name* și *Last Name* în șablonul dvs., apoi să le completați cu date din sursa de date. În timp ce cel mai comun exemplu de utilizare a mail merge cu regiuni este atunci când doriți să trimiteți un document care include comenzi specifice cu lista tuturor articolelor din fiecare comandă. Pentru a face acest lucru, va trebui să creați regiuni de îmbinare în interiorul șablonului dvs. – Regiune proprie pentru fiecare comandă, pentru a o completa cu toate datele necesare pentru articole.

Principala diferență dintre ambele operații de fuziune este că mail merge simplu (fără regiuni) repetă întregul document pentru fiecare înregistrare sursă de date, în timp ce mail merge cu regiuni repetă doar regiunile desemnate pentru fiecare înregistrare. Vă puteți gândi la o operație simplă mail merge ca la un caz particular de îmbinare cu regiuni în care singura regiune este întregul document.

{{% alert color="primary" %}}

Clasa [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) reprezintă o funcționalitate mail merge. Cu proprietățile sale, puteți personaliza comportamentul necesar înainte de a executa o operație mail merge.

{{% /alert %}}

