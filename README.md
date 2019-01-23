# PKS_DEMO #

Files used for a PKS Demo

## Acme-Air ##
Acme-air is a nodejs/mongodb application.  It is a fake airline reservation system

## Repo Contents ##

__Use kubectl create -f [yaml file name] to create k8s objects__

* acme-air.yml
	* Kubernetes yaml file which create a namespace, deployment, statefulset, ingress for use in a PKS/NSX-T demo
	* Modify the image for acmenode:1 to pull from your harbor location or use garreeoke/acmenode:1
	* Uses ingress
* acme-air2.yml
	* Same application in acme-air2 namespace, uses loadbalancer instead of ingress
* acme-air-ephemeral.yml
	* Does not use stateful set
* storage_class.yml
	* Modify the datastore before applying
* commands.txt
	* Various example pks commands
* network/policy
	* default-deny-all.yml - will setup default deny for the acme-air namespace
	* web-all-external.yml - will allow access to web
	* mongodb_network_policy.yml - allow access to mongo with correct tag
* wavefront
	* wavefront versions of the yml

## Acme-air usage ##
* Go to port 3000 on the loadbalancer or fqdn setup by ingress
* Go to bottom of page and click: Configure the Acme Air environment
* Click Load Database link at top, click Load Database button
* Go to Acme-Air Home
* Login (use default)
* Apps is now ready to use 
