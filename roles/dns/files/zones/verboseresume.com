; BIND db file for verboseresume.com

$TTL 3600
$ORIGIN verboseresume.com.

@       IN      SOA     ns1.vpsaddict.com.        jon.verboseresume.io. (
                        2026062102      ; serial number YYYYMMDDnn
                        14400           ; Refresh
                        3600            ; Retry
                        1209600         ; Expire
                        3600            ; Min TTL
                        )

@               IN         NS      ns1.vpsaddict.com.
@               IN         NS      ns2.vpsaddict.com.
@               IN         NS      ns3.vpsaddict.com.
@               MX      10 mx.zoho.com.
@               MX      20 mx2.zoho.com.
@               MX      50 mx3.zoho.com.
@		IN	TXT	"google-site-verification=ZzHl-sU-rXdcIyEVUlqq3h2NFXV-I15SGdK8GqYh-Gs"
@               IN      TXT     "v=spf1 include:zohomail.com ~all"
@               IN      TXT     "zoho-verification=zb80928106.zmverify.zoho.com"

                IN      A       68.183.148.253
                IN      AAAA    2604:a880:800:14::2fda:a000
www             IN      CNAME   homelab.soh.re.
mail		IN	CNAME	mail.cs.zohohost.com.
zoho._domainkey IN	TXT	"v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCPL8hM5eQvIKVabeMpgixuGNbYO/CehhAYQewjgL8HaByP7MQICo2BbSF2RjEmum9lcLJI5uQCSQ/ZjXlkBheTSi9XHRfgFniNpgnIosKthh1PAjVXAfxjDhcGxuC3mkX06Qw2DnIlLWQceRNHTdUphsnPk2N1gerUTEwpnIYnTwIDAQAB"
