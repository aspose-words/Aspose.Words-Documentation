---
title: Deschide un Document doar pentru citire în C#
second_title: Aspose.Words pentru .NET
articleTitle: Deschide documentul ca citire doar
linktitle: Deschide documentul ca citire doar
description: "Fă-ți documentul de doar citire astfel încât conținutul să poată fi copiat sau citit, dar nu modificat folosind C#."
type: docs
weight: 10
url: /ro/net/open-a-document-read-only/
---

Uneori, s-ar putea să ai un document care necesită o revizuire dar nu vrei ca revisorii să modifice în mod aleatoriu conținutul tău. Aspose.Words îți permite să faci permisiunea documentului doar pentru citit, astfel încât conținutul poate fi copiat sau citit, dar nu modificat. Aceasta va împiedica conținutul să fie eliminat sau adăugat la documentul dumneavoastră.

{{% alert color="primary" %}}

Aplicarea opțiunii de citire exclusivă asupra documentului tău nu împiedică pe cineva să creeze o copie nouă și să o salveze cu alt nume.

{{% /alert %}}

Acest articol explică cum să setăm un document doar pentru citire.

## Face un document doar pentru citire

Aspose.Words are clasa publică [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) care specifică setările de protecție la scriere pentru un document. Nu creezi direct instanțe ale acestei clase.

Protejarea la scriere arată dacă autorul recomandă deschiderea unui document ca citire doar și/sau necesită o parolă pentru a modifica documentul.

Aspose.Words vă permite să faceți un document doar citire pentru a restricționa editarea folosind proprietatea [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) și metoda [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

În Microsoft Word puteți crea un document doar pentru citire în mod similar folosind ambele:

* "Always Open Read-Only" (Fișier → Informații → Protejați documentul)
* Parola pentru modificare " (Salvați ca → Instrumente → Opțiuni generale → Parola)

{{% /alert %}}

{{% alert color="primary" %}}

Utilizatorii pot, de asemenea, să restricționeze editarea documentelor prin selectarea [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) ca **ReadOnly**, dar aceasta este o altă caracteristică care oferă capacități de protecție mai avansate. Există o astfel de funcție în Microsoft Word, respectiv, este implementată în Aspose.Words.

"**ProtectionType** va fi descrisă în detaliu într-unul dintre articolele următoare – "Restricție la editarea documentului".

{{% /alert %}}

Proprietatea **ReadOnlyRecommended** este securizată cu parolă, deci dacă nu setaţi o parolă înainte de aplicarea proprietăţii **ReadOnlyRecommended**, atunci alţi utilizatori se pot deschide pur şi simplu documentul ca şi cum ar fi fost neprotejat. Accesați setările de protecție a documentului și setați o parolă de protecție la scriere prin metoda **SetPassword**.

{{% alert color="primary" %}}

Notă că parola setată este doar o proprietate într-un document care poate fi eliminată dacă sunt accesate proprietățile documentului. Prin urmare, un astfel de parola nu este o garanție pentru securitatea documentului.

{{% /alert %}}

Dacă ai nevoie să verifici dacă un document are o parolă de protecție pentru scriere care îl restricționează din editare, poți folosi proprietatea [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/).

Exemplul următor de cod arată cum să faci un document doar pentru citire:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Elimină restricția Doar citire

Dacă nu vrei să deschidă un utilizator documentul tău ca doar pentru citire, poți seta pur și simplu proprietatea **ReadOnlyRecommened** la *false* sau selecționa **ProtectionType** ca **NoProtection**.

Exemplul de cod următor arată cum să elimini accesul doar pentru citire pentru un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
