---
title: Conversia între unități de măsură în C#
second_title: Aspose.Words pentru .NET
articleTitle: Converti între unități de măsurare
linktitle: Converti între unități de măsurare
description: "Aspose.Words pentru .NET vă poate ajuta cu modul în care să convertiți între unități de măsurare, de exemplu, țoli la puncte și puncte la țoli, pixeli la puncte, puncte la pixeli folosind C#."
type: docs
weight: 20
url: /ro/net/convert-between-measurement-units/
---

Majoritatea proprietăților obiectelor furnizate în Aspose.Words API care reprezintă unele măsurători, cum ar fi lățimea sau înălțimea, marginile și diferitele distanțe, acceptă valori în puncte, unde 1 inch este egal cu 72 de puncte. Uneori acest lucru nu este convenabil și punctele trebuie convertite în alte unități.

Aspose.Words oferă clasa [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) care oferă funcții auxiliare pentru a converti între diferite unități de măsură. Îi permite să convertească:

"- inch, pixeli și milimetri la puncte"
- puncte pentru inch și pixeli
"- pixeli de la o rezoluție la alta"

Transformarea pixelilor în puncte și viceversa se poate efectua la rezoluții de 96 dpi (puncte pe țoli) sau la o rezoluție specificată dpi.

Clasa "**ConvertUtil**" este deosebit de utilă atunci când se stabilesc diverse proprietăți ale paginii pentru că, spre exemplu, închiile reprezintă mai des utilizate unități de măsură decât punctele.

Exemplul de cod următor arată cum să specificați proprietățile paginii în țoli":

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
