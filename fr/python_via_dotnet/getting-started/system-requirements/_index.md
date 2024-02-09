---
title: Configuration requise
second_title: Aspose.Words pour Python via .NET
articleTitle: Configuration requise
linktitle: Configuration requise
description: "Avant de commencer à travailler avec Aspose.Words pour Python via .NET, assurez-vous de répondre aux exigences du système d'exploitation, de la plate-forme et de l'environnement afin que les activités sur vos appareils soient correctement prises en compte."
type: docs
weight: 50
url: /fr/python-net/system-requirements/
---

Aspose.Words pour Python via .NET ne nécessite l'installation d'aucun produit tiers tel que Microsoft Word. Aspose.Words lui-même est un moteur permettant de créer, modifier, convertir et restituer des documents dans divers formats, y compris les formats de document Microsoft Word.

## Systèmes d'exploitation pris en charge

Aspose.Words pour Python via .NET prend en charge tout système d'exploitation 64 bits ou 32 bits sur lequel Python 3.5 ou version ultérieure est installé.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">Système opérateur</td>
        <td style="font-weight: bold; width:400px">Versions</td>
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
            <li>WindowsXP (x64, x86)</li>
            <li>WindowsVista (x64, x86)</li>
            <li>Windows7 (x64, x86)</li>
            <li>Windows8, 8.1 (x64, x86)</li>
            <li>Windows10 (x64, x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>macOS</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 ou version ultérieure</li>
            <li>macOS-arm64: 11.0 ou version ultérieure</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OuvrirSUSE</li>
            <li>CentOS</li>
            <li>et d'autres</li>
        </ul></td>
    </tr>
</table>

## Configuration système requise pour les plates-formes Target Linux et macOS

- Bibliothèques d'exécution GCC-6 (ou version ultérieure).

- Dépendances de .NET Core Runtime. L'installation de .NET Core Runtime lui-même est requise par `NOT`.

- Pour Python 3.5-3.7: la version `pymalloc` de Python est nécessaire. L'option de génération `--with-pymalloc` Python est activée par défaut. En règle générale, la version `pymalloc` de Python est marquée du suffixe `m` dans le nom de fichier.

- Bibliothèque Python partagée `libpython`. L'option de construction `--enable-shared` Python est désactivée par défaut, certaines distributions Python ne contiennent pas la bibliothèque partagée `libpython`. Pour certaines plateformes Linux, la bibliothèque partagée `libpython` peut être installée à l'aide du gestionnaire de packages, par exemple: `sudo apt-get install libpython3.7`. Le problème courant est que la bibliothèque `libpython` est installée à un emplacement différent de l'emplacement système standard pour les bibliothèques partagées. Le problème peut être résolu en utilisant les options de construction Python pour définir des chemins de bibliothèque alternatifs lors de la compilation de Python, ou en créant un lien symbolique vers le fichier de bibliothèque `libpython` dans l'emplacement standard du système pour les bibliothèques partagées. En règle générale, le nom du fichier de bibliothèque partagée `libpython` est `libpythonX.Ym.so.1.0` pour Python 3.5-3.7 ou `libpythonX.Y.so.1.0` pour Python 3.8 ou version ultérieure (par exemple: libpython3.7m.so.1.0, libpython3.9.so.1.0)
