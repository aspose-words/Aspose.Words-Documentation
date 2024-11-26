---
title: Imprimarea unui document în C#
second_title: Aspose.Words pentru .NET
articleTitle: Tipărirea unui document programatic sau utilizând dialoguri
linktitle: Tipărirea unui document programatic sau utilizând dialoguri
description: "Imprimă un document pe o Server folosind XpsPrint necontrolat API sau printr-o imprimantă selectată cu Setări și ferestre de dialog Previzualizare a imprimării în C#."
type: docs
weight: 55
url: /ro/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

Acest articol descrie cum să imprimi un document de procesare de text dintr-o aplicație ASP.NET sau Windows folosind Aspose.Words și `XpsPrint` API. De asemenea demonstrează metodele de imprimare a unui document cu setările, previzualizarea imprimării și dialogurile de progres al imprimării, și explică cum se poate reduce timpul primei apeluri pentru imprimarea unui document.

## Imprimarea unui document pe un Server prin intermediul `XpsPrint` API

Această secţiune este destinată utilizatorilor care doresc să trimită un XPS document către imprimanta neconfigurată XpsPrint API dintr-o aplicaţie .NET folosind Aspose.Words.

### Limitările imprimării unui document în aplicațiile de tip ASP.NET sau Windows

Când dezvolți o aplicație .NET care produce o ieșire imprimată tipărită, poți folosi de obicei clase furnizate în spațiul de nume *System.Drawing.Printing*, sau clasele Windows Presentation Foundation (WPF). Însă, dacă aplicația este un ASP.NET sau Windows Service application, opțiunile de imprimare sunt limitate, deoarece Microsoft descurajează folosirea acestui abordare. Clasele de imprimare .NET Framework nu sunt suportate de aplicațiile de servicii. Acesta include ASP pagini, care în general rulează în contextul serviciului de server.

Clasele din spațiul de nume *System.Drawing.Printing* nu sunt acceptate pentru utilizarea în cadrul unui serviciu Windows sau o aplicație sau un serviciu ASP.NET, iar încercarea de a le folosi ar putea duce la performanțe scăzute ale serviciului, excepții de timp de execuție și alte probleme. Utilizarea WPF pentru a construi Windows servicii nu este, de asemenea, suportată. Deoarece WPF este o tehnologie de prezentare, Windows serviciul necesită permisiuni adecvate pentru a efectua operațiuni vizuale care implică interacțiunea utilizatorului. Dacă serviciul Windows nu are astfel de permisiuni, este posibil să apară rezultate neașteptate.

Obiectul Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) oferă o familie de [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) metode pentru imprimarea documentelor. "Aceste metode utilizează clasele de imprimare .NET definite în spațiul numelui *System.Drawing.Printing*." Sunt mulți Aspose.Words clienți care le folosesc cu succes pentru imprimare în aplicațiile lor server-side. Însă acest articol demonstrează o metodă alternativă pentru imprimare care este conformă cu recomandările Microsoft."

### Metode pentru a imprima un document pe o Server

Modul corect de a imprima documente potrivit cu Microsoft este prin utilizarea XpsPrint ne-managed API. Acest API este disponibil pe Windows 7, Windows Server 2008 R2, și pe Windows Vista cu condiția ca Actualizarea platformei pentru Windows Vista să fie instalată.

Deoarece Aspose.Words poate converti cu ușurință orice document la XPS, aveți nevoie doar să scrieți codul care transmite un document XPS către `XpsPrint` API. Singura problemă este că `XpsPrint` API nu e gestionat și necesită o anumită cunoaștere a tehnologiei Platform Invoke.

Pentru a imprima un document, Aspose.Words oferă o **XpsPrintHelper** clasă care conține o metodă simplă de imprimare, unde trebuie doar să specificați parametrii următori (vezi mai multe detalii în articolul [Print Document via XPS API](/words/net/missing-features-in-openxml/)):

- Document pe care doriţi să-l imprimaţi.
- Numele imprimantei.
- Numele jobului (opțional).
- Valoare booleană care specifică dacă programul trebuie să aștepte până când sarcina de imprimare este finalizată. Prin urmare, sistemul va verifica dacă documentul a fost imprimat cu succes sau va reveni imediat după ce trimite comanda de imprimare. În ultimul caz, este imposibil de identificat dacă sarcina de imprimare a fost un succes.

Când întâmpină orice probleme la trimiterea sau imprimarea documentului, metoda va arunca o excepție.

Exemplul de cod de mai jos arată cum să imprimi un document folosind clasa **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Când rulezi proiectul, acesta imprimă un document de probă pe imprimanta specificată și deschide o fereastră de consolă pentru afișarea rezultatelor imprimării. Când sarcina de imprimare este finalizată sau erorile, sistemul va afișa un mesaj de succes sau textul excepției aruncate.

