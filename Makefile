build-k8s-helm-image:
	docker build ./eq-k8s-helm-deploy-image -t eq-k8s-helm-deploy-image:latest

build-terraform-image:
	docker build ./eq-terraform-deploy-image -t eq-terraform-deploy-image:latest

build-python-image:
	docker build ./eq-python-deploy-image -t eq-python-deploy-image:latest

build-tinyproxy-image:
	docker build ./eq-tinyproxy-image -t eq-tinyproxy-image:latest
