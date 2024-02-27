---
title: sistem gereksinimleri
second_title: Python via .NET için Aspose.Words
articleTitle: sistem gereksinimleri
linktitle: sistem gereksinimleri
description: "Python via .NET için Aspose.Words ile çalışmaya başlamadan önce, cihazlarınızdaki etkinliklerin doğru şekilde hesaba katılması için işletim sistemi, platform ve ortam gereksinimlerini karşıladığınızdan emin olun."
type: docs
weight: 50
url: /tr/python-net/system-requirements/
---

Python via .NET için Aspose.Words, Microsoft Word gibi herhangi bir üçüncü taraf ürününün yüklenmesini gerektirmez. Aspose.Words'in kendisi, Microsoft Word belge formatları da dahil olmak üzere çeşitli formatlardaki belgeleri oluşturmak, değiştirmek, dönüştürmek ve işlemek için kullanılan bir motordur.

## Desteklenen İşletim Sistemleri

Python via .NET için Aspose.Words, Python 3.5 veya üzerinin yüklü olduğu tüm 64 bit veya 32 bit işletim sistemlerini destekler.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">İşletim sistemi</td>
        <td style="font-weight: bold; width:400px">Sürümler</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 Server (x64, x86)</li>
            <li>Windows 2012 R2 Server'i (x64, x86)</li>
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
        <td>Mac os işletim sistemi</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 veya üzeri</li>
            <li>macOS-arm64: 11.0 veya üzeri</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>ve diğerleri</li>
        </ul></td>
    </tr>
</table>

## Target Linux ve macOS Platformları için Sistem Gereksinimleri

- GCC-6 çalışma zamanı kitaplıkları (veya üstü).

- .NET Core Runtime'in bağımlılıkları. .NET Core Runtime'in kendisinin kurulması `NOT` gerektirir.

- Python 3.5-3.7 için: Python'in `pymalloc` yapısı gereklidir. `--with-pymalloc` Python oluşturma seçeneği varsayılan olarak etkindir. Genellikle Python'in `pymalloc` yapısı, dosya adında `m` son ekiyle işaretlenir.

- `libpython` paylaşılan Python kütüphanesi. `--enable-shared` Python oluşturma seçeneği varsayılan olarak devre dışıdır; bazı Python dağıtımları `libpython` paylaşılan kitaplığını içermez. Bazı linux platformları için `libpython` paylaşımlı kütüphanesi paket yöneticisi kullanılarak kurulabilir, örneğin: `sudo apt-get install libpython3.7`. Yaygın sorun, `libpython` kitaplığının, paylaşılan kitaplıklar için standart sistem konumundan farklı bir konuma kurulmasıdır. Sorun, Python derlenirken alternatif kitaplık yolları ayarlamak için Python oluşturma seçenekleri kullanılarak veya paylaşılan kitaplıklar için sistem standart konumunda `libpython` kitaplık dosyasına sembolik bir bağlantı oluşturularak çözülebilir. Genellikle `libpython` paylaşılan kitaplık dosyasının adı, Python 3.5-3.7 için `libpythonX.Ym.so.1.0` veya Python 3.8 veya üzeri için `libpythonX.Y.so.1.0`'dir (örneğin: libpython3.7m.so.1.0, libpython3.9.so.1.0)
