---
title: 系统要求
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 系统要求
linktitle: 系统要求
description: "在开始使用 Aspose.Words for Python via .NET 之前，请确保满足操作系统、平台和环境要求，以便正确考虑设备上的活动。"
type: docs
weight: 50
url: /zh/python-net/system-requirements/
---

Aspose.Words for Python via .NET 不需要安装任何第三方产品（例如 Microsoft Word）。 Aspose.Words 本身是一个用于创建、修改、转换和呈现各种格式（包括 Microsoft Word 文档格式）文档的引擎。

## 支持的操作系统

Aspose.Words for Python via .NET 支持安装了 Python 3.5 或更高版本的任何 64 位或 32 位操作系统。

<table>
    <tr>
        <td style="font-weight: bold; width:400px">操作系统</td>
        <td style="font-weight: bold; width:400px">版本</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server（x64、x86）</li>
            <li>Windows 2008 Server（x64、x86）</li>
            <li>Windows 2012 Server（x64、x86）</li>
            <li>Windows 2012 R2 Server（x64、x86）</li>
            <li>Windows 2016 Server（x64、x86）</li>
            <li>Windows 2019 Server（x64、x86）</li>
            <li>Windows XP（x64、x86）</li>
            <li>Windows Vista（x64、x86）</li>
            <li>Windows 7（x64、x86）</li>
            <li>Windows 8、8.1（x64、x86）</li>
            <li>Windows 10（x64、x86）</li>
        </ul></td>
    </tr>
    <tr>
        <td>苹果系统</td>
        <td><ul>
            <li>macOS-x86_64：10.14 或更高版本</li>
            <li>macOS-arm64：11.0 或更高版本</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>开放SUSE</li>
            <li>CentOS</li>
            <li>和别的</li>
        </ul></td>
    </tr>
</table>

## 目标 Linux 和 macOS 平台的系统要求

- GCC-6 运行时库（或更高版本）。

- .NET Core Runtime 的依赖性。安装 .NET Core Runtime 本身需要 `NOT`。

- 对于 Python 3.5-3.7：需要 Python 的 `pymalloc` 版本。 `--with-pymalloc` Python 构建选项默认启用。通常，Python 的 `pymalloc` 版本在文件名中标有 `m` 后缀。

- `libpython` 共享 Python 库。默认情况下禁用 `--enable-shared` Python 构建选项，某些 Python 发行版不包含 `libpython` 共享库。对于某些Linux平台，可以使用包管理器安装`libpython`共享库，例如：`sudo apt-get install libpython3.7`。常见问题是 `libpython` 库安装在与共享库的标准系统位置不同的位置。该问题可以通过在编译 Python 时使用 Python 构建选项设置备用库路径来解决，也可以通过在共享库的系统标准位置中创建指向 `libpython` 库文件的符号链接来解决。通常，`libpython` 共享库文件名对于 Python 3.5-3.7 为 `libpythonX.Ym.so.1.0`，对于 Python 3.8 或更高版本为 `libpythonX.Y.so.1.0`（例如：libpython3.7m.so.1.0、libpython3.9.so.1.0）。
