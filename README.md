# tap-docker-workloads
Docker File is using nginx image. It copies print.sh script to container and then executes that script at the end as an entry point. Script prints the content of the secret that was created as Service Binding.
There are two files. 
secret.yaml and resourceclaim.yaml. sercret.yaml contains the content that we can use to overwrite. Resourceclaim contains reference to the secret file. Workload.yaml uses resourcesclaim to create service binding which mounts secret as volume.
After deploying workload, we get the below output.

---------------
dockerworkload-00001-deployment-568f85875f-tjrlx[workload] 2024-02-29T16:08:25.300284995-05:00 dsinfo.xml
dockerworkload-00001-deployment-568f85875f-tjrlx[workload] 2024-02-29T16:08:25.300315266-05:00 provider
dockerworkload-00001-deployment-568f85875f-tjrlx[workload] 2024-02-29T16:08:25.302289515-05:00 this is a test
----------------
![image](https://github.com/jkhan24558/tap-docker-workloads/assets/52003763/bdff796a-b0fd-4bca-8557-260dde1023bd)
