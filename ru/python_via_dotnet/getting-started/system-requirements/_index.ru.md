---
title: Системные требования
second_title: Aspose.Words для Python via .NET
articleTitle: Системные требования
linktitle: Системные требования
description: "Прежде чем приступить к работе с Aspose.Words для Python via .NET, убедитесь, что вы соответствуете требованиям операционной системы, платформы и среды, чтобы должным образом учитывать действия на ваших устройствах."
type: docs
weight: 50
url: /ru/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Aspose.Words для Python via .NET не требуется установка какого-либо стороннего продукта, такого как Microsoft Word. Aspose.Words сам по себе является движком для создания, модификации, преобразования и визуализации документов в различных форматах, включая Microsoft Word форматы документов.

## Поддерживаемые операционные системы

Aspose.Words для Python via .NET поддерживает любую 64-разрядную или 32-разрядную операционную систему, на которой установлена Python 3.5 или более поздняя версия.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Операционная система</td>
        <td style="font-weight: bold; width:400px">Версии</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 Server (x64, x86)</li>
            <li>Windows 2012 R2 Server (x64, x86)</li>
            <li>Windows 2016 Server (x64, x86)</li>
            <li>Windows 2019 Server (x64, x86)</li>
            <li>Windows XP (x64, x86)</li>
            <li>Windows Vista (x64, x86)</li>
            <li>Windows 7 (x64, x86)</li>
            <li>Windows 8, 8.1 (x64, x86)</li>
            <li>Windows 10 (x64, x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>macOS</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 или более поздние версии</li>
            <li>macOS-arm64: 11.0 или более поздние версии</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>и другие</li>
        </ul></td>
    </tr>
</table>

## Системные требования для целевых платформ Linux и macOS

- GCC -6 библиотек времени выполнения (или более поздних версий).

- Зависимости от .NET Core Runtime. Требуется `NOT` установка самого .NET Core Runtime.

- Для Python 3.5-3.7: Требуется `pymalloc` сборка из Python. Опция сборки `--with-pymalloc` Python включена по умолчанию. Как правило, сборка `pymalloc` из Python помечается суффиксом `m` в имени файла.

- `libpython` общая библиотека Python. Опция сборки `--enable-shared` Python по умолчанию отключена, некоторые дистрибутивы Python не содержат общей библиотеки `libpython`. Для некоторых платформ Linux общая библиотека `libpython` может быть установлена с помощью менеджера пакетов, например: `sudo apt-get install libpython3.7`. Распространенная проблема заключается в том, что библиотека `libpython` установлена в расположении, отличном от стандартного системного расположения для общих библиотек. Проблему можно устранить, используя параметры сборки Python для установки альтернативных путей к библиотекам при компиляции Python, или создав символическую ссылку на файл библиотеки `libpython` в системном стандартном расположении для общих библиотек. Как правило, имя файла общей библиотеки `libpython` равно `libpythonX.Ym.so.1.0` для Python 3.5-3.7, или `libpythonX.Y.so.1.0` для Python 3.8 или более поздней версии (например: libpython3.7m.so .1.0, libpython3.9.итак.1.0).

Поддерживаемые конфигурации Linux представлены в [Aspose.Words-для-Python-через-.NET/Dockerfile](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Dockerfile).
