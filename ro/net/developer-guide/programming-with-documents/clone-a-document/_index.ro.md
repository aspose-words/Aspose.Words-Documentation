---
title: Clona unui document în C#
second_title: Aspose.Words pentru .NET
articleTitle: Clonă un document
linktitle: Clonă un document
type: docs
description: "Clona unui document pentru a obține o copie identică folosind C#. `Când creezi o copie, nodurile și proprietățile documentului original sunt clonate.`"
weight: 70
url: /ro/net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Clonarea unui document este procesul de creare a unei copii identice a unui document original, ceea ce poate îmbunătăți performanța și vă poate salva de la potențiale scurgeri de memorie.

Acest articol va explica cazurile de utilizare principale ale clonării unui document și cum să creați o clonă de document folosind Aspose.Words.

## Operații cu documente clonate

Operaţia de clonare vă permite să faceţi procesul de creare a documentelor mai rapid, deoarece nu va trebui să încărcaţi şi să analizaţi un document dintr-un fişier de fiecare dată.

După ce creați o clonă a documentului dvs., veți putea edita și efectua diferite operațiuni asupra acestuia, de exemplu, comparați-l cu documentul original, atașați sau inserați în alt document. Puteți modifica, de asemenea, elementele clonate sau conținutul lor înainte de a le insera într-un alt document.

## Crearea unui clone de document

Aspose.Words vă permite să clonați un document folosind metoda [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) care efectuează o copie profundă a documentului și returnează aceasta. "Cu alte cuvinte, va obține o copie completă a DOM." Metoda `Clone` accelerează generarea documentelor, și ai nevoie doar de o linie de cod pentru a obține o copie a documentului tău.

Clonarea produce un nou document cu același conținut ca și cel original, dar cu o copie unică a fiecărui [nodes](https://reference.aspose.com/words/net/aspose.words/node/) al documentului original. De asemenea puteți aplica operațiunea de clonare la un nod de document folosind metoda [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) a nodului, care vă permite să duplicați nodurile de document compuse cu și fără nodurile lor copil.

{{% alert color="primary" %}}

Notă că, atunci când se aplică metoda de clonare, toate proprietățile documentului vor fi clone.

{{% /alert %}}

Exemplul de cod următor arată cum să cloneze un document și să creeze o copie duplicată într-o secțiune a acestui document":

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
