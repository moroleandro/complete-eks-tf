<h1 align="center">Initial to terraform in EKS (1.18) at AWS</h1>

> Codebase to create the infrastructure as code for an EKS environment on AWS

# Install modules

```sh
terraform init
```

## Apply infrastructure

```sh
terraform apply --auto-approve
```

## Run tests infrastructure

```sh
terraform validate
```

## Apply applications on cluster

```sh
kubectl apply -f k8s/apps/faker.yml
kubectl apply -f k8s/apps/whois.yml
kubectl apply -f k8s/apps/pudim.yml
```

## Apply ingress controller on cluster (Traefik)

```sh
kubectl apply -f k8s/traefik/ingress.yml
```

# Usage services on cluster

- Whois -> simple query data from a dns record
- Faker -> returns data from random people
- Pudim -> return sample HTML

## Usage dashboard Traefik

```sh
http://{ELB-Hash}.us-east-1.elb.amazonaws.com:8080/
```

## Test service WHOIS

```sh
http://{ELB-Hash}.us-east-1.elb.amazonaws.com/whois/google.com | jq .
```

## Test service FAKER

```sh
http://{ELB-Hash}.us-east-1.elb.amazonaws.com/faker | jq .
```

## Test service PUDIM

```sh
http://{ELB-Hash}.us-east-1.elb.amazonaws.com/ -H `Host: pudim.me` 
```

- After create panel Route 53 (AWS) zone www.pudim.me CNAME of load balancer
 
```sh
http://pudim.me
```


# Author

@moroleandro
