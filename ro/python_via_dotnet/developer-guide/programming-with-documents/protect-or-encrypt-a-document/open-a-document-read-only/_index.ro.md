---
title: Deschiderea unui Document numai în citire în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Deschiderea unui Document numai în citire
linktitle: Deschiderea unui Document numai în citire
description: "Faceți documentul numai în citire, astfel încât conținutul să poată fi copiat sau citit, dar nu modificat folosind Python."
type: docs
weight: 10
url: /ro/python-net/open-a-document-read-only/
---

Uneori, este posibil să aveți un document care necesită o recenzie, dar nu doriți ca recenzenții să vă modifice aleatoriu conținutul. Aspose.Words vă permite să faceți permisiunea documentului dvs. numai pentru citire, astfel încât conținutul să poată fi copiat sau citit, dar nu modificat. Acest lucru va împiedica eliminarea sau adăugarea conținutului în documentul dvs.

{{% alert color="primary" %}}

Aplicarea opțiunii numai citire la documentul dvs. nu împiedică pe cineva să creeze o nouă copie a acestuia și să o salveze cu un alt nume.

{{% /alert %}}

Acest articol explică modul de realizare a unui document numai în citire.

## Faceți un Document numai în citire

Aspose.Words are clasa publică [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) care specifică setările de protecție la scriere pentru un document. Nu creați instanțe ale acestei clase direct.

Protecția la scriere arată dacă autorul a recomandat deschiderea unui document ca doar pentru citire și/sau solicitarea unei parole pentru a modifica documentul.

Aspose.Words vă permite să faceți un document numai în citire pentru a restricționa editarea utilizând proprietatea [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) și metoda [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

În Microsoft Word, puteți crea un document numai în citire într-un mod similar folosind ambele:

* "Deschideți Întotdeauna Numai În Citire" (Fișier Info Document Protejat)
* "Parola de modificat" (salvați ca instrumente pentru modelul de comandă )

{{% /alert %}}

{{% alert color="primary" %}}

Utilizatorii pot restricționa, de asemenea, editarea documentelor selectând [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) ca [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), dar aceasta este o altă caracteristică care oferă capacități de protecție mai avansate. Există o astfel de funcție în Microsoft Word, respectiv, este implementată în Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) va fi descris în detaliu într – unul dintre următoarele articole - "restricționați editarea documentelor".

{{% /alert %}}

Proprietatea [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) este securizată prin parolă, deci dacă nu setați o parolă înainte de a aplica proprietatea [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/), atunci alți utilizatori pot deschide pur și simplu documentul ca și cum ar fi neprotejat. Accesați setările de protecție a documentelor și setați o parolă de protecție la scriere prin metoda [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Rețineți că parola setată este doar o proprietate dintr-un document care poate fi eliminată dacă sunt accesate proprietățile documentului. În consecință, o astfel de parolă nu este o garanție a securității documentului.

{{% /alert %}}

Dacă trebuie să verificați dacă un document are o parolă de protecție la scriere care îl restricționează de la editare, puteți utiliza proprietatea [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

Următorul exemplu de cod arată cum se face un document numai în citire:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Eliminați Restricția Numai În Citire

Dacă nu doriți ca un utilizator să vă deschidă documentul ca doar pentru citire, puteți pur și simplu să setați proprietatea [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) la `False` sau să selectați [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) ca [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

Următorul exemplu de cod arată cum să eliminați accesul numai în citire pentru un document:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
