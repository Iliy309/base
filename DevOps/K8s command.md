#  Команды minikube

```bash 
Basic Commands:
  start            Запускает локальный кластер Kubernetes |
  status           Получает статус локального кластера Kubernetes
  stop             Stops a running local Kubernetes cluster
  delete           Остановка работающего локального кластера Kubernetes
  dashboard        Получите доступ к приборной панели Kubernetes, 
                   запущенной в кластере minikube
  pause            Поставить на паузу Kubernetes
  unpause          Снять с паузы  Kubernetes

Images Commands:
  docker-env       Содержит инструкции по указанию docker-cli вашего
                   терминала на Docker Engine внутри minikube.
                   (Полезно для сборки образов докеров непосредственно в
                    minikube)      
  podman-env       Настройте окружение для использования службы Podman вe
  cache            Управление кэшем  images
  image            Управление images

Configuration and Management Commands:

  addons           Включение или отключение аддона minikube
  config           Изменение постоянных значений конфигурации
  profile          Получить или перечислить текущие профили (кластеры)
  update-context   Обновление kubeconfig в случае изменения IP или порта

Networking and Connectivity Commands:

  service          Возвращает URL-адрес для подключения к службе
  tunnel           Подключение к службам LoadBalancer

Advanced Commands:

  mount            Монтирует указанный каталог в minikube
  ssh              Войдите в среду minikube (для отладки)
  kubectl          Запустите двоичный файл kubectl, соответствующий версии 
				   кластера
  node             Добавить, удалить или перечислить дополнительные узлы
  cp               Копирование указанного файла в minikube

Troubleshooting Commands:

  ssh-key          Получение пути к идентификационному ключу ssh для 
				   указанного ноды 
  ssh-host         Получение ключа ssh-хоста указанного узла
  ip               Получает IP-адрес указанного узла
  logs             Возвращает логи для отладки локального кластера 
  update-check     Печать номера текущей и последней версии
  version          Печать версии minikube
  options          Показать список глобальных опций командной строки
                   (применяется ко всем командам).
  license          Выводит лицензии зависимостей в каталог

Other Commands:
  completion       Generate command completion for a shell
Use "minikube <command> --help" for more information about a given command.
```



# Команды kubectL

``` bash
Basic Commands (Beginner):

  create          Создание ресурса из файла или из stdin
  expose          Возьмите контроллер репликации, сервис, развертывание 
			      или под и представьте его как новый сервис Kubernetes.
  run             Запуск определенного образа на кластере
  set             Установить определенные характеристики на объектах

Basic Commands (Intermediate):

  explain         Получить документацию по ресурсу
  get             Отображение одного или многих ресурсов
  edit            Редактирование ресурса на сервере
  delete          Удаление ресурсов по именам файлов, по stdin, по
				  ресурсам и именам или по ресурсам и селектору меток

Deploy Commands:

  rollout         Управление развертыванием ресурса
  scale           Установка нового размера для развертывания, набора
  				  реплик или контроллера репликации
  autoscale       Автоматическое масштабирование развертывания, набора 
				  реплик, набора состояний или контроллера репликации

Cluster Management Commands:

  certificate     Изменение ресурсов сертификата.
  cluster-info    Отображение информации о кластере
  top             Отображение использования ресурсов (процессор/память)
  cordon          Пометить узел как недоступный для просмотра
  uncordon        Пометить узел как доступный для просмотра
  drain           Drain нода привести  к техническому обслуживанию
  taint           Обновление taint на одном или нескольких нодах

Troubleshooting and Debugging Commands:

  describe        Показать подробную информацию о конкретном ресурсе или
  				  группе ресурсов
  logs            Печать логов для контейнера в поде 
  attach          Присоединение к работающему контейнеру
  exec            Выполнение команды в контейнере
  port-forward    Перенаправление одного или неск. локальных портов в под			  
  proxy           Запустите прокси-сервер на сервере Kubernetes API
  cp              Копирование файлов и директория в контейнеры и из 
				  контейнеров
  auth            Разрешение на авторизацию
  debug           Создание сеансов отладки для устранения неисправностей
				  рабочих нагрузок и подов

Advanced Commands:

  diff            Сравните живую версию с потенциально применяемой версией
  apply           Применить конфигурацию к ресурсу по имени файла или по 
				  протоколу stdin
  patch           Обновление полей ресурса
  replace         Замена ресурса по имени файла или stdin
  wait            Experimental: Ожидание определенного состояния наодном
                   или многих ресурсах
  kustomize       Создайте цель кастомизации из каталога или URL.

Settings Commands:

  label           Обновление меток на ресурсе
  annotate        Обновление аннотаций на ресурсе
  completion      Вывод кода завершения оболочки для указанной оболочки 
				  (bash, zsh, fish или powershell).

Other Commands:

  alpha           Команды для функций в альфа-версии
  api-resources   Печать поддерживаемых ресурсов API на сервере
  api-versions    Выведите поддерживаемые версии API на сервере в виде 
				  "group/version".
  config          Изменение файлов kubeconfig
  plugin          Предоставляет утилиты для взаимодействия с плагинами
  version         Печать информации о версии клиента и сервера
  
Usage:

  kubectl [flags] [options]

Use "kubectl <command> --help" for more information about a given command.

Use "kubectl options" for a list of global command-line options (applies to all commands).
```

# Коды от Дениса 

``` bash
#Get-команды с основном выводом

kubectl get services                          # Вывести все сервисы в пространстве имён

kubectl get pods --all-namespaces             # Вывести все поды во всех пространств имён

kubectl get pods -o wide                      # Вывести все поды в текущем пространстве имён с подробностями

kubectl get deployment my-dep                 # Вывести определённое развёртывание

kubectl get pods                              # Вывести все поды в пространстве имён

kubectl get pod my-pod -o yaml                # Получить информацию по поду в формате YAML

  

# Посмотреть дополнительные сведения команды с многословным выводом

kubectl describe nodes my-node

kubectl describe pods my-pod

  

- [ ] # Вывести сервисы, отсортированные по имени

kubectl get services --sort-by=.metadata.name
```

``` bash
export KUBECONFIG=prod.yaml
kubectl get pods -n prod-pip
```

```bash 
kubectl describe -n prod-cars po | grep 'Last State:     Terminated' -C5???

kubectl -n prod-pip describe po | grep 'Last State:     Terminated' -C5

```