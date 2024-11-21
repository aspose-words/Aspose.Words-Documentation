---
title: Requisitos del sistema
second_title: Aspose.Words para Python via .NET
articleTitle: Requisitos del sistema
linktitle: Requisitos del sistema
description: "Antes de comenzar a trabajar con Aspose.Words para Python via .NET, asegúrese de cumplir con los requisitos del sistema operativo, la plataforma y el entorno para que las actividades en sus dispositivos se contabilicen adecuadamente."
type: docs
weight: 50
url: /es/python-net/system-requirements/
timestamp: 2024-04-27-18-03-32
---

Aspose.Words para Python via .NET no requiere la instalación de ningún producto de terceros, como Microsoft Word. Aspose.Words en sí es un motor para crear, modificar, convertir y representar documentos en varios formatos, incluidos los formatos de documentos Microsoft de Word.

## Sistemas operativos compatibles

Aspose.Words para Python via .NET es compatible con cualquier sistema operativo de 64 o 32 bits donde esté instalado Python 3.5 o posterior.

<table>
<tr>
		<td style="font-weight: bold; width:400px">Sistema operativo</td>
		<td style="font-weight: bold; width:400px">Versiones</td>
	</tr>
 <tr>
		<td>Texto Microsoft</td>
		<td><ul><li>Servidor Windows 2003 (x64, x86)</li><li>Servidor Windows 2008 (x64, x86)</li><li>Servidor Windows 2012 (x64, x86)</li><li>Servidor R2 Windows 2012 (x64, x86)</li><li>Servidor Windows 2016 (x64, x86)</li><li>Servidor Windows 2019 (x64, x86)</li><li>XP Windows (x64, x86)</li><li>Vista Windows (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
	</tr>
 <tr>
		<td>Mac OS</td>
		<td>macOS-x86_64: 10.14 o posterior</td>
    <td>macOS-arm64: 11.0 o posterior</td>
	</tr>
 <tr>
		<td>Linux</td>
		<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>y otros</li></ul></td>
	</tr>
</table>

## Requisitos del sistema para plataformas Target Linux y macOS

- Bibliotecas de tiempo de ejecución GCC-6 (o posteriores).

- Dependencias de .NET Core Runtime. Se requiere `NOT` para instalar .NET Core Runtime.

- Para Python 3.5-3.7: se necesita la compilación `pymalloc` de Python. La opción de compilación `--with-pymalloc` Python está habilitada de forma predeterminada. Normalmente, la compilación `pymalloc` de Python está marcada con el sufijo `m` en el nombre del archivo.

- Biblioteca Python compartida `libpython`. La opción de compilación `--enable-shared` Python está deshabilitada de forma predeterminada; algunas distribuciones de Python no contienen la biblioteca compartida `libpython`. Para algunas plataformas Linux, la biblioteca compartida `libpython` se puede instalar utilizando el administrador de paquetes, por ejemplo: `sudo apt-get install libpython3.7`. El problema común es que la biblioteca `libpython` está instalada en una ubicación diferente a la ubicación estándar del sistema para las bibliotecas compartidas. El problema se puede solucionar utilizando las opciones de compilación de Python para establecer rutas de biblioteca alternativas al compilar Python, o se puede solucionar creando un enlace simbólico al archivo de biblioteca `libpython` en la ubicación estándar del sistema para bibliotecas compartidas. Normalmente, el nombre del archivo de la biblioteca compartida `libpython` es `libpythonX.Ym.so.1.0` para Python 3.5-3.7 o `libpythonX.Y.so.1.0` para Python 3.8 o posterior (por ejemplo: libpython3.7m.so.1.0, libpython3.9.so.1.0).
