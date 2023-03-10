**K8S - средство оркестраци Kubernetes является проектом с открытым исходным кодом, предназначенным для управления кластером контейнеров Linux как единой системой. Kubernetes управляет и запускает контейнеры Docker на большом количестве хостов, а так же обеспечивает совместное размещение и репликацию большого количества контейнеров** 

#### *Концепции Kubernetes*
 
**Nodes** ([node.md](https://github.com/GoogleCloudPlatform/kubernetes/blob/master/docs/node.md)): Нода это машина в кластере Kubernetes.  
**Pods** ([pods.md](https://github.com/GoogleCloudPlatform/kubernetes/blob/master/docs/pods.md)): Pod это группа контейнеров с общими разделами, запускаемых как единое целое.  
**Replication Controllers** ([replication-controller.md](https://github.com/GoogleCloudPlatform/kubernetes/blob/master/docs/replication-controller.md)): replication controller гарантирует, что определенное количество «реплик» pod'ы будут запущены в любой момент времени.  
**Services** ([services.md](https://github.com/GoogleCloudPlatform/kubernetes/blob/master/docs/services.md)): Сервис в Kubernetes это абстракция которая определяет логический объединённый набор pod и политику доступа к ним.  
**Volumes** ([volumes.md](https://github.com/GoogleCloudPlatform/kubernetes/blob/master/docs/volumes.md)): Volume(раздел) это директория, возможно, с данными в ней, которая доступна в контейнере.  
**Labels** ([labels.md](https://github.com/GoogleCloudPlatform/kubernetes/blob/master/docs/labels.md)): Label'ы это пары ключ/значение которые прикрепляются к объектам, например pod'ам. Label'ы могут быть использованы для создания и выбора наборов объектов.  
**Kubectl Command Line Interface** ([kubectl.md](https://github.com/GoogleCloudPlatform/kubernetes/blob/master/docs/kubectl.md)): kubectl интерфейс командной строки для управления Kubernetes.

#### **Архитектура Kubernetes**

Работающий кластер Kubernetes включает в себя агента, запущенного на нодах (kubelet) и компоненты мастера (APIs, scheduler, etc), поверх решения с распределённым хранилищем. Приведённая схема показывает желаемое, в конечном итоге, состояние, хотя все ещё ведётся работа над некоторыми вещами, например: как сделать так, чтобы kubelet (все компоненты, на самом деле) самостоятельно запускался в контейнере, что сделает планировщик на 100% подключаемым.  
![image](https://habrastorage.org/r/w1560/getpro/habr/post_images/8de/5be/a86/8de5bea86458f0a50a18631e16b867f6.png)   

##### **Нода Kubernetes**
При взгляде на архитектуру системы мы можем разбить его на сервисы, которые работают на каждой ноде и сервисы уровня управления кластера. На каждой ноде Kubernetes запускаются сервисы, необходимые для управления нодой со стороны мастера и для запуска приложений. Конечно, на каждой ноде запускается Docker. Docker обеспечивает загрузку образов и запуск контейнеров.



# K8s  не
- Не предоставляет возможность диплоя по кнопке
- Не контролирует  работу обработчиков БД
- Не предоставляет инструменты для логирования, мониторинга и трейсинга
- Не обеспечивает управление хостовыми системами 
- Не ограничен типами  поддерживаемых приложений
