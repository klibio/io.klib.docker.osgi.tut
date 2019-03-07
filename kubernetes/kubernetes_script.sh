#!bin/sh
echo "#start a minikube-vm on host"
minikube start
#echo "#start a pod with the docker image, exposed on port 8080"
#kubectl run --image=klibio/io.klib.docker.osgi.tutorial:develop-latest osgi --port=8080
#echo "#open nodeport to host | if a LoadBalancer is wanted choose --type=LoadBalancer (not supported on minikube)"
#kubectl expose deployment osgi --type=NodePort --port=8080 --name=net
echo "#creating deployment with replication controller"
kubectl run --image=klibio/io.klib.docker.osgi.tutorial:develop-latest osgi-rc --port=8080 --generator=run/v1
echo "#exposing the replication controller to host"
kubectl expose rc osgi-rc --type=NodePort --port=8080 --name=net
echo "#retrieving port and ip for health check, defining app-path"
port=$(kubectl describe service net | grep NodePort: | grep -Eo '[0-9]{1,6}')
ip=$(minikube ip)
path="/quickstart/index.html"
echo "#verify running instances with curl <minikube-ip>:<open_port>/quickstart/index.html"
curl $ip:$port$path
echo "#scaling deployments"
kubectl scale --replicas=5 rc/osgi-rc
#echo "#showing the pod yaml file" #kubectl edit pods <- all pods
#kubectl edit pod <pod_name>
echo "#performing a rolling update to the master push"
kubectl rolling-update osgi-rc --image=klibio/io.klib.docker.osgi.tutorial:master-latest
echo "#curl new version"
version=$(curl $ip:$port$path) #| grep -oP '(?<=master).*?(?=</a>)')
echo $version
