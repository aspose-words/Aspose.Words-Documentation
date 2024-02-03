---
title: Persyaratan sistem
second_title: Aspose.Words untuk Python via .NET
articleTitle: Persyaratan sistem
linktitle: Persyaratan sistem
description: "Sebelum Anda mulai bekerja dengan Aspose.Words untuk Python via .NET, pastikan Anda memenuhi persyaratan sistem operasi, platform, dan lingkungan sehingga aktivitas di perangkat Anda diperhitungkan dengan benar."
type: docs
weight: 50
url: /id/python-net/system-requirements/
---

Aspose.Words untuk Python via .NET tidak memerlukan instalasi produk pihak ketiga seperti Microsoft Word. Aspose.Words sendiri merupakan mesin untuk membuat, memodifikasi, mengkonversi, dan merender dokumen dalam berbagai format, termasuk format dokumen Microsoft Word.

## Sistem Operasi yang Didukung

Aspose.Words untuk Python via .NET mendukung sistem operasi 64-bit atau 32-bit yang menginstal Python 3.5 atau lebih baru.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Sistem operasi</td>
        <td style="font-weight: bold; width:400px">Versi</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 Server (x64, x86)</li>
            <li>Server R2 Windows 2012 (x64, x86)</li>
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
            <li>macOS-x86_64: 10.14 atau lebih baru</li>
            <li>macOS-arm64: 11.0 atau lebih baru</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>dan lain-lain</li>
        </ul></td>
    </tr>
</table>

## Persyaratan Sistem untuk Platform Target Linux dan macOS

- Pustaka runtime GCC-6 (atau lebih baru).

- Ketergantungan .NET Core Runtime. Menginstal .NET Core Runtime sendiri memerlukan `NOT`.

- Untuk Python 3.5-3.7: Diperlukan build `pymalloc` dari Python. Opsi pembuatan `--with-pymalloc` Python diaktifkan secara default. Biasanya, versi `pymalloc` dari Python ditandai dengan akhiran `m` di nama file.

- `libpython` berbagi perpustakaan Python. Opsi pembuatan `--enable-shared` Python dinonaktifkan secara default, beberapa distribusi Python tidak berisi pustaka bersama `libpython`. Untuk beberapa platform linux, shared library `libpython` dapat diinstal menggunakan manajer paket, misalnya: `sudo apt-get install libpython3.7`. Masalah umum adalah perpustakaan `libpython` diinstal di lokasi yang berbeda dari lokasi sistem standar untuk perpustakaan bersama. Masalah ini dapat diperbaiki dengan menggunakan opsi build Python untuk mengatur jalur pustaka alternatif saat mengompilasi Python, atau diperbaiki dengan membuat tautan simbolis ke file pustaka `libpython` di lokasi standar sistem untuk pustaka bersama. Biasanya, nama file perpustakaan bersama `libpython` adalah `libpythonX.Ym.so.1.0` untuk Python 3.5-3.7, atau `libpythonX.Y.so.1.0` untuk Python 3.8 atau lebih baru (misalnya: libpython3.7m.so.1.0, libpython3.9.so.1.0)
