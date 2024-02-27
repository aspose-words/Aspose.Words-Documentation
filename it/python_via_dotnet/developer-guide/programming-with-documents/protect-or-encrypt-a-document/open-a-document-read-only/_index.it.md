---
title: Apri un documento di sola lettura in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Apri un documento di sola lettura
linktitle: Apri un documento di sola lettura
description: "Rendi il tuo documento di sola lettura in modo che il contenuto possa essere copiato o letto, ma non modificato utilizzando Python."
type: docs
weight: 10
url: /it/python-net/open-a-document-read-only/
---

A volte, potresti avere un documento che necessita di una revisione, ma non vuoi che i revisori modifichino i tuoi contenuti in modo casuale. Aspose.Words ti consente di rendere l'autorizzazione del tuo documento di sola lettura in modo che il contenuto possa essere copiato o letto, ma non modificato. Ciò impedirà che il contenuto venga rimosso o aggiunto al documento.

{{% alert color="primary" %}}

Applicare l'opzione di sola lettura al tuo documento non impedisce a qualcuno di crearne una nuova copia e salvarla con un altro nome.

{{% /alert %}}

Questo articolo spiega come rendere un documento di sola lettura.

## Rendere un documento di sola lettura

Aspose.Words ha la classe pubblica [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) che specifica le impostazioni di protezione da scrittura per un documento. Non crei direttamente istanze di questa classe.

La protezione da scrittura mostra se l'autore ha consigliato di aprire un documento in sola lettura e/o di richiedere una password per modificare il documento.

Aspose.Words consente di rendere un documento di sola lettura per limitare la modifica utilizzando la proprietà [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) e il metodo [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

In Microsoft Word, puoi creare un documento di sola lettura in modo simile utilizzando entrambi:

* "Apri sempre in sola lettura" (File → Informazioni → Proteggi documento)
* "Password da modificare" (Salva con nome → Strumenti → Opzioni generali → Password)

{{% /alert %}}

{{% alert color="primary" %}}

Gli utenti possono anche limitare la modifica dei documenti selezionando [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) come [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), ma questa è un'altra funzionalità che fornisce funzionalità di protezione più avanzate. Esiste una tale funzione in Microsoft Word, rispettivamente, è implementata in Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) sarà descritto in dettaglio in uno dei seguenti articoli – "Limita la modifica dei documenti".

{{% /alert %}}

La proprietà [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) è protetta da password, quindi se non imposti una password prima di applicare la proprietà [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/), gli altri utenti potranno semplicemente aprire il documento come se non fosse protetto. Si accede alle impostazioni di protezione del documento e si imposta una password di protezione da scrittura tramite il metodo [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Tieni presente che la password impostata è semplicemente una proprietà in un documento che può essere rimossa se si accede alle proprietà del documento. Di conseguenza, tale password non è una garanzia della sicurezza del documento.

{{% /alert %}}

Se devi verificare se un documento ha una password di protezione da scrittura che ne impedisce la modifica, puoi utilizzare la proprietà [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

L'esempio di codice seguente mostra come rendere un documento di sola lettura:

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

## Rimuovi la restrizione di sola lettura

Se non desideri che un utente apra il tuo documento in sola lettura, puoi semplicemente impostare la proprietà [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) su `False` o selezionare [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) come [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

L'esempio di codice seguente mostra come rimuovere l'accesso di sola lettura per un documento:

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
