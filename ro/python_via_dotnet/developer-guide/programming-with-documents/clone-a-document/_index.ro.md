---
title: Clonează un Document în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Clonează un Document
linktitle: Clonează un Document
type: docs
description: "Clonați un document pentru a obține copia identică folosind Python. La crearea unei copii, nodurile și proprietățile documentului original sunt clonate."
weight: 70
url: /ro/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Clonarea unui document este procesul de creare a unei copii identice a unui document original, care poate îmbunătăți performanța și vă poate salva de eventualele scurgeri de memorie.

Acest articol va explica principalele cazuri de utilizare a clonării unui document și modul de creare a unei clone de document folosind Aspose.Words.

## Operațiuni cu documente de clonare

Operația de clonare vă permite să faceți procesul de creare a documentelor mai rapid, deoarece nu va trebui să încărcați și să analizați un document dintr-un fișier de fiecare dată.

După crearea unei clone a documentului dvs., îl veți putea edita și efectua diferite operații pe acesta, de exemplu, comparați-l cu documentul original, adăugați-l sau introduceți-l într-un alt document. De asemenea, puteți modifica elementele clonate sau conținutul acestora înainte de a le insera într-un alt document.

## Crearea unei Clone de documente

Aspose.Words vă permite să clonați un document folosind metoda [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) care efectuează o copie profundă a documentului și îl returnează. Cu alte cuvinte, va primi o copie completă a DOM. Metoda [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) accelerează generarea documentelor și aveți nevoie de o singură linie de cod pentru a obține o copie a documentului.

Clonarea produce un nou document cu același conținut ca originalul, dar cu o copie unică a fiecăruia dintre nodurile documentului original. De asemenea, puteți aplica operația de clonare la un nod de document utilizând metoda node [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/), care vă permite să duplicați nodurile de document compozit cu și fără nodurile lor copil.

{{% alert color="primary" %}}

Rețineți că atunci când aplicați metoda de clonare, toate proprietățile documentului vor fi clonate.

{{% /alert %}}

Următorul exemplu de cod arată cum să clonați un document și să creați un duplicat al unei secțiuni din acel document:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
