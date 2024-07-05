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

;ocp machine records

bootstrap.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.239
master0.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.240
master1.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.241
master2.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.242
worker0.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.245
worker1.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.246
worker2.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.247
worker3.ocp4.vcenterlocalhost.com. 86400 IN A 172.27.40.248
