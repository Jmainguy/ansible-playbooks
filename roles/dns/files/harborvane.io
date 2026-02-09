; BIND db file for harborvane.io

$TTL 3600
$ORIGIN harborvane.io.

@       IN      SOA     ns1.vpsaddict.com.        jon.harborvane.io. (
                        2026013103      ; serial number YYYYMMDDnn
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
@               IN      TXT     "v=spf1 include:zohomail.com ~all"

                IN      A       68.183.148.253
                IN      AAAA    2604:a880:800:14::2fda:a000
www             IN      CNAME   homelab.soh.re.
mail		IN	CNAME	mail.cs.zohohost.com.
zoho._domainkey IN	TXT	"v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDoMBcd8WVjX+20yTh1mx6wUllgnmtQh5Kwk8o8/WeBtLhMwWhwbBZsOMu95ywfS2BEG8Hvbvfy+ns1WOOkYq9SrwiQHiyXwdyFsmz2G/Un/bX43DUvQjmb2Ngj8/go4U84EE1su+8A1qFx5673Ra+XoZF2ecKtTuRdwi8O7sJu+QIDAQAB"
