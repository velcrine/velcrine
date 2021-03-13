alias kpd="kubectl get pods"
alias kpdy="kubectl get pods -o yaml"
alias kdp="kubectl get deployments"
alias kdpy="kubectl get deployments -o yaml"
alias ksv="kubectl get services"
alias ksvy="kubectl get services -o yaml"
alias wkpd="watch kubectl get pods"
alias wkdp="watch kubectl get deployments"
alias klg="kubectl logs -f"
alias kxc="kubectl exec -it"
alias kdt="kubectl edit deployment"
alias kcf="kubectl config view"
alias mk8="microk8s.kubectl config view --raw > $HOME/.kube/config ; export KUBECONFIG=$HOME/.kube/config"
kns(){ kubectl config set-context --current --namespace=$1; }


alias helm3="helm"
export KUBECONFIG="/home/pkv/bin/org/kubeconfigs/dev/config-notthere"

k8(){
config="$1" \
dir="$2"
if [ $# -eq 1 ]
	then
dir="dev"
fi

rut="/home/pkv/bin/org/kubeconfigs/$dir/config-$config"

export KUBECONFIG=$rut
echo $KUBECONFIG
}
