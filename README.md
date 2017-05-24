# ksonnet docker image

http://ksonnet.heptio.com

```
docker pull chadmoon/ksonnet:latest
```

or build

```
docker build -t ksonnet .
```

### example usage

```
alias ksonnet="docker run --rm -v $PWD:/workdir ksonnet"

ksonnet example.libsonnet
```
outputs:
```
{
   "apiVersion": "apps/v1beta1",
   "kind": "Deployment",
   "metadata": {
      "name": "nginx-deployment",
      "namespace": "default"
   },
   "spec": {
      "replicas": 2,
      "template": {
         "spec": {
            "affinity": { },
            "containers": {
               "args": [ ],
               "command": [ ],
               "env": [ ],
               "envFrom": [ ],
               "image": "nginx:1.7.9",
               "lifecycle": { },
               "livenessProbe": { },
               "name": "nginx",
               "ports": [
                  {
                     "containerPort": 80,
                     "name": "http"
                  }
               ],
               "readinessProbe": { },
               "resources": { },
               "securityContext": { },
               "volumeMounts": [ ]
            },
            "hostMappings": [ ],
            "imagePullSecrets": [ ],
            "initContainers": [ ],
            "nodeSelector": { },
            "securityContext": { },
            "tolerations": [ ],
            "volumes": [ ]
         }
      }
   },
   "status": { }
}

```