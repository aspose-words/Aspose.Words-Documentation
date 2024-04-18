---
title: Системни изисквания
second_title: Aspose.Words вместо Python via .NET
articleTitle: Системни изисквания
linktitle: Системни изисквания
description: "Преди да започнете да работите с Aspose.Words вместо Python via .NET, гарантира, че отговаряте на изискванията на операционната система, платформата и околната среда, така че дейностите на вашите устройства да бъдат правилно отчетени."
type: docs
weight: 50
url: /bg/python-net/system-requirements/
---

Aspose.Words вместо Python via .NET не изисква продукт на трета страна като Microsoft Word да бъде инсталиран. Aspose.Words сам по себе си е двигател за създаване, промяна, преобразуване и предаване на документи в различни формати, включително Microsoft Word формат на документите.

## Поддържани операционни системи

Aspose.Words вместо Python via .NET поддържа всяка 64-bit или 32-bit операционна система, където Python 3.5 или по- късно се инсталира.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Операционна система</td>
        <td style="font-weight: bold; width:400px">Версия</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul></ul></td>
            <li>Windows 2003 г. Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 г. Server (x64, x86)</li>
            <li>Windows 2012 г. R2 Server (x64, x86)</li>
            <li>Windows 2016 г. Server (x64, x86)</li>
            <li>Windows 2019 Server (x64, x86)</li>
            <li>Windows XP (x64, x86)</li>
            <li>Windows Vista (x64, x86)</li>
            <li>Windows 7 (x64, x86)</li>
            <li>Windows 8, 8.1 (x64, x86)</li>
            <li>Windows 10 (x64, x86)</li>
        
    </tr>
    <tr>
        <td>macOS</td>
        <td><ul></ul></td>
            <li>macOS-x86_64: 10.14 или по-късно</li>
            <li>macOS-arm64: 11.0 или по-късно</li>
        
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul></ul></td>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>и други</li>
        
    </tr>
</table>

## Системни изисквания към целта Linux и макос платформи

- GCC-6 библиотеки (или по-късно).

- Зависими от .NET Core Runtime. Инсталиране .NET Core Runtime Самият той е `NOT` Изисква се.

- За Python 3, 5- 3, 7: `pymalloc` на Python е необходимо. На `--with-pymalloc` Python опцията за изграждане е активирана по подразбиране. Обикновено, `pymalloc` на Python е маркиран с `m` Наставка във файла.

- `libpython` Споделяне Python библиотеката. На `--enable-shared` Python опцията за изграждане е изключена по подразбиране, някои Python дистрибуциите не съдържат `libpython` обща библиотека. За някои Linux платформи, `libpython` споделена библиотека може да бъде инсталирана с помощта на мениджъра на пакети, например: `sudo apt-get install libpython3.7`. Общият въпрос е, че `libpython` библиотеката е инсталирана на различно място от стандартното местоположение на системата за споделени библиотеки. Въпросът може да се определи чрез използване на Python изграждане на опции за задаване на алтернативни библиотечни пътища при съставянето Python, или фиксирани чрез създаване на символична връзка към `libpython` библиотечен файл в системата стандартно местоположение за споделени библиотеки. Обикновено, `libpython` името на споделената библиотека `libpythonX.Ym.so.1.0` вместо Python 3, 5- 3, 7 или `libpythonX.Y.so.1.0` вместо Python 3, 8 или по-късно (например: libpython3.7m.so.1.0, libpython3.so.1.0)
