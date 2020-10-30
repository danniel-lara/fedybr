### Fedybr
O  Fedybr é um fork do projeto [fedy]( https://github.com/rpmfusion-infra/fedy) ,com algumas melhorias ,
como tradução e adicionado alguns elmuladores e softwares de info/monitoramento 


### Introdução 

O Fedy permite instalar codecs de multimídia e software adicional que não estão nos repo Oficiais do Fedora (http://fedoraproject.org/wiki/Forbidden_items?rd=ForbiddenItems), como suporte ao H264, Adobe Flash, Oracle Java etc., e muito mais com apenas alguns cliques.

### Instalalçao 

Para a insalação é necessário ter o repositório do rpmfusion instalado 

```
# RPM Fusion
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Download do pacote do Fedybr
wget https://danniel.fedorapeople.org/fedybr/fedybr-2.3-1.fc33.noarch.rpm

# Instala o Fedy
sudo dnf install fedybr-2.3-1.fc33.noarch.rpm

Ou 

sudo dnf install https://danniel.fedorapeople.org/fedybr/fedybr-5.0.6.2-5.fc32.noarch.rpm

```

### Uso

Após a instalação, procure por `FedyBr` no menu ou digite` fedybr` no terminal.

### Estrutura de plugins

Os plugins podem ser colocados em `/usr/share/fedybr/plugins`

 Cada plug-in é um diretório com o sufixo`.plugin`, que consistem em um arquivo de metadados formatado em JSON. O arquivo de metadados contém informações sobre o plug-in e descreve como  o `Fedybr` deve executar as tarefas.

Os plugins podem executar qualquer comando ou script (`bash`, `python` etc.).Além dos comandos do sistema, `Fedybr` 
fornece um comando adicional, `run-as-root` para permitir a execução de comandos (e.g.- `run-as-root touch /some/file/somewhere`) ou scripts (e.g.- `run-as-root -s do-stuff.sh`) como root.

Veja os plug-ins existentes para saber mais sobre como escrever plug-ins para o  `Fedybr`.

### Código  Fonte

O código-fonte está disponível publicamente no GitHub


```

$ git clone https://github.com/danniel-lara/fedybr
```

### Bugs e solicitações de recursos

Envie bugs e solicitações de recursos [aqui][fedybr/issues]. As solicitações pull são
sempre bem-vindo.

[fedybr/issues]: https://github.com/danniel-lara/fedybr/issues

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

