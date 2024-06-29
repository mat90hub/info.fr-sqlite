<!-- -*- coding: utf-8-unix; mode: markdown; mode: auto-fill; fill-column: 80; -*- -->

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This directory contains the translation of the user manual of the
Command Line Interface of SQLite3, which english source is on this
page: https://www.sqlite.org/cli.html
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Ce répertoire contient la traduction en français du manuel utilisateur
de l’interface en ligne de commande de SQLite et dont l’original en
anglais se trouver sur le site : https://www.sqlite.org/cli.html

Cette traduction est sous la forme du fichier texinfo
'cls_sqlite.fr.texinfo', qui permet ensuite de générer plusieurs
formats.

Le répertoire contient un version pdf sous le répertoire [pdf](./pdf)
et une version html sous le répertoire [html](./html).

Si vous avez `git`, le plus simple est cloner ce répertoire
localement.


Le script Makefile de ce répertoire permet de générer et d’installer
localement sur votre ordinateur linux une version info ou de regénérer
les versions pdf ou html de cette traduction. Il faut pour cela avoir
les suites de programmes usuels pour faire ces compilations:
- make
- texinfo (make utilise makeinfo, texi2pdf et texi2any)
- LaTeX (utilisé par texi2pdf)



Génération de la version html.
------------------------------

La commande est 

```shell
make html
```

Le fichier généré sera sur le répertoire [html](./html).

J’ai aussi créé une alternative qui se lance de la façon suivante.

```shell
make html2
```

Cette version utilise la feuille de style qui pré-existe dans le
répertoire [css](./html/css).

Comme pour toute ces commandes `make`, si `make` refuse de refaire une
génération de fichier, parecqu’il a mémorisé que cela avait déjà été
fait, on peut forcer la regénération du fichier html avec la commande
suivante.

```shell
make -B html
```



Génération de la version pdf.
-----------------------------

La commande est 

```shell
make pdf
```

Le fichier généré sera sur le répertoire [pdf](./pdf).


Génération et installation d’un fichier info.
---------------------------------------------

La commande est 

```shell
make info
```

C'est aussi le commande par défaut de make, s’il n'y a pas
d’extension.

Le script génère un fichier info et l’installe sur le répertoire local
des fichiers info de votre installation linux. Voir la variable
`INFO_PATH` dans le fichier `Makefile`. Le script doit avoir les droits
en écriture sur ce répertoire. Ensuite, si les fichiers intermédiaires
sont effacé de ce répertoire.

Pour finir l’installation, il faudra copier cette ligne à l’endroit
approprié dans le fichier `dir` de votre répertoire local de fichiers
info.

```texinfo
* Console SQLite: (cls_sqlite.fr).  Console pour SQLite
```

Ce nouvel item devrait ensuite apparaître à la prochain ouverture
d’info avec un lien opérationnel.

