---
title: Clonează un Document în Java
second_title: Aspose.Words pentru Java
articleTitle: Clonează un Document
linktitle: Clonează un Document
type: docs
description: "Clonați un document pentru a obține copia identică. La crearea unei copii, nodurile și proprietățile documentului original sunt clonate folosind Java."
weight: 70
url: /ro/java/clone-a-document/
---

Clonarea unui document este procesul de creare a unei copii identice a unui document original, care poate îmbunătăți performanța și vă poate salva de eventualele scurgeri de memorie.

Acest articol va explica principalele cazuri de utilizare a clonării unui document și modul de creare a unei clone de document folosind Aspose.Words.

## Operațiuni cu documente de clonare

Operația de clonare vă permite să faceți procesul de creare a documentelor mai rapid, deoarece nu va trebui să încărcați și să analizați un document dintr-un fișier de fiecare dată.

După crearea unei clone a documentului dvs., îl veți putea edita și efectua diferite operații pe acesta, de exemplu, comparați-l cu documentul original, adăugați-l sau introduceți-l într-un alt document. De asemenea, puteți modifica elementele clonate sau conținutul acestora înainte de a le insera într-un alt document.

## Crearea unei Clone de documente

Aspose.Words vă permite să clonați un document folosind metoda [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) care efectuează o copie profundă a documentului și îl returnează. Cu alte cuvinte, va primi o copie completă a DOM. Metoda `Clone` accelerează generarea documentelor și aveți nevoie de o singură linie de cod pentru a obține o copie a documentului.

Clonarea produce un nou document cu același conținut ca originalul, dar cu o copie unică a fiecărui document original [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). De asemenea, puteți aplica operația de clonare la un nod de document utilizând metoda node [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean), care vă permite să duplicați nodurile de document compozit cu și fără nodurile lor copil.

{{% alert color="primary" %}}

Rețineți că atunci când aplicați metoda de clonare, toate proprietățile documentului vor fi clonate.

{{% /alert %}}

Următorul exemplu de cod arată cum să clonați un document și să creați un duplicat al unei secțiuni din acel document:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
