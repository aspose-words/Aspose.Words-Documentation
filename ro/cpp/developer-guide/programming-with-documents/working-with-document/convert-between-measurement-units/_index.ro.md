---
title: Conversia între unitățile de măsură în C++
second_title: Aspose.Words pentru C++
articleTitle: Conversia Între Unitățile De Măsură
linktitle: Conversia Între Unitățile De Măsură
description: "Aspose.Words pentru C++ vă poate ajuta cu modul de a converti între unități de măsură, de exemplu, inci în puncte și puncte în inci, pixeli în puncte, puncte în pixeli."
type: docs
weight: 20
url: /ro/cpp/convert-between-measurement-units/
---

Majoritatea proprietăților obiectului furnizate în Aspose.Words API care reprezintă unele măsurători, cum ar fi lățimea sau înălțimea, marginile și diferite distanțe, acceptă valori în puncte, unde 1 inch este egal cu 72 puncte. Uneori acest lucru nu este convenabil și punctele trebuie convertite în alte unități.

Aspose.Words oferă clasa [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) care oferă funcții de ajutor pentru a converti între diferite unități de măsură. Permite conversia inci, pixeli și milimetri în puncte, puncte în inci și pixeli și conversia pixelilor de la o rezoluție la alta.Conversia pixelilor în puncte și invers poate fi efectuată la rezoluții 96 dpi (puncte pe inch) sau la rezoluția dpi specificată.

Clasa **ConvertUtil** este utilă în special atunci când setați diferite proprietăți ale paginii, deoarece, de exemplu, inci sunt unități de măsură mai comune decât puncte.

Următorul exemplu de cod arată cum să specificați proprietățile paginii în inci:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

