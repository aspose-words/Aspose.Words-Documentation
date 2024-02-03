---
title: Requisitos de sistema
second_title: Aspose.Words para Python via .NET
articleTitle: Requisitos de sistema
linktitle: Requisitos de sistema
description: "Antes de começar a trabalhar com Aspose.Words para Python via .NET, certifique-se de atender aos requisitos de sistema operacional, plataforma e ambiente para que as atividades em seus dispositivos sejam devidamente contabilizadas."
type: docs
weight: 50
url: /pt/python-net/system-requirements/
---

Aspose.Words para Python via .NET não requer a instalação de nenhum produto de terceiros, como Microsoft Word. O próprio Aspose.Words é um mecanismo para criar, modificar, converter e renderizar documentos em vários formatos, incluindo formatos de documentos Microsoft Word.

## Sistemas operacionais suportados

Aspose.Words para Python via .NET oferece suporte a qualquer sistema operacional de 64 ou 32 bits onde Python 3.5 ou posterior esteja instalado.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Sistema operacional</td>
        <td style="font-weight: bold; width:400px">Versões</td>
    </tr>
    <tr>
        <td>MicrosoftWindows</td>
        <td><ul>
            <li>Windows 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 Server (x64, x86)</li>
            <li>Server Windows 2012 R2 (x64, x86)</li>
            <li>Windows 2016 Server (x64, x86)</li>
            <li>Windows 2019 Server (x64, x86)</li>
            <li>WindowsXP (x64, x86)</li>
            <li>WindowsVista (x64, x86)</li>
            <li>Windows7 (x64, x86)</li>
            <li>Windows8, 8.1 (x64, x86)</li>
            <li>Windows10 (x64, x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>Mac OS</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 ou posterior</li>
            <li>macOS-arm64: 11.0 ou posterior</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>e outros</li>
        </ul></td>
    </tr>
</table>

## Requisitos do sistema para plataformas Target Linux e macOS

- Bibliotecas de tempo de execução GCC-6 (ou posteriores).

- Dependências do .NET Core Runtime. A instalação do próprio .NET Core Runtime é necessária para `NOT`.

- Para Python 3.5-3.7: A compilação `pymalloc` do Python é necessária. A opção de compilação `--with-pymalloc` Python está habilitada por padrão. Normalmente, a compilação `pymalloc` do Python é marcada com o sufixo `m` no nome do arquivo.

- Biblioteca Python compartilhada `libpython`. A opção de construção `--enable-shared` Python está desabilitada por padrão, algumas distribuições Python não contêm a biblioteca compartilhada `libpython`. Para algumas plataformas Linux, a biblioteca compartilhada `libpython` pode ser instalada usando o gerenciador de pacotes, por exemplo: `sudo apt-get install libpython3.7`. O problema comum é que a biblioteca `libpython` é instalada em um local diferente do local padrão do sistema para bibliotecas compartilhadas. O problema pode ser corrigido usando as opções de construção do Python para definir caminhos de biblioteca alternativos ao compilar o Python, ou corrigido criando um link simbólico para o arquivo da biblioteca `libpython` no local padrão do sistema para bibliotecas compartilhadas. Normalmente, o nome do arquivo da biblioteca compartilhada `libpython` é `libpythonX.Ym.so.1.0` para Python 3.5-3.7 ou `libpythonX.Y.so.1.0` para Python 3.8 ou posterior (por exemplo: libpython3.7m.so.1.0, libpython3.9.so.1.0)
