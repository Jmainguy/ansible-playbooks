; Barnwide
$TTL 3600
$ORIGIN barnwide.com.
@ IN SOA ns1.vpsaddict.com. jon.soh.re. (
  2026092201 14400 3600 1209600 3600 )
@ IN NS ns1.vpsaddict.com.
@ IN NS ns2.vpsaddict.com.
@ IN NS ns3.vpsaddict.com.
@ IN A 68.183.148.253
@ IN AAAA 2604:a880:800:14::2fda:a000
www IN CNAME homelab.soh.re.
