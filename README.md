### FedyBR 
O o Fedybr é um fork do projeto fedy 


### Introdução 

O Fedy permite instalar codecs de multimídia e software adicional que não estão nos repo Oficiais do Fedora (http://fedoraproject.org/wiki/Forbidden_items?rd=ForbiddenItems), como suporte ao H264, Adobe Flash, Oracle Java etc., e muito mais com apenas alguns cliques.

### Instalalçao 

Para a insalação é necessário ter o repositório do rpmfusion instalado 

```
# RPM Fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Download do pacote do Fedybr
wget https://danniel.fedorapeople.org/fedybr/fedybr-5.0.6.2-5.fc32.noarch.rpm

# Instala o Fedy
sudo rpm -ivh fedybr-5.0.6.2-5.fc32.noarch.rpm

```

### Usage

After installation, search for `Fedy` in the menu/overview or type `fedy` in the terminal.

### Plugin structure

Plugins can be placed under `~/.local/share/fedy/plugins/`, or the system plugins directory.

Each plugin is a directory with the suffix `.plugin`, which consist of a JSON formatted metadata file. The metadata file contains information about the plugin and describes how `Fedy` should run the tasks.

The plugins can run any command or scripts (`bash`, `python` etc.). In addtion to the system commands, `Fedy` provides an additional command, `run-as-root` to allow running commands (e.g.- `run-as-root touch /some/file/somewhere`) or scripts (e.g.- `run-as-root -s do-stuff.sh`) as root.

Have a look at the existing plugins to know more about how to write plugins for `Fedy`.

### Source code

Source code is publicly available on GitHub, and automatically cloned to GitLab:


```

$ git clone https://github.com/rpmfusion-infra/fedy
```

### Bugs and feature requests

Please submit bugs and feature requests [here][fedy/issues]. Pull requests are
always welcome.

[fedy/issues]: https://github.com/rpmfusion-infra/fedy/issues

### License

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see [gnu.org/licenses](http://www.gnu.org/licenses/).
# fedybr
