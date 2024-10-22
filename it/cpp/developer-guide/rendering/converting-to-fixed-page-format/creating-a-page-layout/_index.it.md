---
title: Creare un layout di pagina in C++
second_title: Aspose.Words per C++
articleTitle: Creazione di un layout di pagina
linktitle: Creazione di un layout di pagina
description: "La creazione di un layout di pagina può essere una procedura costosa. Aspose.Words creerà un layout di pagina solo quando è necessario: per eseguire il rendering delle pagine del documento, per ottenere un valore di campo, per esportare un documento in HTML, ecc."
type: docs
weight: 10
url: /it/cpp/creating-a-page-layout/
---

La creazione di un layout di pagina può essere una procedura costosa, sia in termini di velocità che di memoria. Ciò è dovuto a diversi motivi:

- Il documento può avere una grande quantità di contenuti, che potrebbe essere necessario visualizzare su migliaia di pagine. La geometria di ogni oggetto in ogni pagina dovrebbe essere descritta, consumando risorse di memoria.
- Il documento può avere molte regole, ponendo vincoli sulla geometria. Può essere impiegato un tempo di calcolo considerevole, assicurando che ogni vincolo sia soddisfatto.
- Alcune funzionalità del documento, ad esempio il campo `NUMPAGES`, creano dipendenze ricorsive per i valori delle proprietà future, che non sono disponibili al momento del calcolo. Ciò porta a calcoli ripetitivi e si somma nel tempo di calcolo.

Per i motivi sopra indicati, Aspose.Words creerà un layout di pagina solo quando è necessario. Un motivo tipico per questo sarebbe una richiesta di rendere le pagine del documento o di ottenere un valore di campo che dipende dalle informazioni disponibili nel layout di pagina. Una ragione meno ovvia potrebbe essere l'esportazione di un documento in HTML. Anche se HTML non è un formato a pagina fissa e non descrive la geometria degli oggetti di contenuto, supporta comunque le immagini. Tali immagini possono essere sotto forma di forme create in Microsoft Word con un testo al loro interno. Ad esempio, un grafico con le etichette degli assi può essere esportato in HTML come immagine, ma prima che ciò possa essere fatto Aspose.Words deve eseguire il rendering di quell'immagine e quindi deve sapere dove visualizzare l'etichetta. Vedere l'esempio grafico qui sotto:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Proprietà non geometriche

Oltre a gestire le informazioni geometriche, un layout di pagina è anche responsabile del calcolo dei colori e degli stili di bordo. In Microsoft Word, il colore del testo può essere specificato come automatico, il che implica che la selezione del colore deve essere basata sul colore di ombreggiatura della cella o del paragrafo o sul colore della pagina, in cui viene visualizzato il testo.

Il layout di pagina calcola dove apparirà il testo e quale contenuto verrà visualizzato dietro di esso, consentendo il calcolo del colore. Ci sono altri calcoli specifici eseguiti dal layout di pagina. Ad esempio, un bordo orizzontale in una tabella dipende dal fatto che una riga di tabella sia l'ultima in una colonna di testo e se sia suddivisa tra colonne. Se una riga viene visualizzata per ultima in una colonna, viene utilizzato il bordo inferiore anziché orizzontale.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

In Aspose.Words, un utente può richiedere se creare un nuovo layout di pagina o aggiornarne uno esistente. Entrambi possono essere eseguiti con il metodo [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), fornito dalla classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Se un layout di pagina non esiste, ma è necessario (ad esempio, quando il documento viene esportato in un formato a pagina fissa), Aspose.Words chiamerà automaticamente questo metodo. Tuttavia, se un layout di pagina esiste già, Aspose.Words utilizzerà quello esistente, al fine di evitare di consumare le risorse necessarie per aggiornarlo. In questo caso, l'utente deve chiamare il metodo `UpdatePageLayout`, al fine di garantire che il layout di pagina sia aggiornato con il modello di documento.

## Struttura dinamica

Il processo di creazione del layout di pagina comprende i seguenti passaggi:

- *Conversion* – enumerazione del contenuto del modello del documento e preparazione degli oggetti di layout corrispondenti.
- *Build* – disposizione degli oggetti di layout per rappresentare il contenuto del documento sulle pagine.
- *Reflow* – aggiornamento della disposizione degli oggetti per soddisfare i vincoli geometrici.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* – un passaggio obbligatorio se il documento contiene forme con contenuto di testo nidificato.

Si noti che il layout di pagina è una struttura dinamica, che può essere parzialmente ricostruita. Ciò è particolarmente necessario quando è impossibile calcolare i valori dei campi senza ricostruire la struttura del layout del documento. Il campo può fare riferimento alla posizione di un oggetto in una pagina e, allo stesso tempo, il valore del campo stesso viene visualizzato anche nella pagina, influenzando la posizione dell'oggetto di riferimento. Non è possibile creare un layout di pagina in un colpo solo, poiché i valori dei campi potrebbero non essere ancora disponibili al momento del posizionamento su una pagina.

Si consideri lo scenario tipico quando il campo `NUMPAGES` appare nel piè di pagina della prima pagina del documento. Il valore di questo campo è il numero totale di pagine. Per posizionare il campo su una pagina, il suo valore dovrebbe essere noto. Se solo la prima pagina è attualmente in costruzione, il numero totale di pagine non è ancora noto. In questo caso, il layout di pagina deve utilizzare il valore predefinito e successivamente tornare a quel campo e modificarne il valore in base ai calcoli effettivi. Tuttavia, la modifica del valore del campo può influire sul contenuto di altri documenti in una pagina e, in ultima analisi, causare l'aggiunta di una nuova pagina o la rimozione di una pagina esistente, rendendo così obsoleto il valore calcolato. Questo problema può essere risolto rendendo possibile aggiornare il layout di pagina esistente.

Quando si crea un layout, è anche possibile impostare le proprietà [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) che influenzano l'output del documento sulle pagine.