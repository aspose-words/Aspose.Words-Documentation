---
title: Requisiti di sistema
second_title: Aspose.Words per Python via .NET
articleTitle: Requisiti di sistema
linktitle: Requisiti di sistema
description: "Prima di iniziare a lavorare con Aspose.Words per Python via .NET, assicurati di soddisfare i requisiti del sistema operativo, della piattaforma e dell'ambiente in modo che le attività sui tuoi dispositivi siano adeguatamente contabilizzate."
type: docs
weight: 50
url: /it/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Aspose.Words for Python via .NET non richiede l'installazione di prodotti di terze parti come Microsoft Word. Aspose.Words stesso è un motore per la creazione, la modifica, la conversione e il rendering di documenti in vari formati, inclusi i formati di documenti Microsoft Word.

## Sistemi operativi supportati

Aspose.Words per Python via .NET supporta qualsiasi sistema operativo a 64 o 32 bit su cui è installato Python 3.5 o versione successiva.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Sistema operativo</td>
        <td style="font-weight: bold; width:400px">Versioni</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 Server (x64, x86)</li>
            <li>Windows 2012R2Server (x64, x86)</li>
            <li>Windows 2016 Server (x64, x86)</li>
            <li>Windows 2019 Server (x64, x86)</li>
            <li>Windows XP (x64, x86)</li>
            <li>Windows Vista (x64, x86)</li>
            <li>Windows7 (x64, x86)</li>
            <li>Windows8, 8.1 (x64, x86)</li>
            <li>Windows10 (x64, x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>Mac OS</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 o successivo</li>
            <li>macOS-arm64: 11.0 o successivo</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>e altri</li>
        </ul></td>
    </tr>
</table>

## Requisiti di sistema per le piattaforme Linux e macOS di destinazione

- Librerie runtime GCC-6 (o successive).

- Dipendenze di .NET Core Runtime. L'installazione di .NET Core Runtime stessa è necessaria per `NOT`.

- Per Python 3.5-3.7: è necessaria la build `pymalloc` di Python. L'opzione di compilazione `--with-pymalloc` Python è abilitata per impostazione predefinita. In genere, la build `pymalloc` di Python è contrassegnata con il suffisso `m` nel nome del file.

- Libreria Python condivisa `libpython`. L'opzione di compilazione `--enable-shared` Python è disabilitata per impostazione predefinita, alcune distribuzioni Python non contengono la libreria condivisa `libpython`. Per alcune piattaforme Linux, la libreria condivisa `libpython` può essere installata utilizzando il gestore pacchetti, ad esempio: `sudo apt-get install libpython3.7`. Il problema comune è che la libreria `libpython` è installata in una posizione diversa rispetto alla posizione di sistema standard per le librerie condivise. Il problema può essere risolto utilizzando le opzioni di compilazione Python per impostare percorsi di libreria alternativi durante la compilazione di Python oppure risolto creando un collegamento simbolico al file di libreria `libpython` nel percorso standard del sistema per le librerie condivise. In genere, il nome del file della libreria condivisa `libpython` è `libpythonX.Ym.so.1.0` per Python 3.5-3.7 o `libpythonX.Y.so.1.0` per Python 3.8 o successivo (ad esempio: libpython3.7m.so.1.0, libpython3.9.so.1.0)
