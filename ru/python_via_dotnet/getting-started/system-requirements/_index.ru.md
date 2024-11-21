---
title: Системные требования
second_title: Aspose.Words для Python via .NET
articleTitle: Системные требования
linktitle: Системные требования
description: "Прежде чем начать работать с Aspose.Words для Python via .NET, Убедитесь, что вы соответствуете требованиям операционной системы, платформы и окружающей среды, чтобы действия на ваших устройствах были должным образом учтены."
type: docs
weight: 50
url: /ru/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Aspose.Words для Python via .NET не требует сторонних продуктов, таких как Microsoft Word для установки. Aspose.Words сам по себе является двигателем для создания, изменения, преобразования и рендеринга документов в различных форматах, в том числе Microsoft Word Форматы документов.

## Поддерживаемые операционные системы

Aspose.Words для Python via .NET поддерживает любую 64-разрядную или 32-разрядную операционную систему, Python 3.5 или более поздней версии.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Операционная система</td>
        <td style="font-weight: bold; width:400px">Версии</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul></ul></td>
            <li>Windows 2003 год Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 год Server (x64, x86)</li>
            <li>Windows 2012 год R2 Server (x64, x86)</li>
            <li>Windows 2016 год Server (x64, x86)</li>
            <li>Windows 2019 год Server (x64, x86)</li>
            <li>Windows XP (x64, x86)</li>
            <li>Windows Vista (x64, x86)</li>
            <li>Windows 7 (x64, x86)</li>
            <li>Windows 8, 8.1 (x64, x86)</li>
            <li>Windows 10 (x64, x86)</li>
        
    </tr>
    <tr>
        <td>macOS</td>
        <td><ul></ul></td>
            <li>macOS-x86_64: 10.14 или более поздняя версия</li>
            <li>macOS-arm64: 11.0 или более поздняя версия</li>
        
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul></ul></td>
            <li>Ubuntu</li>
            <li>Открытие</li>
            <li>CentOS</li>
            <li>и другие</li>
        
    </tr>
</table>

## Системные требования к цели Linux Платформы macOS

- Библиотеки времени выполнения GCC-6 (или более поздние).

- Зависимости .NET Core Runtime. установка .NET Core Runtime само по себе является `NOT` требуется.

- Для Python 3.5-3.7: The `pymalloc` строить Python Это необходимо. The `--with-pymalloc` Python Опция сборки включена по умолчанию. Как правило, это `pymalloc` строить Python обозначается с `m` суффикс в имени файла.

- `libpython` делиться Python Библиотека. The `--enable-shared` Python опция сборки отключена по умолчанию, некоторые Python Распределения не содержат `libpython` Общая библиотека. Для некоторых платформ Linux `libpython` Общая библиотека может быть установлена с помощью менеджера пакетов, например: `sudo apt-get install libpython3.7`. Общий вопрос заключается в том, что `libpython` Библиотека установлена в другом месте, чем стандартная система расположения для общих библиотек. Проблема может быть решена с помощью Python создавать опции для установки альтернативных библиотечных путей при компиляции Pythonили фиксируется путем создания символической ссылки на `libpython` файл библиотеки в стандартном местоположении системы для общих библиотек. Как правило, это `libpython` Имя файла разделяемой библиотеки `libpythonX.Ym.so.1.0` для Python 3.5-3.7 или `libpythonX.Y.so.1.0` для Python 3.8 или более поздней версии (например: libpython3.7m.so.1.0, libpython3.9.so.1.0)
