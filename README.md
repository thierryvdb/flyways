# :rocket: Flyway Action => Including SQL-lint and migrations

Todas as operações por recomendação deverão ser executas a partir do usuário que executar o **github-runner**.

O usuário do github-runner deverá ter :warning: **permissões** :warning: para realizar o **sudo** sem senha.

Passo 1:

Download & Install Flyway for linux:

``` bash
mkdir -p /opt/flywaydb
cd /opt/flyway
wget -c https://download.red-gate.com/checkforupdates/FlywayDesktopLinuxX64.tar.gz
tar -xzf FlywayDesktopLinuxX64.tar.gz
sudo ln -s /opt/flywaydb/flyway/flyway /usr/local/bin/flyway
```

Passo 2:
Install Java OpenJDK jre versão 18+

``` bash
If debian based:
sudo apt install openjdk-18-jre -y

If RedHat Based:
sudo yum install openjdk-18-jre -y
```