Puteți seta și câteva setări de imprimare folosind clasa [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/). De exemplu, în Microsoft Word sunt definite suporturi de imprimantă pentru fiecare secțiune și sunt specifice imprimantei. Prin urmare, poţi schimba programatic aceste valori pentru fiecare secţiune utilizând proprietăţile [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) şi [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

În unele cazuri, s-ar putea să aveți nevoie să utilizați acest exemplu fără Aspose.Words. De exemplu, atunci când deja aveți un XPS document și doar doriți să-l imprimați de la o ASP.NET sau Windows aplicație de serviciu. Atunci poți pur și simplu șterge metoda `Print`.

{{% /alert %}}

Există două suprascrieri ale metodei **XpsPrintHelper**.**Print**. Prima suprasarcină primește un [Document](https://reference.aspose.com/words/net/aspose.words/document/) obiect și îl salvează într-un `MemoryStream` în formatul XPS. A doua suprascriere acceptă un `Stream` obiect. Stream-ul trebuie să conțină un document în format XPS.

Puteți descărca exemplele de încărcare a metodei de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Puteți descărca fișierul de exemplu al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Imprimarea unui document cu setări și ferestre de dialog Previzualizare imprimare

Când lucrezi cu documente, este adesea necesar să le tipărești pe o imprimantă selectată. Este util să se utilizeze o casetă de dialog "previzualizare imprimare" pentru a verifica vizual cum va apărea documentul imprimat și pentru a alege opțiunile corespunzătoare.

The Aspose.Words nu are niciun dialog sau formulare încorporate, dar implementează clasa [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/), bazată pe clasa .NET **PrintDocument**. O instanță a acestei clase poate fi transmisă la **PrintPreviewDialog** formular pentru a previzualiza și imprima documentul. De asemenea, clasa [PrintPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) definește ieșirea de transmisă într-o imprimantă.

Exemplul următor arată cum să folosiți aceste clase pentru a imprima un document de la Aspose.Words prin intermediul dialogurilor Print Preview și Settings":

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

Proprietatea **AllowSomePages** vă permite să selectați un interval de pagini pentru imprimare dacă valoarea acestei proprietăți este adevărată. În mod implicit, toate paginile din interval sunt selectate pentru imprimare.

{{% /alert %}}

Pentru a optimiza aspectul setărilor de dialog Previzualizare imprimare, specificați proprietățile clasei **PrintPreviewDialog**.

## Imprimarea mai multor pagini pe o singură foaie

Este întotdeauna benefic să ai mai multă flexibilitate când se tipărește documentele. Utilizând .NET și Aspose.Words puteți regla cu ușurință operațiunea de imprimare pentru a implementa logica dumneavoastră personalizată prin definirea modului în care documentul va apărea pe pagina imprimată.

Ca și în secțiunea anterioară," Aspose.Words "implementează clasa" **MultipagePrintDocument** ", care se bazează pe clasa" ".NET" **PrintDocument** ". Aceasta înseamnă că infrastructura existentă de imprimare .NET poate fi utilizată într-un fel astfel încât dialogurile de imprimare și previzualizare a imprimării ar permite vizualizarea documentului înainte de imprimare. Clasa "**MultipagePrintDocument**" oferă posibilitatea de a imprima mai multe pagini pe o singură foaie de hârtie.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Rezultatul acestui exemplu de cod este prezentat mai jos:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](print-a-document-programmatically-or-using-dialogs-1.png)

## Ascunderea ferestrei de progres al imprimării atunci când imprimați un document

Diалогul de progres al imprimării nu apare atunci când se imprimă un document prin metoda [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Totuși, acest dialog apare în timpul imprimării cu o altă metodă [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/). În acest caz, pentru a preveni apariția ferestrei de imprimare, ar trebui să specifici setările valabile ale imprimantei și un controlor de imprimare standard în această metodă, așa cum se arată în exemplul de mai jos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Cum să reduci timpul de primă apelare la imprimarea unui document?

Aspose.Words citește și cache-uiește unele câmpuri din **PrinterSettings** pentru a reduce timpul de imprimare. Puteți obține acest lucru prin apelarea metodei [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Această metodă este apelată înainte de a începe imprimarea dacă nu a fost executată anterior. Notă că timpul total de imprimare cu și fără apelarea metodei este aproape același. Scopul utilizării acestei metode este de a reduce timpul primei apelări a metodei [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Exemplul următor arată cum se folosește această metodă:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Vezi și

- [Platform Update for Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
