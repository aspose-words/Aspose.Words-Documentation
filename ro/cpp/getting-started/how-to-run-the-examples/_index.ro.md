---
title: Cum să rulați exemplele
second_title: Aspose.Words pentru C++
articleTitle: Cum să rulați exemplele
linktitle: Cum să rulați exemplele
description: "Descărcare Aspose.Words pentru C++ exemple din depozitul nostru GitHub și aflați cum să le rulați pentru a vă familiariza cu posibilitățile și caracteristicile Aspose.Words."
type: docs
weight: 110
url: /ro/cpp/how-to-run-the-examples/
---

Pentru a deveni mai familiarizați cu posibilitățile și caracteristicile Aspose.Words, oferim exemple care pot fi descărcate din depozitul nostru GitHub, rulați și aflați în detaliu.

În acest articol, puteți găsi cerințele de sistem, precum și informații despre cum să rulați exemplele.

## Windows cu Nuget pachet

### Cerințe și condiții prealabile Software

Asigurați-vă că îndepliniți următoarele cerințe înainte de a descărca și rula exemplele:

1. Visual Studio Cod, Visual Studio 2022.
2. Instalat NuGet Manager de pachete și cea mai recentă versiune NuGet API Pentru Visual Studio. (opțional)
3. Opțiunea **nuget.org** selectată în caseta de dialog" Opțiuni Instrumente " sub "NuGet Manager pachete surse pachete".
4. O conexiune activă la Internet pentru a utiliza funcția de restaurare automată a pachetelor `NuGet` din proiectul Exemple. Dacă nu aveți o conexiune activă la internet pe mașina în care urmează să fie executate exemplele, urmați instrucțiunile din Windows cu pachetul Cmake.

### Descărcați și rulați exemplele

Toate Aspose.Words pentru C++ exemplele sunt găzduite pe [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Puteți fie să clonați depozitul folosind clientul dvs. preferat GitHub, fie să descărcați [fișierul ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

După obținerea unei copii a depozitului, este posibil să găsiți că:

- Toate exemplele sunt localizate în folderul **Examples**.
- Există Visual Studio fișiere soluție pentru C++ create în Visual Studio 2022.

Pentru a rula exemplele, deschideți fișierul soluție în Visual Studio și construiți proiectul:

- Pentru **API Reference** Exemple, structura se bazează pe nume de clase, pentru **Docs** Exemple se bazează în mare parte pe [Dezvoltator Guiled](/words/cpp/developer-guide/) secțiunea Documentație.
- La prima rulare, dependențele vor fi descărcate automat prin NuGet.
- Folderul **Data** din folderul rădăcină al **Examples** conține fișiere de intrare care au fost utilizate în exemple.
- Toate exemplele pot fi executate ca teste unitare.

## Windows cu CMake pachet

### Cerințe și condiții prealabile Software

Asigurați-vă că îndepliniți următoarele cerințe înainte de a descărca și rula exemplele:

1. Visual Studio Cod, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Descărcați cel mai recent pachet CMake din https://downloads.aspose.com/words/cpp

### Descărcați și rulați exemplele

Toate Aspose.Words pentru C++ exemplele sunt găzduite pe [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Puteți fie să clonați depozitul folosind clientul dvs. preferat GitHub, fie să descărcați [fișierul ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Plasați folderele `Aspose.Words.Cpp` și `CodePorting.Native.Cs2Cpp_*` în rădăcina unei copii a depozitului.

Toate exemplele sunt localizate în folderul **Examples**.

Pentru a rula exemplele, executați următoarele comenzi din rădăcina unei copii a depozitului:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Soluția pentru Visual Studio va fi generată în `Examples\DocsExamples\build`

Pentru a rula exemplele, deschideți fișierul soluție în Visual Studio și construiți proiectul:

- Pentru **API Reference** Exemple, structura se bazează pe nume de clase, pentru **Docs** Exemple se bazează în mare parte pe [Dezvoltator Guiled](/words/cpp/developer-guide/) secțiunea Documentație.
- Folderul **Data** din folderul rădăcină al **Examples** conține fișiere de intrare care au fost utilizate în exemple.
- Toate exemplele pot fi executate ca teste unitare.

## Linux

### Cerințe și condiții prealabile Software

Asigurați-vă că îndepliniți următoarele cerințe înainte de a descărca și rula exemplele:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Descărcați cel mai recent pachet CMake din https://downloads.aspose.com/words/cpp

### Descărcați și rulați exemplele

Toate Aspose.Words pentru C++ exemplele sunt găzduite pe [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Puteți fie să clonați depozitul folosind clientul dvs. preferat GitHub, fie să descărcați [fișierul ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Plasați folderele `Aspose.Words.Cpp` și `CodePorting.Native.Cs2Cpp_*` în rădăcina unei copii a depozitului.

Toate exemplele sunt localizate în folderul **Examples**.

Pentru a rula exemplele, executați următoarele comenzi din rădăcina unei copii a depozitului:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Pentru **API Reference** Exemple, structura se bazează pe nume de clase, pentru **Docs** Exemple se bazează în mare parte pe [Dezvoltator Guiled](/words/cpp/developer-guide/) secțiunea Documentație.
- Folderul **Data** din folderul rădăcină al **Examples** conține fișiere de intrare care au fost utilizate în exemple.
- Toate exemplele pot fi executate ca teste unitare.

{{% alert color="primary" %}}

Vă rugăm să nu ezitați să contactați folosind [Aspose.Words Forumul Familiei De Produse](https://forum.aspose.com/c/words/8) dacă aveți probleme la configurarea sau rularea exemplelor.

{{% /alert %}}

## Contribuie la îmbunătățirea exemplelor

Dacă doriți să adăugați sau să îmbunătățiți un exemplu, vă încurajăm să contribuiți la proiect. Toate exemplele și proiectele de prezentare din acest depozit sunt open source și pot fi utilizate în mod liber în aplicațiile dvs.

Puteți bifurca depozitul, puteți edita codul sursă și puteți crea o cerere de extragere pentru a contribui. Vom examina modificările și le vom include în depozit dacă ni se va părea util.

## Vezi Și

- [Detalii despre cum se instalează NuGet Manager de pachete](https://docs.microsoft.com/nuget/guides/install-nuget)
