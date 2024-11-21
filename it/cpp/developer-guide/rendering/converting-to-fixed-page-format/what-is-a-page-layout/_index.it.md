---
title: Cos'è un layout di pagina in C++
second_title: Aspose.Words per C++
articleTitle: Cos'è un layout di pagina
linktitle: Cos'è un layout di pagina
description: "Scopriamo cos'è un layout di pagina. Un layout di pagina descrive la geometria del contenuto contenuto in un documento."
type: docs
weight: 5
url: /it/cpp/what-is-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Un **document page layout** è una struttura dati, che descrive dove si trova un particolare oggetto nelle pagine per tutti gli oggetti del documento. Inoltre, poiché gli oggetti hanno proprietà che influenzano le loro apparenze, come la dimensione del carattere, l'ombreggiatura o gli effetti di disegno, è necessario non solo sapere dove si trova l'oggetto, ma anche quale area della pagina occupa e se si applicherà a più pagine in modo che altri oggetti non si sovrappongano alla stessa area.

## A cosa serve un layout di pagina?

Aspose.Words implementa internamente la funzionalità di layout di pagina che consente di produrre tutti i formati di pagina fissi, come PDF, XPS e vari formati di immagine. Senza il layout di pagina, le informazioni memorizzate nel file di documento a pagina fissa non sarebbero disponibili e tutti questi formati non sarebbero supportati.

La relazione tra un documento e un layout di pagina è abbastanza semplice. Mentre un documento descrive il contenuto, il layout di pagina corrispondente descrive la geometria di tale contenuto. Si noti che un layout di pagina non può esistere senza un documento poiché non ci sarebbe contenuto per il calcolo della geometria, ma un documento può esistere senza un layout di pagina. Ad esempio, quando un documento DOCX viene convertito in un documento RTF, in genere non è necessario conoscere la geometria, poiché nessuno dei due formati lo memorizza.

## Vedi anche

* [Creazione di un layout di pagina](/words/cpp/creating-a-page-layout/)
* [Salvataggio di un documento in formato a pagina fissa](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Specificare le opzioni di layout](/words/cpp/specify-layout-options/)
