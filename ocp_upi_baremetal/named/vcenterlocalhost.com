;
; BIND data file for vcenterlocalhost.com
;
$TTL    604800
@       IN      SOA     ns1.vcenterlocalhost.com. www.vcenterlocalhost.com. (
                              3         ; serial, todays date+todays
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

@       IN      NS      ns.vcenterlocalhost.com.
@       IN      A       172.27.40.233
ns      IN      A       172.27.40.233

;vcenterlocalhost.com. IN A 10.1.0.100
;vcenterlocalhost.com. 86400 IN NS ns1.vcenterlocalhost.com.
;vcenterlocalhost.com. 86400 IN NS ns2.vcenterlocalhost.com.
;www  IN CNAME vcenterlocalhost.com
;
;
;Address Records for nameservers
;
;
ns1.vcenterlocalhost.com. 86400 IN A 172.27.40.233
ns2.vcenterlocalhost.com. 86400 IN A 172.27.40.233
dc1.vcenterlocalhost.com. 86400 IN A 172.27.40.233
;vcenterlocalhost.com. 86400 IN A

bastion.vcenterlocalhost.com. 86400 IN A 172.27.40.233
api.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.233
api-int.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.233
*.apps.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.233

;For Cluster 2
api.2ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.202
api-int.2ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.202
*.apps.2ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.202

;For Cluster 3
api.3ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.229
api-int.3ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.229
*.apps.3ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.229


; Assisted Records for nameservers

;api.assistedocp.vcenterlocalhost.com. 86400 IN A 172.27.40.233
;api-int.assistedocp.vcenterlocalhost.com. 86400 IN A 172.27.40.233
;*.apps.assistedocp.vcenterlocalhost.com. 86400 IN A 172.27.40.233


;ocp machine records

;master.assistedocp.vcenterlocalhost.com. 86400 IN A 172.27.40.231


bootstrap.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.221
master0.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.222
master1.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.223
master2.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.224
worker0.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.245
worker1.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.246
worker2.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.247
worker3.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.248
worker4.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.249
worker5.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.238
worker6.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.237


;ocp machine records for cluster 2
2bootstrap.2ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.225
2master0.2ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.226
2master1.2ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.227
2master2.2ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.228

;ocp machine records for cluster 3
3bootstrap.3ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.190
3master0.3ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.191
3master1.3ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.192
3master2.3ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.193


;records for ceph cluster
cephadm.vcenterlocalhost.com 86400 IN A 172.27.40.215
ceph1.vcenterlocalhost.com  86400 IN A 172.27.40.219
ceph2.vcenterlocalhost.com  86400 IN A 172.27.40.217
ceph3.vcenterlocalhost.com  86400 IN A 172.27.40.211
