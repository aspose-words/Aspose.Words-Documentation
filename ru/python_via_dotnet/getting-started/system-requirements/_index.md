---
title: Системные Требования
second_title: Aspose.Words для Python via .NET
articleTitle: Системные Требования
linktitle: Системные Требования
description: "Прежде чем начать работу с Aspose.Words для Python via .NET, убедитесь, что вы соответствуете требованиям операционной системы, платформы и среды, чтобы действия на ваших устройствах учитывались должным образом."
type: docs
weight: 50
url: /ru/python-net/system-requirements/
---

Aspose.Words для Python via .NET не требует установки каких-либо сторонних продуктов, таких как Microsoft Word. Aspose.Words сам по себе является механизмом для создания, изменения, преобразования и рендеринга документов в различных форматах, включая Microsoft Word форматов документов.

## Поддерживаемые операционные системы

Aspose.Words для Python via .NET поддерживает любую 64-битную или 32-битную операционную систему, в которой установлена Python 3.5 или более поздняя версия.

<table>
   <tr>
       <td style="font-weight: bold; width:400px">Операционная система</td>
       <td style="font-weight: bold; width:400px">Версии</td>
   </tr>
   <tr>
       <td>Microsoft Windows</td>
       <td><ul>
           <li>Windows 2003 Server (х64, х86)</li>
           <li>Windows 2008 Server (х64, х86)</li>
           <li>Windows 2012 Server (х64, х86)</li>
           <li>Windows 2012 R2 Server (х64, х86)</li>
           <li>Windows 2016 Server (х64, х86)</li>
           <li>Windows 2019 Server (х64, х86)</li>
           <li>Windows XP (х64, х86)</li>
           <li>Windows Vista (х64, х86)</li>
           <li>Windows 7 (х64, х86)</li>
           <li>Windows 8, 8,1 (х64, х86)</li>
           <li>Windows 10 (х64, х86)</li>
       </ul></td>
   </tr>
   <tr>
       <td>macOS</td>
       <td><ul>
           <li>macOS-x86_64: 10.14 или новее</li>
           <li>macOS-arm64: 11.0 или новее</li>
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

## Системные требования для платформ Target Linux и macOS

- Библиотеки времени выполнения GCC-6 (или более поздних версий).

- Зависимости .NET Core Runtime. Для установки самой .NET Core Runtime требуется `NOT`.

- Для Python 3.5-3.7: необходима сборка `pymalloc` из Python. Опция сборки `--with-pymalloc` Python включена по умолчанию. Обычно сборка `pymalloc` из Python помечается суффиксом `m` в имени файла.

- `libpython` поделились Python библиотекой. Опция сборки `--enable-shared` Python отключена по умолчанию, некоторые дистрибутивы Python не содержат общую библиотеку `libpython`. На некоторых платформах Linux общую библиотеку `libpython` можно установить с помощью диспетчера пакетов, например: `sudo apt-get install libpython3.7`. Распространенной проблемой является то, что библиотека `libpython` устанавливается в другое место, отличное от стандартного системного местоположения для общих библиотек. Эту проблему можно решить, используя параметры сборки Python для установки альтернативных путей к библиотекам при компиляции Python, или устранить ее, создав символическую ссылку на файл библиотеки `libpython` в стандартном расположении системы для общих библиотек. Обычно имя файла общей библиотеки `libpython` — `libpythonX.Ym.so.1.0` для Python 3.5–3.7 или `libpythonX.Y.so.1.0` для Python 3.8 или новее (например: libpython3.7m.so.1.0, libpython3.9.so.1.0)
