# tap-docker-workloads

dev-ns is being used in this example as kubernetes namespace. Please make changes in yaml files for your developer's namespace.

Docker File is using nginx image. It copies print.sh script to container and then executes that script at the end as an entry point. Script prints the content of the secret that was created as Service Binding.
There are two files. 
secret.yaml and resourceclaim.yaml. sercret.yaml contains the content that we can use to overwrite. Resourceclaim contains reference to the secret file. Workload.yaml uses resourcesclaim to create service binding which mounts secret as volume.
After deploying workload, we get the below output.

![image](https://github.com/jkhan24558/tap-docker-workloads/assets/52003763/bdff796a-b0fd-4bca-8557-260dde1023bd)
