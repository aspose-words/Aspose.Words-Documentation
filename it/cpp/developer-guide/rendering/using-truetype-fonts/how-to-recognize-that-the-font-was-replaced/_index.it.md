---
title: Come riconoscere che il font è stato sostituito in C++
second_title: Aspose.Words per C++
articleTitle: Come riconoscere che il font è stato sostituito
linktitle: Come riconoscere che il font è stato sostituito
description: "Se non sei sicuro del motivo per cui il layout di un documento è cambiato o perché un determinato font non sembra come previsto, i messaggi di avviso di sostituzione del font possono essere d'aiuto."
type: docs
weight: 13
url: /it/cpp/how-to-recognize-that-the-font-was-replaced/
---

A volte, potrebbe non essere chiaro il motivo per cui il layout del documento è cambiato o perché alcuni font non sembrano come previsto. In questi casi, i messaggi di avviso di sostituzione dei caratteri implementati dall'interfaccia IWarningCallback vengono in soccorso. Hanno il tipo di avviso [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) e il formato di testo di descrizione standard, " Font '<OriginalFont>' non è stato trovato. Servendosi '<SubstitutionFont>' carattere invece. Motivo: <Reason>", con i seguenti motivi:

- "nome alternativo dal documento" – per la sostituzione con [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "sostituzione fontconfig" - per la sostituzione con la regola di configurazione del font
- "sostituzione tabella" - per la sostituzione per regola tabella
- "font info substitution" - per la sostituzione con la regola info font
- "default font substitution" - per la sostituzione secondo la regola di default del font
- "first available font" - per la sostituzione con first available font
