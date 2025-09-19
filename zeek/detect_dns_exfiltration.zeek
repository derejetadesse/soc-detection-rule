module DNS_Suspicious;

export {
  redef enum Notice::Type += { DNS_Suspicious::Long_DNS_Query };
}

@load base/protocols/dns
@load base/frameworks/notice

# Heuristic: very long queries can indicate tunneling/exfiltration
event dns_request(c: connection, msg: dns_msg, query: string)
    {
    if ( |query| > 50 )
        {
        NOTICE([$note=DNS_Suspicious::Long_DNS_Query,
                $msg=fmt("Long DNS query (%d chars): %s", |query|, query),
                $conn=c]);
        }
    }
