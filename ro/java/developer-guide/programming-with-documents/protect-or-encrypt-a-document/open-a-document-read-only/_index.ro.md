---
title: Deschiderea unui Document numai în citire în Java
second_title: Aspose.Words pentru Java
articleTitle: Deschiderea unui Document numai în citire
linktitle: Deschiderea unui Document numai în citire
description: "Faceți documentul numai în citire, astfel încât conținutul să poată fi copiat sau citit, dar nu modificat folosind Java."
type: docs
weight: 10
url: /ro/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Uneori, este posibil să aveți un document care necesită o recenzie, dar nu doriți ca recenzenții să vă modifice aleatoriu conținutul. Aspose.Words vă permite să faceți permisiunea documentului dvs. numai pentru citire, astfel încât conținutul să poată fi copiat sau citit, dar nu modificat. Acest lucru va împiedica eliminarea sau adăugarea conținutului în documentul dvs.

{{% alert color="primary" %}}

Aplicarea opțiunii numai citire la documentul dvs. nu împiedică pe cineva să creeze o nouă copie a acestuia și să o salveze cu un alt nume.

{{% /alert %}}

Acest articol explică modul de realizare a unui document numai în citire.

## Faceți un Document numai în citire

Aspose.Words are clasa publică [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) care specifică setările de protecție la scriere pentru un document. Nu creați instanțe ale acestei clase direct.

Protecția la scriere arată dacă autorul a recomandat deschiderea unui document ca doar pentru citire și/sau solicitarea unei parole pentru a modifica documentul.

Aspose.Words vă permite să faceți un document numai în citire pentru a restricționa editarea utilizând proprietatea [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) și metoda [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String).

{{% alert color="primary" %}}

În Microsoft Word, puteți crea un document numai în citire într-un mod similar folosind ambele:

* "Deschideți Întotdeauna Numai În Citire" (Fișier Info Document Protejat)
* "Parola de modificat" (salvați ca instrumente pentru modelul de comandă )

{{% /alert %}}

{{% alert color="primary" %}}

Utilizatorii pot restricționa, de asemenea, editarea documentelor selectând [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) ca **ReadOnly**, dar aceasta este o altă caracteristică care oferă capacități de protecție mai avansate. Există o astfel de funcție în Microsoft Word, respectiv, este implementată în Aspose.Words.

**ProtectionType**

{{% /alert %}}

Proprietatea **ReadOnlyRecommended** este securizată prin parolă, deci dacă nu setați o parolă înainte de a aplica proprietatea **ReadOnlyRecommended**, atunci alți utilizatori pot deschide pur și simplu documentul ca și cum ar fi neprotejat. Accesați setările de protecție a documentelor și setați o parolă de protecție la scriere prin metoda **SetPassword**.

{{% alert color="primary" %}}

Rețineți că parola setată este doar o proprietate dintr-un document care poate fi eliminată dacă sunt accesate proprietățile documentului. În consecință, o astfel de parolă nu este o garanție a securității documentului.

{{% /alert %}}

Dacă trebuie să verificați dacă un document are o parolă de protecție la scriere care îl restricționează de la editare, puteți utiliza proprietatea [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected).

Următorul exemplu de cod arată cum se face un document numai în citire:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Eliminați Restricția Numai În Citire

Dacă nu doriți ca un utilizator să vă deschidă documentul ca doar pentru citire, puteți pur și simplu să setați proprietatea **ReadOnlyRecommened** la *false* sau să selectați **ProtectionType** ca **NoProtection**.

Următorul exemplu de cod arată cum să eliminați accesul numai în citire pentru un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
